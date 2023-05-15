import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pwa_melijo/constant.dart';
import 'package:pwa_melijo/presenation/account/account_screen.dart';
import 'package:pwa_melijo/presenation/login/login_screen.dart';
import 'package:pwa_melijo/shared/color_style.dart';
import 'package:pwa_melijo/shared/text_style.dart';
import 'package:pwa_melijo/shared/textfield_style.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:pwa_melijo/shared/widget/dialog_widget.dart';
import 'package:pwa_melijo/shared/widget/drawer.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:sidebarx/sidebarx.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TabController? _tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override

  Widget _buildGridLayout_testCrossAlign() {
    return ResponsiveGridRow(
          children: [
              ...getListProduct()
            ]
        );
  }


  List<ResponsiveGridCol> getListProduct(){
      List<ResponsiveGridCol> list= [];
      for (var i = 0; i < 10; i++) {
        list.add(gridProduct());
      }
      return list;
  }


  ResponsiveGridCol gridProduct() {
    return ResponsiveGridCol(
            xs: 6,
            md: 3,
            child: Container(
              margin: const EdgeInsets.only(left: 7.5,bottom: 15,right: 7.5),
              decoration:  BoxDecoration(
              color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12.withOpacity(0.03),blurRadius: 5)],
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              alignment: const Alignment(0, 0),
              child: Column(
                children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/notFound.png',
                      fit: BoxFit.cover,
                      width: 400,
                    ),
                     const SizedBox(height: 18,),
                     Padding(
                       padding: const EdgeInsets.only(left:8.0),
                       child: WidgetText(text: "Product 1",fontWeight: FontWeight.bold,color: darkBlue,fontSize: 14),
                     ),
                     const SizedBox(height: 3,),
                     Padding(
                       padding: const EdgeInsets.only(left:8.0),
                       child: WidgetText(text: "Paket Ini",color: darkBlue,fontSize: 12),
                     ),
                     const SizedBox(height: 18,),
                     Padding(
                       padding: const EdgeInsets.only(left:8.0),
                       child: Row(
                          
                         children: [
                           WidgetText(text: "Rp. 50.000",color: darkBlue,fontSize: 12,fontWeight: FontWeight.w700  ,),
                           Spacer(),
                           InkWell(
                            onTap: () {
                              // fungsi ketika tombol di klik
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                EvaIcons.shoppingCart ,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          )
                         ],
                       ),
                     ),
                     const SizedBox(height: 20,),
                  ],
                      ),
                ],
              ),
            ),
          );
  }

  Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldKey,
       drawer: NavBar(),
       body: ListView(
         children: 
           [Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 80,
                      child: Image.asset('assets/icon/logo-melijo.png')
                    ),
                    Expanded(
                      child: SizedBox(
                        child: TextFieldStyles(
                          borderRadius: 100,
                          color: Colors.grey,
                          icon: Icons.search,
                          hintName: "Cari Product",
                          onChange: (newValue) {
                          },
                        ),
                      ),  
                    ),
                    const SizedBox(width: 30,),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: (){
                          
                        },
                      child: const Icon(EvaIcons.personOutline)),
                    ),
                    const SizedBox(width: 30,),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: (){
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        child: const Icon(EvaIcons.shoppingCartOutline)
                      )
                    ),
                    const SizedBox(width: 30,),
                    
                  ],
                ),
                const SizedBox(
                height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: DefaultTabController(
                        length: 3, 
                        child: TabBar(
                          controller: _tabController,
                          indicatorColor: Colors.green,
                          tabs: const [
                            Tab(
                              text: "Semua Produk",
                            ),
                            Tab(
                              text: "Paket Sayuran",
                            ),
                            Tab(
                              text: "Paket Lauk Pauk",
                            ),
                            
                          ],
                          labelColor: Colors.black,
                          isScrollable: true,
                          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                          // add it here
                          indicator: MaterialIndicator(
                              color: Colors.green[300]!,
                              height: 5,
                              topLeftRadius: 8,
                              topRightRadius: 8,
                              horizontalPadding: 50,
                              tabPosition: TabPosition.bottom,
                            ),
                          ),
                          
                      ),
                    ),
                    
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40),
                  child: _buildGridLayout_testCrossAlign(),
                )
              ],
           ),
         ],
       ),
    );
  }
  
}