// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_routing_response_cloudtasks_v2beta3.dart';

/// App Engine HTTP queue. The task will be delivered to the App Engine application hostname specified by its AppEngineHttpQueue and AppEngineHttpRequest. The documentation for AppEngineHttpRequest explains how the task's host URL is constructed. Using AppEngineHttpQueue requires [`appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-api/access-control) Google IAM permission for the project and the following scope: `https://www.googleapis.com/auth/cloud-platform`
class AppEngineHttpQueueResponse {
  /// Overrides for the task-level app_engine_routing. If set, `app_engine_routing_override` is used for all tasks in the queue, no matter what the setting is for the task-level app_engine_routing.
  final pulumi.Input<AppEngineRoutingResponseCloudtasksV2beta3> appEngineRoutingOverride;

  /// Creates a new [AppEngineHttpQueueResponse].
  /// [appEngineRoutingOverride] Overrides for the task-level app_engine_routing. If set, `app_engine_routing_override` is used for all tasks in the queue, no matter what the setting is for the task-level app_engine_routing.
  const AppEngineHttpQueueResponse({
    required this.appEngineRoutingOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineRoutingOverride': pulumi.Input.mapInputValue<AppEngineRoutingResponseCloudtasksV2beta3, Map<String, dynamic>>(appEngineRoutingOverride, (value) => value.toMap()),
    };
  }

  factory AppEngineHttpQueueResponse.fromMap(Map<String, dynamic> map) {
    return AppEngineHttpQueueResponse(
      appEngineRoutingOverride: pulumi.Input.fromValue(AppEngineRoutingResponseCloudtasksV2beta3.fromMap((map['appEngineRoutingOverride']! as Map).cast<String, dynamic>())),
    );
  }
}

