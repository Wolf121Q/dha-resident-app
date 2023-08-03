import 'package:dha_resident_app/constant.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [DropdownButton].

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class NewComplaint extends StatefulWidget {
  const NewComplaint({super.key});

  @override
  State<NewComplaint> createState() => _NewComplaintState();
}

class _NewComplaintState extends State<NewComplaint> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late SingleValueDropDownController _cnt;
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    double scWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: greyColor,
        title: Text(
          "Register Your Complaint",
          style: TextStyle(color: appcolor, fontSize: lgFontSize),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: marginLR),
            child: CircleAvatar(
              backgroundColor: lightappcolor,
              radius: 18.0,
              child: IconButton(
                icon: Icon(
                  Icons.question_mark,
                  size: lgFontSize,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: scWidth,
        color: greyColor,
        child: Container(
            decoration: BoxDecoration(
              color: dfColor,
            ),
            margin: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: marginLR,
            ),
            child: Container(
                margin: EdgeInsets.all(20),
                child: Column(children: [
                  SizedBox(
                    width: scWidth,
                    child: DropdownButtonFormField<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      elevation: 8,
                      style: const TextStyle(color: appcolor),
                      // underline: Container(
                      //   height: 1.5,
                      //   color: drakGreyColor,
                      // ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: DropDownTextField(
                      // initialValue: "name4",
                      // readOnly: false,
                      controller: _cnt,
                      clearOption: true,

                      keyboardType: TextInputType.number,
                      autovalidateMode: AutovalidateMode.always,
                      clearIconProperty: IconProperty(color: Colors.green),
                      searchDecoration: const InputDecoration(
                          hintText: "enter your custom hint text here"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Required field";
                        } else {
                          return null;
                        }
                      },
                      dropDownItemCount: 6,

                      dropDownList: const [
                        DropDownValueModel(name: 'name1', value: "value1"),
                        DropDownValueModel(
                            name: 'name2',
                            value: "value2",
                            toolTipMsg:
                                "DropDownButton is a widget that we can use to select one unique value from a set of values"),
                        DropDownValueModel(name: 'name3', value: "value3"),
                        DropDownValueModel(
                            name: 'name4',
                            value: "value4",
                            toolTipMsg:
                                "DropDownButton is a widget that we can use to select one unique value from a set of values"),
                        DropDownValueModel(name: 'name5', value: "value5"),
                        DropDownValueModel(name: 'name6', value: "value6"),
                        DropDownValueModel(name: 'name7', value: "value7"),
                        DropDownValueModel(name: 'name8', value: "value8"),
                      ],
                      onChanged: (val) {},
                    ),
                  ),
                ]))),
      ),
    );
  }
}
