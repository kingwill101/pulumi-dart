// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduler_resource_response.dart';
import 'triggerer_resource_response.dart';
import 'web_server_resource_response.dart';
import 'worker_resource_response.dart';

/// The Kubernetes workloads configuration for GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
class WorkloadsConfigResponse {
  /// Optional. Resources used by Airflow schedulers.
  final pulumi.Input<SchedulerResourceResponse> scheduler;
  /// Optional. Resources used by Airflow triggerers.
  final pulumi.Input<TriggererResourceResponse> triggerer;
  /// Optional. Resources used by Airflow web server.
  final pulumi.Input<WebServerResourceResponse> webServer;
  /// Optional. Resources used by Airflow workers.
  final pulumi.Input<WorkerResourceResponse> worker;

  /// Creates a new [WorkloadsConfigResponse].
  /// [scheduler] Optional. Resources used by Airflow schedulers.
  /// [triggerer] Optional. Resources used by Airflow triggerers.
  /// [webServer] Optional. Resources used by Airflow web server.
  /// [worker] Optional. Resources used by Airflow workers.
  const WorkloadsConfigResponse({
    required this.scheduler,
    required this.triggerer,
    required this.webServer,
    required this.worker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduler': pulumi.Input.mapInputValue<SchedulerResourceResponse, Map<String, dynamic>>(scheduler, (value) => value.toMap()),
      'triggerer': pulumi.Input.mapInputValue<TriggererResourceResponse, Map<String, dynamic>>(triggerer, (value) => value.toMap()),
      'webServer': pulumi.Input.mapInputValue<WebServerResourceResponse, Map<String, dynamic>>(webServer, (value) => value.toMap()),
      'worker': pulumi.Input.mapInputValue<WorkerResourceResponse, Map<String, dynamic>>(worker, (value) => value.toMap()),
    };
  }

  factory WorkloadsConfigResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadsConfigResponse(
      scheduler: pulumi.Input.fromValue(SchedulerResourceResponse.fromMap((map['scheduler']! as Map).cast<String, dynamic>())),
      triggerer: pulumi.Input.fromValue(TriggererResourceResponse.fromMap((map['triggerer']! as Map).cast<String, dynamic>())),
      webServer: pulumi.Input.fromValue(WebServerResourceResponse.fromMap((map['webServer']! as Map).cast<String, dynamic>())),
      worker: pulumi.Input.fromValue(WorkerResourceResponse.fromMap((map['worker']! as Map).cast<String, dynamic>())),
    );
  }
}

