import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CardTileScreen extends StatefulWidget {
  const CardTileScreen({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<CardTileScreen> createState() => CardTileScreenState();
}

class InputFieldModel {
  late String name;
  late String helperText;
  late Icon icon;

  InputFieldModel({
    required this.name,
    required this.helperText,
    required this.icon,
  });
}

class CardTileScreenState extends State<CardTileScreen> {
  bool isFocused = false;

  final List<InputFieldModel> inputFields = [
    InputFieldModel(
      name: 'Breed',
      helperText: "The breed of dog.",
      icon: const Icon(Icons.pets),
    ),
    InputFieldModel(
      name: 'Name',
      helperText: "The name of your dog.",
      icon: const Icon(Icons.home),
    ),
    InputFieldModel(
      name: 'Age',
      helperText: "The age of your dog.",
      icon: const Icon(Icons.my_location),
    ),
    InputFieldModel(
      name: 'Colour',
      helperText: "The colour of your dog.",
      icon: const Icon(Icons.abc_sharp),
    ),
  ];

  final globalKey = GlobalKey<FormBuilderState>();
  final nameFieldKey = GlobalKey<FormBuilderFieldState>();
  String selectedName = "";

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1.0),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        (orientation == Orientation.portrait) ? 2 : 3,
                  ),
                  itemCount: inputFields.length,
                  itemBuilder: (BuildContext context, int index) {
                    InputFieldModel model = inputFields[index];
                    return Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(Icons.album),
                            title: Text(model.name),
                            subtitle: Text(model.helperText),
                          ),
                        ],
                      ),
                    );
                    // return FormBuilder(
                    //   child: Column(
                    //     children: [
                    //       Container(
                    //         decoration: BoxDecoration(
                    //           borderRadius: model.name == selectedName
                    //               ? const BorderRadius.only(
                    //                   topLeft: Radius.circular(16.0),
                    //                   topRight: Radius.circular(16.0),
                    //                 )
                    //               : const BorderRadius.all(
                    //                   Radius.circular(16.0)),
                    //           boxShadow: const [
                    //             BoxShadow(
                    //               color: Color.fromRGBO(58, 58, 58, 1.0),
                    //               spreadRadius: 0.1,
                    //               blurRadius: 0,
                    //               offset: Offset(
                    //                   0, -1), // changes position of shadow
                    //             ),
                    //           ],
                    //           color: const Color.fromRGBO(48, 48, 48, 1.0),
                    //         ),
                    //         child: Padding(
                    //           padding: const EdgeInsets.all(10.0),
                    //           child: FormBuilderTextField(
                    //             cursorColor: Colors.white,
                    //             onTap: () {
                    //               setState(() => selectedName = model.name);
                    //             },
                    //             style: const TextStyle(
                    //               color: Colors.white,
                    //               fontSize: 18.0,
                    //             ),
                    //             name: model.name,
                    //             decoration: InputDecoration(
                    //               isDense: false,
                    //               prefixIcon: model.icon,
                    //               prefixIconColor: model.name == selectedName
                    //                   ? Colors.lime
                    //                   : Colors.white,
                    //               floatingLabelBehavior:
                    //                   FloatingLabelBehavior.auto,
                    //               floatingLabelAlignment:
                    //                   FloatingLabelAlignment.start,
                    //               // helperText: model.helperText,
                    //               // icon: const Icon(Icons.pin),
                    //               border: const OutlineInputBorder(
                    //                 borderRadius: BorderRadius.all(
                    //                   Radius.circular(16.0),
                    //                 ),
                    //               ),
                    //               labelText: model.name.replaceRange(
                    //                 0,
                    //                 1,
                    //                 model.name[0].toUpperCase(),
                    //               ),
                    //             ),
                    //             validator: FormBuilderValidators.compose(
                    //               [
                    //                 FormBuilderValidators.required(),
                    //                 FormBuilderValidators.email(),
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       model.name == selectedName
                    //           ? SizedBox(
                    //               height: 16.0,
                    //               child: Container(
                    //                 decoration: const BoxDecoration(
                    //                   borderRadius: BorderRadius.only(
                    //                     bottomLeft: Radius.circular(16.0),
                    //                     bottomRight: Radius.circular(16.0),
                    //                   ),
                    //                   gradient: LinearGradient(
                    //                     begin: Alignment.topRight,
                    //                     end: Alignment.bottomLeft,
                    //                     colors: [
                    //                       Colors.purple,
                    //                       Colors.blue,
                    //                       Colors.blue,
                    //                       Colors.green,
                    //                       Colors.green,
                    //                       Colors.yellow,
                    //                     ],
                    //                   ),
                    //                 ),
                    //               ),
                    //             )
                    //           : Container(),
                    //       const SizedBox(height: 20),
                    //     ],
                    //   ),
                    // );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
