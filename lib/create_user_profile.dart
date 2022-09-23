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
    '12 year',
  ];

  var months = [
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

  final _formKey = GlobalKey<FormState>();

  String? isValid(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  double? containerHeight;
  double? containerWidth;

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);

    return Center(
      child: Container(
        // height: MediaQuery.of(context).size.height > 790
        //     ? 781
        //     : MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width > 400
            ? 392
            : MediaQuery.of(context).size.width,
        child: Scaffold(
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
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15.0),
                child: Form(
                  key: _formKey,
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
                        "  What is your name?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Projectconst.textfieldlabelfontSize),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: "Enter your Full Name",
                            hintStyle: TextStyle(
                                color: Projectconst.hinttextcolor,
                                fontSize: 16.0),
                            prefixIcon: ImageIcon(
                                AssetImage("assets/icons/User icon.png")),
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
                        "  Select your job",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Projectconst.textfieldlabelfontSize,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      DropdownButtonFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select any value';
                          }
                          return null;
                        },
                        isExpanded: true,
                        menuMaxHeight: 200,
                        hint: Text(
                          "Choose Job Role",
                          style: TextStyle(
                            color: Projectconst.hinttextcolor,
                            fontSize: 16.0,
                          ),
                        ),
                        items: items1.map((String items) {
                          return DropdownMenuItem(
                              child: Text(items), value: items);
                        }).toList(),
                        onChanged: (context) {},
                        decoration: InputDecoration(
                          prefixIcon: ImageIcon(
                              AssetImage("assets/icons/account icon.png")),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                              color: Projectconst.inputbordercolor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      DropdownButtonFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select any value';
                          }
                          return null;
                        },
                        isExpanded: true,
                        menuMaxHeight: 200,
                        hint: Text(
                          "Choose Sub Role",
                          style: TextStyle(
                            color: Projectconst.hinttextcolor,
                            fontSize: 16.0,
                          ),
                        ),
                        items: items2.map((String items) {
                          return DropdownMenuItem(
                              child: Text(items), value: items);
                        }).toList(),
                        onChanged: (context) {},
                        decoration: InputDecoration(
                            prefixIcon: ImageIcon(
                                AssetImage("assets/icons/department.png")),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                color: Projectconst.inputbordercolor,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "  How much experience do you have ?",
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
                            child: DropdownButtonFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please select any value';
                                }
                                return null;
                              },
                              isExpanded: true,
                              menuMaxHeight: 200,
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
                                  prefixIcon: ImageIcon(
                                    AssetImage("assets/icons/calendar.png"),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                      color: Projectconst.inputbordercolor,
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: DropdownButtonFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please select any value';
                                }
                                return null;
                              },
                              isExpanded: true,
                              menuMaxHeight: 200,
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
                                  prefixIcon: ImageIcon(
                                      AssetImage("assets/icons/calendar.png")),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                      color: Projectconst.inputbordercolor,
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "  What is your monthly income?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Projectconst.textfieldlabelfontSize,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      DropdownButtonFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select any value';
                          }
                          return null;
                        },
                        isExpanded: true,
                        menuMaxHeight: 200,
                        hint: Text(
                          "Select Your Monthly Income",
                          style: TextStyle(
                            color: Projectconst.hinttextcolor,
                            fontSize: 16.0,
                          ),
                        ),
                        items: salary.map((String items) {
                          return DropdownMenuItem(
                              child: Text(items), value: items);
                        }).toList(),
                        onChanged: (context) {},
                        decoration: InputDecoration(
                          prefixIcon:
                              ImageIcon(AssetImage("assets/icons/rupee.png")),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                              color: Projectconst.inputbordercolor,
                            ),
                          ),
                        ),
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
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Processing Data")),
                                );
                              }
                            },
                            child: Text(
                              "Continue",
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
