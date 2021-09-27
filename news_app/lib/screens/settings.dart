import 'package:flutter/material.dart';
import 'package:news_app/controller/color_controller.dart';
import 'package:news_app/utils/constants.dart';
import 'package:news_app/components/color_picker.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  ColorControler c = Get.put(ColorControler());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: kBackgroundColor,
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Theme color:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      child: ColorPicker(
                        kBluePrimary,
                        Border.all(
                          color: Colors.black,
                          width: c.primaryColor.value == kBluePrimary ? 2.5 : 0,
                        ),
                      ),
                      onTap: () {
                        c.primaryColor.value = kBluePrimary;
                        c.secondaryColor.value = kBlueSecundary;
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: ColorPicker(
                        kOrangePrimary,
                        Border.all(
                          color: Colors.black,
                          width:
                              c.primaryColor.value == kOrangePrimary ? 2.5 : 0,
                        ),
                      ),
                      onTap: () {
                        c.primaryColor.value = kOrangePrimary;
                        c.secondaryColor.value = kOrangeSecundary;
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: ColorPicker(
                        kGreenPrimary,
                        Border.all(
                          color: Colors.black,
                          width:
                              c.primaryColor.value == kGreenPrimary ? 2.5 : 0,
                        ),
                      ),
                      onTap: () {
                        c.primaryColor.value = kGreenPrimary;
                        c.secondaryColor.value = kGreenSecundary;
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: ColorPicker(
                        kPurplePrimary,
                        Border.all(
                          color: Colors.black,
                          width:
                              c.primaryColor.value == kPurplePrimary ? 2.5 : 0,
                        ),
                      ),
                      onTap: () {
                        c.primaryColor.value = kPurplePrimary;
                        c.secondaryColor.value = kPurpleSecundaryy;
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
