import 'package:flutter/material.dart';

//custom MyTextFormfield
class MyTextFormfield extends StatelessWidget {
  final String label;
  final String? hint;
  //final bool? ishidden;
  const MyTextFormfield({
    Key? key,
    required this.label,
    this.hint,
    //this.ishidden
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 370,
        child: TextFormField(
          //obscureText:ishidden,
          //object.name?.isEmpty ?? 'default value' // ternary operator to check null

          decoration: InputDecoration(
            border: OutlineInputBorder(
                // borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
            labelText: label,
            hintText: hint,
          ),

          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ));
  }
}
