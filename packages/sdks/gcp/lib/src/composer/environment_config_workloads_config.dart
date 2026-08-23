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
  const EnvironmentConfigWorkloadsConfig({
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
      dagProcessor: (() { final guardedValue = map['dagProcessor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentConfigWorkloadsConfigDagProcessor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheduler: (() { final guardedValue = map['scheduler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentConfigWorkloadsConfigScheduler.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggerer: (() { final guardedValue = map['triggerer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentConfigWorkloadsConfigTriggerer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webServer: (() { final guardedValue = map['webServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentConfigWorkloadsConfigWebServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      worker: (() { final guardedValue = map['worker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentConfigWorkloadsConfigWorker.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
