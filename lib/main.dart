// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          foregroundColor: white,
          backgroundColor: c1,
          child: Icon(
            Icons.add,
          ),
        ),
        body: CustomScrollView(
          slivers: [
            AppBarHome(),
            TodayTaskList(),
          ],
        ),
      ),
    );
  }
}

class TodayTaskList extends StatelessWidget {
  const TodayTaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(18),
            height: Responsive.height(8, context),
            decoration: BoxDecoration(
              color: index % 2 == 0 ? c1 : c2,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  24,
                ),
              ),
            ),
            child: ListTile(
              onTap: () {
                //View task
              },
              title: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "8 : 30",
                          style: TextStyle(color: white),
                        ),
                        Text(
                          "Friday",
                          style: TextStyle(color: white),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    indent: 10,
                    endIndent: 18,
                    width: 24,
                    color: white,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New Task",
                        style: TextStyle(fontSize: 24, color: white),
                      ),
                      Text(
                        "Description",
                        style: TextStyle(fontSize: 16, color: white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/bg.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
        title: Text(
          "Welcome Sai",
          style: GoogleFonts.sofia(),
        ),
        titlePadding: EdgeInsets.only(bottom: 18, left: 18),
      ),
      expandedHeight: Responsive.width(100, context),
      backgroundColor: c1,
      elevation: 0,
    );
  }
}

class OnStartUp extends StatelessWidget {
  const OnStartUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "Task Forge",
          style: GoogleFonts.sahitya(
            textStyle: const TextStyle(
              fontSize: 42,
            ),
          ),
        ),
      ),
    );
  }
}
