import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget categoryLoaderPlaceHolder() {
  return SizedBox(
    height: 54,
    child: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 6.0,
            horizontal: 4.0,
          ),
          child: Shimmer.fromColors(
              baseColor: Colors.grey.withOpacity(.1),
              highlightColor: Colors.white60,
              child: Container(
                height: 50,
                width: 100,
                margin: const EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.7),
                  borderRadius: BorderRadius.circular(24),
                ),
              )),
        );
      },
    ),
  );
}
