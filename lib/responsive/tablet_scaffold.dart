import 'package:flutter/material.dart';

import '../constants.dart';
import '../utils/my_box.dart';
import '../utils/tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackground,
      appBar: appBar2,
      drawer: drawer2,
      body: SafeArea(
        child: Column(
          children: [
            //4 boses on top
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return const MyBox();
                    }),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => const TileBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
