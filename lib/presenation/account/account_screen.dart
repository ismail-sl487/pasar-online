import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  List<CollapsibleItem>? _items;
  String? _headline;
  AssetImage _avatarImg = AssetImage('assets/icon/logo-melijo.png');

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = _items?.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Home',
        icon: Icons.assessment,
        onPressed: () => setState(() => _headline = 'DashBoard'),
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'Pembayaran',
        icon: Icons.icecream,
        onPressed: () => setState(() => _headline = 'Errors'),
      ),
      CollapsibleItem(
        text: 'Keranjang',
        icon: Icons.search,
        onPressed: () => setState(() => _headline = 'Search'),
      ),
      
    ];
  }

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size* .6;
    return Scaffold(
      body: SafeArea(
        child: CollapsibleSidebar(
          isCollapsed: MediaQuery.of(context).size.width <= 800,
          items: _items!,
          avatarImg: _avatarImg,
          
          title: 'John Smith',
          onTitleTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Yay! Flutter Collapsible Sidebar!')));
          },
          body: _body(size, context),
          backgroundColor: Colors.white,
          selectedTextColor: Colors.limeAccent,
          textStyle: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
          iconSize: 30,
          minWidth: 70,
          titleStyle: const TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
          toggleTitleStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          sidebarBoxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.04),
              blurRadius: 50,
              spreadRadius: 0.01,
              offset: Offset(3, 3),
            ),
          ],
        ),
      )
    );
  }
  Widget _body(Size size, BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey[50],
      child: Center(
        child: Text(
              _headline!+"aldksjjadsljskdalksadlksadjasdkldsalklsadaskld",
              style: Theme.of(context).textTheme.headline1,
              overflow: TextOverflow.visible,
              softWrap: false,
            ),
      ),
    );
  }
}