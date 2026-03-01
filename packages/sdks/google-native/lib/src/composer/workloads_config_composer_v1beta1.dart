// ignore_for_file: unused_element, unnecessary_cast

import 'scheduler_resource_composer_v1beta1.dart';
import 'triggerer_resource_composer_v1beta1.dart';
import 'web_server_resource_composer_v1beta1.dart';
import 'worker_resource_composer_v1beta1.dart';

/// The Kubernetes workloads configuration for GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
class WorkloadsConfigComposerV1beta1 {
  /// Optional. Resources used by Airflow schedulers.
  final SchedulerResourceComposerV1beta1? scheduler;
  /// Optional. Resources used by Airflow triggerers.
  final TriggererResourceComposerV1beta1? triggerer;
  /// Optional. Resources used by Airflow web server.
  final WebServerResourceComposerV1beta1? webServer;
  /// Optional. Resources used by Airflow workers.
  final WorkerResourceComposerV1beta1? worker;

  /// Creates a new [WorkloadsConfigComposerV1beta1].
  /// [scheduler] Optional. Resources used by Airflow schedulers.
  /// [triggerer] Optional. Resources used by Airflow triggerers.
  /// [webServer] Optional. Resources used by Airflow web server.
  /// [worker] Optional. Resources used by Airflow workers.
  WorkloadsConfigComposerV1beta1({
    this.scheduler,
    this.triggerer,
    this.webServer,
    this.worker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduler': ?scheduler == null ? null : scheduler!.toMap(),
      'triggerer': ?triggerer == null ? null : triggerer!.toMap(),
      'webServer': ?webServer == null ? null : webServer!.toMap(),
      'worker': ?worker == null ? null : worker!.toMap(),
    };
  }

  factory WorkloadsConfigComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkloadsConfigComposerV1beta1(
      scheduler: map['scheduler'] == null ? null : SchedulerResourceComposerV1beta1.fromMap((map['scheduler'] as Map).cast<String, dynamic>()),
      triggerer: map['triggerer'] == null ? null : TriggererResourceComposerV1beta1.fromMap((map['triggerer'] as Map).cast<String, dynamic>()),
      webServer: map['webServer'] == null ? null : WebServerResourceComposerV1beta1.fromMap((map['webServer'] as Map).cast<String, dynamic>()),
      worker: map['worker'] == null ? null : WorkerResourceComposerV1beta1.fromMap((map['worker'] as Map).cast<String, dynamic>()),
    );
  }
}

