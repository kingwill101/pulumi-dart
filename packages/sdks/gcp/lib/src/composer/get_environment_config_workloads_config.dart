// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_config_workloads_config_dag_processor.dart';
import 'get_environment_config_workloads_config_scheduler.dart';
import 'get_environment_config_workloads_config_triggerer.dart';
import 'get_environment_config_workloads_config_web_server.dart';
import 'get_environment_config_workloads_config_worker.dart';

class GetEnvironmentConfigWorkloadsConfig {
  /// Configuration for resources used by DAG processor.
  final pulumi.Input<List<GetEnvironmentConfigWorkloadsConfigDagProcessor>> dagProcessors;
  /// Configuration for resources used by Airflow schedulers.
  final pulumi.Input<List<GetEnvironmentConfigWorkloadsConfigScheduler>> schedulers;
  /// Configuration for resources used by Airflow triggerers.
  final pulumi.Input<List<GetEnvironmentConfigWorkloadsConfigTriggerer>> triggerers;
  /// Configuration for resources used by Airflow web server.
  final pulumi.Input<List<GetEnvironmentConfigWorkloadsConfigWebServer>> webServers;
  /// Configuration for resources used by Airflow workers.
  final pulumi.Input<List<GetEnvironmentConfigWorkloadsConfigWorker>> workers;

  /// Creates a new [GetEnvironmentConfigWorkloadsConfig].
  /// [dagProcessors] Configuration for resources used by DAG processor.
  /// [schedulers] Configuration for resources used by Airflow schedulers.
  /// [triggerers] Configuration for resources used by Airflow triggerers.
  /// [webServers] Configuration for resources used by Airflow web server.
  /// [workers] Configuration for resources used by Airflow workers.
  GetEnvironmentConfigWorkloadsConfig({
    required this.dagProcessors,
    required this.schedulers,
    required this.triggerers,
    required this.webServers,
    required this.workers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dagProcessors': pulumi.Input.mapInputValue<List<GetEnvironmentConfigWorkloadsConfigDagProcessor>, List<Map<String, dynamic>>>(dagProcessors, (value) => pulumi.Input.encodeList<GetEnvironmentConfigWorkloadsConfigDagProcessor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedulers': pulumi.Input.mapInputValue<List<GetEnvironmentConfigWorkloadsConfigScheduler>, List<Map<String, dynamic>>>(schedulers, (value) => pulumi.Input.encodeList<GetEnvironmentConfigWorkloadsConfigScheduler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggerers': pulumi.Input.mapInputValue<List<GetEnvironmentConfigWorkloadsConfigTriggerer>, List<Map<String, dynamic>>>(triggerers, (value) => pulumi.Input.encodeList<GetEnvironmentConfigWorkloadsConfigTriggerer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webServers': pulumi.Input.mapInputValue<List<GetEnvironmentConfigWorkloadsConfigWebServer>, List<Map<String, dynamic>>>(webServers, (value) => pulumi.Input.encodeList<GetEnvironmentConfigWorkloadsConfigWebServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workers': pulumi.Input.mapInputValue<List<GetEnvironmentConfigWorkloadsConfigWorker>, List<Map<String, dynamic>>>(workers, (value) => pulumi.Input.encodeList<GetEnvironmentConfigWorkloadsConfigWorker, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetEnvironmentConfigWorkloadsConfig.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigWorkloadsConfig(
      dagProcessors: (pulumi.Input.decodeList<GetEnvironmentConfigWorkloadsConfigDagProcessor>(map['dagProcessors'], (value) => GetEnvironmentConfigWorkloadsConfigDagProcessor.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schedulers: (pulumi.Input.decodeList<GetEnvironmentConfigWorkloadsConfigScheduler>(map['schedulers'], (value) => GetEnvironmentConfigWorkloadsConfigScheduler.fromMap((value as Map).cast<String, dynamic>()))).input(),
      triggerers: (pulumi.Input.decodeList<GetEnvironmentConfigWorkloadsConfigTriggerer>(map['triggerers'], (value) => GetEnvironmentConfigWorkloadsConfigTriggerer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webServers: (pulumi.Input.decodeList<GetEnvironmentConfigWorkloadsConfigWebServer>(map['webServers'], (value) => GetEnvironmentConfigWorkloadsConfigWebServer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workers: (pulumi.Input.decodeList<GetEnvironmentConfigWorkloadsConfigWorker>(map['workers'], (value) => GetEnvironmentConfigWorkloadsConfigWorker.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

