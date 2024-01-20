import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget productLoaderPlaceHolder() {
  return Expanded(
    child: GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      padding: const EdgeInsets.only(
        bottom: 10.0,
        left: 18.0,
        right: 18.0,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 40 / 48,
      ),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
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
            ));
      },
    ),
  );
}
