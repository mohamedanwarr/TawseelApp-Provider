import 'package:flutter/material.dart';
import 'package:tawssel/features/rest%20password/presentation/views/widgets/FromNewpass.dart';
import 'package:tawssel/features/rest%20password/presentation/views/widgets/detailsplacebottomsheet.dart';
import 'package:tawssel/features/rest%20password/presentation/views/widgets/widgetbutton.dart';


class placesheetcontainer extends StatelessWidget {
   placesheetcontainer({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
          height: height * .69,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'اختر العنوان',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'cairo'),
                        ),
                        const SizedBox(
                          width: 95,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.clear,
                              size: 25,
                            )),
                      ],
                    ),
                  ),
                  containerplace(text: 'محيط الهرم - الجيزة',),
                  const SizedBox(
                    height: 10,
                  ),
                  containerplace(text: 'محيط وسط البلد - القاهرة',),
                  const SizedBox(
                    height: 10,
                  ),
                  containerplace(text: 'محيط الدقي - الجيزة',),
                  const SizedBox(
                    height: 10,
                  ),
                  containerplace(text: 'محيط كورنيش النيل - الجيزة',),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('مكان آخر',style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                  ),),
                      Checkbox(
                          activeColor: const Color(0xFFffffff),
                          side: const BorderSide(color: Colors.deepOrange),
                          checkColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          value: _isChecked,
                          onChanged: (value) {
                            _isChecked = value!;
                          })
                    ],
                  ),
                  FormNewPass(
                    text: 'ادخل العنوان',
                  ),
                  const SizedBox(height: 10,),
                  FormNewPass(
                    text: 'تكلفة التوصيل',
                  ),
                  const SizedBox(height: 10,),
                  Button(
                    text: 'إرسال',
                  )
                ]),
          )),
    );
  }
}

