import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:flutter_multi_formatter/widgets/country_dropdown.dart';

class country extends StatefulWidget {
  const country({Key? key}) : super(key: key);

  @override
  State<country> createState() => _countryState();
}

class _countryState extends State<country> {
  PhoneCountryData? _initialCountryData;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Container(
              width: width * .01,
              height: height * .08,
              child: CountryDropdown(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFFd6d6d6),
                          width: 1.0,
                          style: BorderStyle.solid)),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  fillColor: const Color(0xFFffffff),
                  filled: true,
                  focusColor: const Color(0xFFffffff),
                  contentPadding: const EdgeInsets.only(
                      left: 10.0, bottom: 10.0, top: 10.0, right: 10),
                ),
                printCountryName: true,
                // initialCountryData: ,
                elevation: 4,
                onCountrySelected: (PhoneCountryData countryData) {
                  setState(() {
                    _initialCountryData = countryData;
                  });
                },
              ),
            ),
          ),
        ),
        SizedBox(width: width * .03),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Container(
              width: width * .05,
              height: height * .08,
              child: TextFormField(
                key: ValueKey(_initialCountryData ?? 'country'),
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                          style: BorderStyle.solid)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.deepOrange, width: 1.0),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  suffixIcon: const Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),
                  hintText: 'رقم الهاتف',
                  hintTextDirection: TextDirection.rtl,
                  errorStyle: const TextStyle(
                    color: Colors.red,
                  ),
                  suffixStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: "verdana_regular",
                    fontWeight: FontWeight.w400,
                  ),
                  fillColor:  const Color(0xFFffffff),
                  filled: true,
                  focusColor:  const Color(0xFFffffff),
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 10.0, top: 10.0),
                ),
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  PhoneInputFormatter(
                    allowEndlessPhone: true,
                    defaultCountryCode: _initialCountryData?.countryCode,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
