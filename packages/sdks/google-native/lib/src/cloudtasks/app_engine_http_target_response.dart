// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_routing_response_cloudtasks_v2beta2.dart';

/// App Engine HTTP target. The task will be delivered to the App Engine application hostname specified by its AppEngineHttpTarget and AppEngineHttpRequest. The documentation for AppEngineHttpRequest explains how the task's host URL is constructed. Using AppEngineHttpTarget requires [`appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-api/access-control) Google IAM permission for the project and the following scope: `https://www.googleapis.com/auth/cloud-platform`
class AppEngineHttpTargetResponse {
  /// Overrides for the task-level app_engine_routing. If set, `app_engine_routing_override` is used for all tasks in the queue, no matter what the setting is for the task-level app_engine_routing.
  final pulumi.Input<AppEngineRoutingResponseCloudtasksV2beta2> appEngineRoutingOverride;

  /// Creates a new [AppEngineHttpTargetResponse].
  /// [appEngineRoutingOverride] Overrides for the task-level app_engine_routing. If set, `app_engine_routing_override` is used for all tasks in the queue, no matter what the setting is for the task-level app_engine_routing.
  AppEngineHttpTargetResponse({
    required this.appEngineRoutingOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineRoutingOverride': pulumi.Input.mapInputValue<AppEngineRoutingResponseCloudtasksV2beta2, Map<String, dynamic>>(appEngineRoutingOverride, (value) => value.toMap()),
    };
  }

  factory AppEngineHttpTargetResponse.fromMap(Map<String, dynamic> map) {
    return AppEngineHttpTargetResponse(
      appEngineRoutingOverride: (AppEngineRoutingResponseCloudtasksV2beta2.fromMap((map['appEngineRoutingOverride'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

