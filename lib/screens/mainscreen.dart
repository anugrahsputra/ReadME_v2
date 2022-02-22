// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readmev2/providers/page_provider.dart';

import 'home/bookmarkscreen.dart';
import 'home/homescreens.dart';
import 'home/profilescreen.dart';
import 'home/searchscreen.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        child: BottomAppBar(
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.white,
            currentIndex: pageProvider.currentIndex,
            onTap: (index) {
              pageProvider.currentIndex = index;
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Icon(
                    Icons.home,
                    color: pageProvider.currentIndex == 0
                        ? Color(0xff858585)
                        : Color(0xffD8D8D8),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Icon(
                    Icons.search,
                    color: pageProvider.currentIndex == 1
                        ? Color(0xff858585)
                        : Color(0xffD8D8D8),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Icon(
                    Icons.bookmarks,
                    color: pageProvider.currentIndex == 2
                        ? Color(0xff858585)
                        : Color(0xffD8D8D8),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Icon(
                    Icons.account_circle,
                    color: pageProvider.currentIndex == 3
                        ? Color(0xff858585)
                        : Color(0xffD8D8D8),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (pageProvider.currentIndex) {
        case 0:
          return Homescreen();
        // break;
        case 1:
          return Searchscreen();
        // break;
        case 2:
          return Bookmarkscreen();
        // break;
        case 3:
          return Profilescreen();
        // break;
        default:
          return Homescreen();
      }
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
