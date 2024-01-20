import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget searchProductLoaderPlaceHolder(){
  return ListView.builder(
    physics: const BouncingScrollPhysics(),
    shrinkWrap: true,
    itemCount: 8,
    padding: const EdgeInsets.only(
      bottom: 10.0,
      left: 18.0,
      right: 18.0,
      top: 12.0,
    ),
    itemBuilder: (context, index) {
      return Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(.1),
        highlightColor: Colors.white60,
        child: Container(
          height: 76,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.7),
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      );
    },
  );
}