// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config_workloads_config_dag_processor.dart';
import 'environment_config_workloads_config_scheduler.dart';
import 'environment_config_workloads_config_triggerer.dart';
import 'environment_config_workloads_config_web_server.dart';
import 'environment_config_workloads_config_worker.dart';

class EnvironmentConfigWorkloadsConfig {
  /// Configuration for resources used by DAG processor.
  final pulumi.Input<EnvironmentConfigWorkloadsConfigDagProcessor>? dagProcessor;
  /// Configuration for resources used by Airflow schedulers.
  final pulumi.Input<EnvironmentConfigWorkloadsConfigScheduler>? scheduler;
  /// Configuration for resources used by Airflow triggerers.
  final pulumi.Input<EnvironmentConfigWorkloadsConfigTriggerer>? triggerer;
  /// Configuration for resources used by Airflow web server.
  final pulumi.Input<EnvironmentConfigWorkloadsConfigWebServer>? webServer;
  /// Configuration for resources used by Airflow workers.
  final pulumi.Input<EnvironmentConfigWorkloadsConfigWorker>? worker;

  /// Creates a new [EnvironmentConfigWorkloadsConfig].
  /// [dagProcessor] Configuration for resources used by DAG processor.
  /// [scheduler] Configuration for resources used by Airflow schedulers.
  /// [triggerer] Configuration for resources used by Airflow triggerers.
  /// [webServer] Configuration for resources used by Airflow web server.
  /// [worker] Configuration for resources used by Airflow workers.
  EnvironmentConfigWorkloadsConfig({
    this.dagProcessor,
    this.scheduler,
    this.triggerer,
    this.webServer,
    this.worker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dagProcessor': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigWorkloadsConfigDagProcessor, Map<String, dynamic>>(dagProcessor, (value) => value.toMap()),
      'scheduler': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigWorkloadsConfigScheduler, Map<String, dynamic>>(scheduler, (value) => value.toMap()),
      'triggerer': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigWorkloadsConfigTriggerer, Map<String, dynamic>>(triggerer, (value) => value.toMap()),
      'webServer': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigWorkloadsConfigWebServer, Map<String, dynamic>>(webServer, (value) => value.toMap()),
      'worker': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigWorkloadsConfigWorker, Map<String, dynamic>>(worker, (value) => value.toMap()),
    };
  }

  factory EnvironmentConfigWorkloadsConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigWorkloadsConfig(
      dagProcessor: map['dagProcessor'] == null ? null : (EnvironmentConfigWorkloadsConfigDagProcessor.fromMap((map['dagProcessor'] as Map).cast<String, dynamic>())).input(),
      scheduler: map['scheduler'] == null ? null : (EnvironmentConfigWorkloadsConfigScheduler.fromMap((map['scheduler'] as Map).cast<String, dynamic>())).input(),
      triggerer: map['triggerer'] == null ? null : (EnvironmentConfigWorkloadsConfigTriggerer.fromMap((map['triggerer'] as Map).cast<String, dynamic>())).input(),
      webServer: map['webServer'] == null ? null : (EnvironmentConfigWorkloadsConfigWebServer.fromMap((map['webServer'] as Map).cast<String, dynamic>())).input(),
      worker: map['worker'] == null ? null : (EnvironmentConfigWorkloadsConfigWorker.fromMap((map['worker'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

