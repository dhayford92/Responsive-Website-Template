import 'package:flutter/material.dart';
import 'package:responsive_site/utils/tile.dart';

import '../constants.dart';
import '../utils/my_box.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
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
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return const MyBox();
                    }),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => TileBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
