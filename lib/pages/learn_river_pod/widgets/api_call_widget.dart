import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_call_widget.g.dart';

@riverpod
Future<String> getDogImageUrl(GetDogImageUrlRef ref) async {
  Response res = await Dio().get('https://dog.ceo/api/breeds/image/random');
  if (res.statusCode == 200 && res.data['status'] == 'success') {
    return res.data['message'];
  }
  return Future.error('Cannot get dog image, resposne = ${res.data.toString()}');
}

// Use riverpod to call a dog img gen API then display the dog image
class ApiCallWidget extends StatelessWidget {
  const ApiCallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        AsyncValue<String> result = ref.watch(getDogImageUrlProvider);
        return InkWell(
          onTap: () async {
            // ignore: unused_result
            ref.refresh(getDogImageUrlProvider);
          },
          child: switch (result) {
            AsyncValue(value: final String dogUrl, :final bool isLoading) => isLoading
                ? const Center(
                    child: SizedBox.square(
                      dimension: 24,
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Column(
                    children: <Widget>[
                      const Text('Let"s see the image. Click to reload'),
                      const SizedBox(height: 8),
                      Image.network(dogUrl),
                    ],
                  ),
            AsyncError(:final error) => Text(error.toString()),
            _ => const SizedBox()
          },
        );
      },
    );
  }
}
