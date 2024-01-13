import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MediaBox extends StatelessWidget {
  MediaBox(
      {Key? key, required this.index, required this.Media, required this.onTap})
      : super(key: key);
  final int index;
  final Media;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(1, 1), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                    height: index.isEven ? 100 : 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(Media["image"]),
                          fit: BoxFit.cover),
                    )),
              ),
            ],
          )),
    );
  }
}
