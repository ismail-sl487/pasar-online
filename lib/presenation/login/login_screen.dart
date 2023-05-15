import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pwa_melijo/presenation/home/home.dart';
import 'package:pwa_melijo/shared/color_style.dart';
import 'package:pwa_melijo/shared/text_style.dart';
import 'package:pwa_melijo/shared/textfield_style.dart';
import 'package:pwa_melijo/shared/widget/button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            
            Expanded(
            flex: 4,
            child:Container(
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/images/banner.png',width: MediaQuery.of(context).size.height,fit: BoxFit.cover,),)),
            Expanded(
            flex: 2,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 15 ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WidgetText(text: "SIGN-IN",fontSize: 18,fontWeight: FontWeight.w700,),
                      WidgetText(text: "Silahkan masuk dengan akun yang sudah terdaftar",fontSize: 10,color: Colors.grey.withOpacity(0.5),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      WidgetText(text: "Username / Email",fontSize: 14,fontWeight: FontWeight.w700,color: Colors.green,),
                      SizedBox(height: 15,),
                      TextFieldStyles(
                        borderRadius: 4 ,
                        color: Colors.grey,
                        icon: EvaIcons.emailOutline,
                        hintName: "Masukan Email ...",
                        onChange: (newValue) {
                        },
                      ),
                      SizedBox(height: 20,),
                      WidgetText(text: "Password",fontSize: 14,fontWeight: FontWeight.w700,color: Colors.green,),
                      SizedBox(height: 15,),
                      TextFieldStyles(
                        borderRadius: 4 ,
                        color: Colors.grey,
                        icon: EvaIcons.personOutline,
                        hintName: "Cari Product",
                        onChange: (newValue) {
                        },
                      ),
                      SizedBox(height: 25,),
                      Container(
                        width: double.infinity,
                        height: 36,
                        child: ButtonLayout(
                          onPress: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                          },
                          title: "Login",
                          color: Colors.green,
                          radius: 4,
                          fontColor: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),)
          ],
        ),
      ),
    );
  }
}