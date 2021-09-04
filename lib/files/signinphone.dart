import 'package:flutter/material.dart';
import 'package:uhubs/files/Loading.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class signinphone extends StatelessWidget {
  const signinphone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 40.0),
        child: Form(

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage:
                    AssetImage('assets/images/uhub.jpeg'),
                    radius: 80.0,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: Text(
                    'SIGN IN WITH PHONE',
                    style: TextStyle(

                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                Center(

                    child:IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    )



                ),
                SizedBox(
                  height: 50.0,
                ),
                Center(

                  child: FlatButton(
                    child: Text('LOGIN', style: TextStyle(fontSize: 20.0,
                        fontFamily: 'Poppins'),),
                    color: Colors.black54,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),


                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
