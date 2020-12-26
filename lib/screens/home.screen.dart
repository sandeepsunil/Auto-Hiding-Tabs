import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scrolll/screens/tab1.screen.dart';
import 'package:scrolll/screens/tab2.screen.dart';
import 'package:scrolll/screens/tab3.screen.dart';
import 'package:scrolll/screens/tab4.screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  TabController _tabController;
  ScrollController _controller = ScrollController();

  double opcty = 1;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);

    _controller.addListener(_scrollListener);
    super.initState();
  }

  _scrollListener() {
    switch (_controller.position.userScrollDirection) {
      case ScrollDirection.idle:
      case ScrollDirection.reverse:
        setState(() {
          opcty = 0;
        });
        break;
      case ScrollDirection.forward:
        setState(() {
          opcty = 1;
        });
        break;
    }

    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      print("reach the bottom");
    }
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      print("reach the top");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TabBarView(
            controller: _tabController,
            children: [
              Tab1(_controller),
              Tab2(_controller),
              Tab3(_controller),
              Tab4(_controller),
            ],
          ),
          Align(
            child: IgnorePointer(
              ignoring: opcty == 0 ? true : false,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 200),
                curve: Curves.bounceIn,
                opacity: opcty,
                child: Container(
                  color: Colors.white,
                  height: kToolbarHeight * 0.8,
                  child: TabBar(
                    controller: _tabController,
                    tabs: [
                      Icon(
                        Icons.home,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.speaker_phone_rounded,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.verified_user,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            alignment: Alignment.bottomCenter,
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   fixedColor: Colors.transparent,
      //   backgroundColor: Colors.transparent,
      //   items: [
      //     BottomNavigationBarItem(
      //         label: 'hh',
      //         activeIcon: Icon(Icons.add),
      //         icon: Icon(Icons.height)),
      //     BottomNavigationBarItem(
      //         label: 'gg',
      //         activeIcon: Icon(Icons.add),
      //         icon: Icon(Icons.height)),
      //     BottomNavigationBarItem(
      //         label: 'gg',
      //         activeIcon: Icon(Icons.add),
      //         icon: Icon(Icons.height)),
      //   ],
      // ),
    );
  }
}
