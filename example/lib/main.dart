import 'package:flutter/material.dart';

import 'package:container_tab_indicator/container_tab_indicator.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ContainerTabIndicator Example'),
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 56,
                child: TabBar(
                  tabs: [
                    Text('First', style: TextStyle(color: Colors.black)),
                    Text('Second', style: TextStyle(color: Colors.black)),
                  ],
                  indicator: ContainerTabIndicator(),
                ),
              ),
              SizedBox(
                height: 56,
                child: TabBar(
                  tabs: [
                    Text('First', style: TextStyle(color: Colors.black)),
                    Text('Second', style: TextStyle(color: Colors.black)),
                  ],
                  indicator: ContainerTabIndicator(
                    width: 64,
                    height: 32,
                  ),
                ),
              ),
              SizedBox(
                height: 56,
                child: TabBar(
                  tabs: [
                    Text('First', style: TextStyle(color: Colors.black)),
                    Text('Second', style: TextStyle(color: Colors.black)),
                  ],
                  indicator: ContainerTabIndicator(
                    width: 64,
                    height: 32,
                    borderWidth: 1.0,
                    borderColor: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 56,
                child: TabBar(
                  tabs: [
                    Text('First', style: TextStyle(color: Colors.black)),
                    Text('Second', style: TextStyle(color: Colors.black)),
                  ],
                  indicator: ContainerTabIndicator(
                    width: 96,
                    height: 32,
                    radius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 56,
                child: TabBar(
                  tabs: [
                    Text('First', style: TextStyle(color: Colors.black)),
                    Text('Second', style: TextStyle(color: Colors.black)),
                  ],
                  indicator: ContainerTabIndicator(
                    width: 96,
                    height: 32,
                    radius: BorderRadius.all(Radius.circular(16.0)),
                    borderWidth: 1.0,
                    borderColor: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 56,
                child: TabBar(
                  tabs: [
                    Text('First', style: TextStyle(color: Colors.black)),
                    Text('Second', style: TextStyle(color: Colors.black)),
                  ],
                  indicator: ContainerTabIndicator(
                    width: 96,
                    height: 32,
                    radius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 56,
                child: TabBar(
                  tabs: [
                    Text('First', style: TextStyle(color: Colors.black)),
                    Text('Second', style: TextStyle(color: Colors.black)),
                  ],
                  indicator: ContainerTabIndicator(
                    width: 96,
                    height: 32,
                    radius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                    borderWidth: 1.0,
                    borderColor: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
                child: TabBarView(
                  children: [
                    Container(color: Colors.red[400]),
                    Container(color: Colors.green[400]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
