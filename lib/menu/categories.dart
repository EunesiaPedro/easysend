import 'package:easysend/addPage.dart';
import 'package:easysend/menu/home.dart';
import 'package:easysend/menu/list.dart';
import 'package:easysend/menu/profile.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [
          ProfileAPP(),
          HomePageAPP(),
          ListOfPeople()

        ],
        index: _currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() => _currentIndex = index);
        },
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              label: " Home"
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.person),
              label: "Profile"
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.heart),
              label: "List of Favorites"
          )
        ],
      ),
     floatingActionButton: FloatingActionButton(
       onPressed: () {
         Navigator.of(context)
             .push(MaterialPageRoute(builder: (context) => Add_Screen()));
       },
       child: Icon(Icons.add),
       backgroundColor: Colors.teal,
     ),
    );

  }
}
