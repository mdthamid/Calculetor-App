import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController Firstcontroller = TextEditingController();

  TextEditingController Secondcontroller = TextEditingController();

  num sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('user input'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("$sum"),
              TextFormField(
                  controller: Firstcontroller,
                  decoration: InputDecoration(
                    labelText: "Email Adress",
                    hintText: "eg.shirin ",
                    border: OutlineInputBorder(),
                  ),
                  autovalidateMode: AutovalidateMode.always,
                  validator: (value) {
                    RegExp regex = RegExp(r'\d$');
                    if (regex.hasMatch(value!)) {
                      return 'Only number are allowed';
                    }
                  }),
              TextField(
                controller: Secondcontroller,
                decoration: InputDecoration(
                  labelText: "01309036082",
                  hintText: "eg.shirin ",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                child: Text('Click'),
                onPressed: () {
                  int num1 = int.parse(Firstcontroller.text);
                  int num2 = int.parse(Secondcontroller.text);
                  //print(num1 + num2);
                  setState(() {
                    sum = num1 + num2;
                  });

                  // print(Firstcontroller.text);
                  // print(Secondcontroller.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
