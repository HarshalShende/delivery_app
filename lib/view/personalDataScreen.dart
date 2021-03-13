import 'package:delivery/constants.dart';
import 'package:delivery/view/component/CustomTextField.dart';
import 'package:flutter/material.dart';

class PersonalDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            "Personal Data",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        actions: [
          SizedBox(
            width: screenSize.width * 0.1,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        width: screenSize.width,
        height: screenSize.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenSize.height * 0.1,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor,
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/person.png"),
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                " Full Name",
                style: TextStyle(
                  color: kGrey.withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextFiled(screenSize: screenSize, hintText: "Paul Walker"),
              SizedBox(
                height: 10,
              ),
              Text(
                " Email",
                style: TextStyle(
                  color: kGrey.withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextFiled(
                  screenSize: screenSize, hintText: "paul.walker20@gmail.com"),
              SizedBox(
                height: 10,
              ),
              Text(
                " Phone Number",
                style: TextStyle(
                  color: kGrey.withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextFiled(
                  screenSize: screenSize, hintText: "+0033571548936"),
              SizedBox(
                height: 10,
              ),
              Text(
                " Password",
                style: TextStyle(
                  color: kGrey.withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextFiled(
                screenSize: screenSize,
                hintText: "•••••••••••••",
                isForPasword: true,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                " Birth Date",
                style: TextStyle(
                  color: kGrey.withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextFiled(
                  screenSize: screenSize, hintText: "16 April 1983"),
            ],
          ),
        ),
      ),
    );
  }
}
