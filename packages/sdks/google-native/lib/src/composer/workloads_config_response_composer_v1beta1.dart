// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduler_resource_response_composer_v1beta1.dart';
import 'triggerer_resource_response_composer_v1beta1.dart';
import 'web_server_resource_response_composer_v1beta1.dart';
import 'worker_resource_response_composer_v1beta1.dart';

/// The Kubernetes workloads configuration for GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
class WorkloadsConfigResponseComposerV1beta1 {
  /// Optional. Resources used by Airflow schedulers.
  final pulumi.Input<SchedulerResourceResponseComposerV1beta1> scheduler;
  /// Optional. Resources used by Airflow triggerers.
  final pulumi.Input<TriggererResourceResponseComposerV1beta1> triggerer;
  /// Optional. Resources used by Airflow web server.
  final pulumi.Input<WebServerResourceResponseComposerV1beta1> webServer;
  /// Optional. Resources used by Airflow workers.
  final pulumi.Input<WorkerResourceResponseComposerV1beta1> worker;

  /// Creates a new [WorkloadsConfigResponseComposerV1beta1].
  /// [scheduler] Optional. Resources used by Airflow schedulers.
  /// [triggerer] Optional. Resources used by Airflow triggerers.
  /// [webServer] Optional. Resources used by Airflow web server.
  /// [worker] Optional. Resources used by Airflow workers.
  WorkloadsConfigResponseComposerV1beta1({
    required this.scheduler,
    required this.triggerer,
    required this.webServer,
    required this.worker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduler': pulumi.Input.mapInputValue<SchedulerResourceResponseComposerV1beta1, Map<String, dynamic>>(scheduler, (value) => value.toMap()),
      'triggerer': pulumi.Input.mapInputValue<TriggererResourceResponseComposerV1beta1, Map<String, dynamic>>(triggerer, (value) => value.toMap()),
      'webServer': pulumi.Input.mapInputValue<WebServerResourceResponseComposerV1beta1, Map<String, dynamic>>(webServer, (value) => value.toMap()),
      'worker': pulumi.Input.mapInputValue<WorkerResourceResponseComposerV1beta1, Map<String, dynamic>>(worker, (value) => value.toMap()),
    };
  }

  factory WorkloadsConfigResponseComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkloadsConfigResponseComposerV1beta1(
      scheduler: (SchedulerResourceResponseComposerV1beta1.fromMap((map['scheduler'] as Map).cast<String, dynamic>())).input(),
      triggerer: (TriggererResourceResponseComposerV1beta1.fromMap((map['triggerer'] as Map).cast<String, dynamic>())).input(),
      webServer: (WebServerResourceResponseComposerV1beta1.fromMap((map['webServer'] as Map).cast<String, dynamic>())).input(),
      worker: (WorkerResourceResponseComposerV1beta1.fromMap((map['worker'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

