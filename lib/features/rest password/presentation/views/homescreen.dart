import 'package:flutter/material.dart';
import 'package:tawssel/features/rest%20password/presentation/views/widgets/firstbottomsheet.dart';

import 'widgets/RichText.dart';
import 'widgets/countrynumber.dart';
import 'widgets/customeappbar.dart';
import 'widgets/imagebox.dart';




const backgroundcolor = Color(0xFFF3F5F7);

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      bottom: true,
      top: true,
      child: Scaffold(
        backgroundColor: backgroundcolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(
                maintext: 'استرجاع كلمة المرور',
                subtext:
                    'قم بإدخال رقم الهاتف أو البريد الإلكتروني لإسترجاع كلمة \nالمرور',
              ),
              SizedBox(
                height: height * 0.1,
              ),
              boximage(image: 'images/Rest Pass – 1.png'),
              SizedBox(
                height: height * .02,
              ),
              const country(),
              SizedBox(
                height: height * .01,
              ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: (const Size(380, 48)), backgroundColor: const Color(0xFFFF6600),
              ),
              onPressed: () {
                if(Form==false)
                showModalBottomSheet(
                    backgroundColor: const Color(0xFFF3F5F7),
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (ctx) => bottomsheetcontainer(height: height));
              },
              child: const Text(
                "ارسال",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )),
              SizedBox(
                height: height * .30,
              ),
              const Richspan()
            ],
          ),
        ),
      ),
    );
  }
}


