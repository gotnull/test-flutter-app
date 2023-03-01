import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class InputFieldWidget extends StatefulWidget {
  final String name;
  final GlobalKey<FormBuilderFieldState> fieldKey;
  final GlobalKey<FormBuilderState> globalKey;
  final int index;

  const InputFieldWidget({
    super.key,
    required this.name,
    required this.fieldKey,
    required this.globalKey,
    required this.index,
  });

  @override
  State<InputFieldWidget> createState() => InputFieldWidgetState();
}

class InputFieldWidgetState extends State<InputFieldWidget> {
  bool isFocused = false;
  final FocusNode _focus = FocusNode();

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {
    debugPrint("Focus: ${_focus.hasFocus.toString()}");
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: widget.globalKey,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(58, 58, 58, 1.0),
                  spreadRadius: 0.1,
                  blurRadius: 0,
                  offset: Offset(0, -1), // changes position of shadow
                ),
              ],
              color: Color.fromRGBO(48, 48, 48, 1.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FormBuilderTextField(
                focusNode: _focus,
                onTap: () {
                  setState(() => isFocused = _focus.hasFocus);
                },
                key: widget.fieldKey,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
                name: widget.name,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  labelText: widget.name.toUpperCase(),
                ),
                validator: FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ],
                ),
              ),
            ),
          ),
          isFocused
              ? SizedBox(
                  height: 8.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.purple,
                          Colors.blue,
                          Colors.blue,
                          Colors.green,
                          Colors.green,
                          Colors.yellow,
                        ],
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
