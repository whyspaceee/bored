import 'dart:convert';

import 'package:bored/data/models/activity_model.dart';
import 'package:dio/dio.dart';

class ActivityRepository {
  ActivityRepository(this.dio);

  Dio dio;

  Future<ActivityModel> getActivity() async {
    final rawResponse = await dio.get('https://www.boredapi.com/api/activity');
    final Map<String, dynamic> json = rawResponse.data;
    return ActivityModel.fromJson(json);
  }
}
