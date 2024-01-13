import 'package:prueba_2/pages/detail_page.dart';

import '/data/json.dart';
import '/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:prueba_2/widgets/media_box.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  _DoctorPageState createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Doctors",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.info,
              color: Colors.grey,
            ),
          ),
        ],
      ),

      ///Aquip para borrar donde esta el cino de info
      body: getBody(),
    );
  }

  getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getMediaList(),
          ],
        ),
      ),
    );
  }

  getMediaList() {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: List.generate(
        Media.length,
        (index) => StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: index.isEven ? 3 : 2,
          child: MediaBox(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    Media: Media[index],
                  ),
                ),
              );
            },
            index: index,
            Media: Media[index],
          ),
        ),
      ),
    );
  }
}
