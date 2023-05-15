import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:pwa_melijo/shared/text_style.dart';
import 'package:pwa_melijo/shared/textfield_style.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 18,left: 10,right: 10),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children:  [
            Padding(
              padding:const  EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: const [
                  WidgetText(text: "KERANJANG BELANJA",color: Colors.black45,fontSize: 18,fontWeight: FontWeight.w600,),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(EvaIcons.close,color: Colors.black38,),
                  )
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
              height: MediaQuery.of(context).size.height * .72,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/notFound.png',
                        fit: BoxFit.cover,
                        width: 90,
                      ),
                      SizedBox(
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              WidgetText(text: "Nama Product",fontWeight: FontWeight.w600,color: Colors.black54,fontSize: 12,),
                              SizedBox(height: 10,),
                              WidgetText(text: "1x Qty",fontWeight: FontWeight.normal,fontSize: 9),
                            ],
                          ),
                        ),
                      ),
                     const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(EvaIcons.editOutline,color: Colors.green.shade300,size: 14),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(EvaIcons.close,color: Colors.red.shade400,size: 14),
                      )
                    ],
                  )
                ],
              )),
            ),
           const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Divider(height: 2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                WidgetText(text: "Subtotal : ",fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black45,),
                WidgetText(text: "Rp. 50.000",fontSize: 18,fontWeight: FontWeight.w600),
              ],
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:MaterialStateProperty.all(Colors.green[300]),
                shape:MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                )),
              ),
              onPressed: () async {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(EvaIcons.carOutline),
                    SizedBox(width: 10,),
                    WidgetText(
                      text: "Jadwalkan Pengiriman",
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ],
                ),
              ))
          ],
        ),
      ),
    );
  }
}