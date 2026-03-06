// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduler_resource.dart';
import 'triggerer_resource.dart';
import 'web_server_resource.dart';
import 'worker_resource.dart';

/// The Kubernetes workloads configuration for GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
class WorkloadsConfig {
  /// Optional. Resources used by Airflow schedulers.
  final pulumi.Input<SchedulerResource>? scheduler;
  /// Optional. Resources used by Airflow triggerers.
  final pulumi.Input<TriggererResource>? triggerer;
  /// Optional. Resources used by Airflow web server.
  final pulumi.Input<WebServerResource>? webServer;
  /// Optional. Resources used by Airflow workers.
  final pulumi.Input<WorkerResource>? worker;

  /// Creates a new [WorkloadsConfig].
  /// [scheduler] Optional. Resources used by Airflow schedulers.
  /// [triggerer] Optional. Resources used by Airflow triggerers.
  /// [webServer] Optional. Resources used by Airflow web server.
  /// [worker] Optional. Resources used by Airflow workers.
  const WorkloadsConfig({
    this.scheduler,
    this.triggerer,
    this.webServer,
    this.worker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduler': ?pulumi.Input.mapOptionalInputValue<SchedulerResource, Map<String, dynamic>>(scheduler, (value) => value.toMap()),
      'triggerer': ?pulumi.Input.mapOptionalInputValue<TriggererResource, Map<String, dynamic>>(triggerer, (value) => value.toMap()),
      'webServer': ?pulumi.Input.mapOptionalInputValue<WebServerResource, Map<String, dynamic>>(webServer, (value) => value.toMap()),
      'worker': ?pulumi.Input.mapOptionalInputValue<WorkerResource, Map<String, dynamic>>(worker, (value) => value.toMap()),
    };
  }

  factory WorkloadsConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadsConfig(
      scheduler: (() { final guardedValue = map['scheduler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchedulerResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggerer: (() { final guardedValue = map['triggerer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggererResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webServer: (() { final guardedValue = map['webServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebServerResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      worker: (() { final guardedValue = map['worker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

