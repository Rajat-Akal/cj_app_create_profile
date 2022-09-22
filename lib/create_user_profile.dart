import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_benificianary_screen/Constants/constant.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({super.key});

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  // List of items in our dropdown menu
  var items1 = [
    'Accountant',
    'Developer',
    'Manager',
    'HR',
    'CA',
  ];

  var items2 = [
    'Finanace',
    'Human Resource',
    'IT',
    'Banking',
    'Civil',
  ];

  var years = [
    '0 year',
    '1 year',
    '2 year',
    '3 year',
    '4 year',
    '5 year',
    '6 year',
    '7 year',
    '8 year',
    '9 year',
    '10 year',
    '11 year',
  ];

  var months = [
    '0 month',
    '1 month',
    '2 month',
    '3 month',
    '4 month',
    '5 month',
    '6 month',
    '7 month',
    '8 month',
    '9 month',
    '10 month',
    '11 month',
  ];

  var salary = [
    "0 - 10000",
    "10000 - 20000",
    "20000 - 40000",
    "40000 - 60000",
    "60000 - 80000",
    "80000 - 100000",
    "100000 - 120000",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 12, 0, 12),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Color(0xFFD9D9D9),
                minimumSize: Size.zero,
                padding: EdgeInsets.all(-12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                maximumSize: Size.zero),
            child: Icon(
              Icons.arrow_back_ios_rounded,
              size: 25,
              color: Projectconst.appbarbackbuttoncolor,
            ),
          ),
        ),
        title: Text(
          "Create Your Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: Projectconst.appbartitlefontSize,
            fontFamily: Projectconst.fontfamily,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Tell Us About Yourself!",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: Projectconst.headingfontSize,
                    color: Colors.blue,
                    fontFamily: Projectconst.fontfamily,
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "  What is your Name?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Projectconst.textfieldlabelfontSize),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Enter your Full Name",
                    hintStyle: TextStyle(
                      color: Projectconst.hinttextcolor,
                      fontSize: 16.0,
                    ),
                    prefixIcon:
                        ImageIcon(AssetImage("assets/icons/User icon.png")),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Projectconst.inputbordercolor,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "  Select Your Job",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Projectconst.textfieldlabelfontSize,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              DropdownButtonFormField2(
                onChanged: (value) {},
                items: items1
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ))
                    .toList(),
                decoration: InputDecoration(
                    prefixIcon:
                        ImageIcon(AssetImage("assets/icons/department.png")),
                    isDense: true,
                    contentPadding: EdgeInsets.only(right: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Projectconst.inputbordercolor,
                      ),
                    )),
                isExpanded: true,
                hint: Text(
                  'Choose Job Role',
                  style: TextStyle(
                    fontSize: 16,
                    color: Projectconst.hinttextcolor,
                  ),
                ),
                iconSize: 30,
                buttonHeight: 62,
                dropdownMaxHeight: 200,
                offset: Offset(-40, 0),
              ),
              SizedBox(
                height: 15,
              ),
              DropdownButtonFormField2(
                hint: Text(
                  "Choose Sub Role",
                  style: TextStyle(
                    color: Projectconst.hinttextcolor,
                    fontSize: 16.0,
                  ),
                ),
                items: items2.map((String items) {
                  return DropdownMenuItem(child: Text(items), value: items);
                }).toList(),
                onChanged: (value) {},
                decoration: InputDecoration(
                    prefixIcon:
                        ImageIcon(AssetImage("assets/icons/department.png")),
                    isDense: true,
                    contentPadding: EdgeInsets.only(right: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Projectconst.inputbordercolor,
                      ),
                    )),
                isExpanded: true,
                iconSize: 30,
                buttonHeight: 62,
                dropdownMaxHeight: 200,
                offset: Offset(-40, 0),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "  How Many Years of Experience You Have ?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Projectconst.textfieldlabelfontSize,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField2(
                      hint: Text(
                        "Years",
                        style: TextStyle(
                          color: Projectconst.hinttextcolor,
                          fontSize: 16.0,
                        ),
                      ),
                      items: years.map((String items) {
                        return DropdownMenuItem(
                            child: Text(items), value: items);
                      }).toList(),
                      onChanged: (context) {},
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.only(right: 10),
                          prefixIcon: ImageIcon(
                            AssetImage("assets/icons/calendar.png"),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                              color: Projectconst.inputbordercolor,
                            ),
                          )),
                      isExpanded: true,
                      iconSize: 30,
                      buttonHeight: 62,
                      dropdownMaxHeight: 200,
                      offset: Offset(-40, 0),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: DropdownButtonFormField2(
                      hint: Text(
                        "Months",
                        style: TextStyle(
                          color: Projectconst.hinttextcolor,
                          fontSize: 16.0,
                        ),
                      ),
                      items: months.map((String items) {
                        return DropdownMenuItem(
                            child: Text(items), value: items);
                      }).toList(),
                      onChanged: (context) {},
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.only(right: 10),
                          prefixIcon: ImageIcon(
                              AssetImage("assets/icons/calendar.png")),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                              color: Projectconst.inputbordercolor,
                            ),
                          )),
                      isExpanded: true,
                      iconSize: 30,
                      buttonHeight: 62,
                      dropdownMaxHeight: 200,
                      offset: Offset(-40, 0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "  What is Your Monthly Income ?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Projectconst.textfieldlabelfontSize,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              DropdownButtonFormField2(
                hint: Text(
                  "Select Your Monthly Income",
                  style: TextStyle(
                    color: Projectconst.hinttextcolor,
                    fontSize: 16.0,
                  ),
                ),
                items: salary.map((String items) {
                  return DropdownMenuItem(child: Text(items), value: items);
                }).toList(),
                onChanged: (context) {},
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(right: 10),
                  prefixIcon: ImageIcon(AssetImage("assets/icons/rupee.png")),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      color: Projectconst.inputbordercolor,
                    ),
                  ),
                ),
                dropdownMaxHeight: 90,
                isExpanded: true,
                iconSize: 30,
                buttonHeight: 62,
                offset: Offset(-40, 0),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  height: 55,
                  width: 260,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff33b8fd),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ) // NEW
                        ),
                    onPressed: () {},
                    child: Text(
                      "Continue",
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
