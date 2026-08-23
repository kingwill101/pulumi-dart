// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduler_resource_composer_v1beta1.dart';
import 'triggerer_resource_composer_v1beta1.dart';
import 'web_server_resource_composer_v1beta1.dart';
import 'worker_resource_composer_v1beta1.dart';

/// The Kubernetes workloads configuration for GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
class WorkloadsConfigComposerV1beta1 {
  /// Optional. Resources used by Airflow schedulers.
  final pulumi.Input<SchedulerResourceComposerV1beta1>? scheduler;
  /// Optional. Resources used by Airflow triggerers.
  final pulumi.Input<TriggererResourceComposerV1beta1>? triggerer;
  /// Optional. Resources used by Airflow web server.
  final pulumi.Input<WebServerResourceComposerV1beta1>? webServer;
  /// Optional. Resources used by Airflow workers.
  final pulumi.Input<WorkerResourceComposerV1beta1>? worker;

  /// Creates a new [WorkloadsConfigComposerV1beta1].
  /// [scheduler] Optional. Resources used by Airflow schedulers.
  /// [triggerer] Optional. Resources used by Airflow triggerers.
  /// [webServer] Optional. Resources used by Airflow web server.
  /// [worker] Optional. Resources used by Airflow workers.
  const WorkloadsConfigComposerV1beta1({
    this.scheduler,
    this.triggerer,
    this.webServer,
    this.worker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduler': ?pulumi.Input.mapOptionalInputValue<SchedulerResourceComposerV1beta1, Map<String, dynamic>>(scheduler, (value) => value.toMap()),
      'triggerer': ?pulumi.Input.mapOptionalInputValue<TriggererResourceComposerV1beta1, Map<String, dynamic>>(triggerer, (value) => value.toMap()),
      'webServer': ?pulumi.Input.mapOptionalInputValue<WebServerResourceComposerV1beta1, Map<String, dynamic>>(webServer, (value) => value.toMap()),
      'worker': ?pulumi.Input.mapOptionalInputValue<WorkerResourceComposerV1beta1, Map<String, dynamic>>(worker, (value) => value.toMap()),
    };
  }

  factory WorkloadsConfigComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkloadsConfigComposerV1beta1(
      scheduler: (() { final guardedValue = map['scheduler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchedulerResourceComposerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggerer: (() { final guardedValue = map['triggerer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggererResourceComposerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webServer: (() { final guardedValue = map['webServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebServerResourceComposerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      worker: (() { final guardedValue = map['worker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerResourceComposerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
