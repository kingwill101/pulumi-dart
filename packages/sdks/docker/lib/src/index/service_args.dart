// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_auth.dart';
import 'service_converge_config.dart';
import 'service_endpoint_spec.dart';
import 'service_label.dart';
import 'service_mode.dart';
import 'service_rollback_config.dart';
import 'service_task_spec.dart';
import 'service_update_config.dart';

/// {@template pulumi_index_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_index_service_service_args_doc}
class ServiceArgs {
  /// Configuration for the authentication for pulling the images of the service
  final pulumi.Input<ServiceAuth>? auth;
  /// A configuration to ensure that a service converges aka reaches the desired that of all task up and running
  final pulumi.Input<ServiceConvergeConfig>? convergeConfig;
  /// Properties that can be configured to access and load balance a service
  final pulumi.Input<ServiceEndpointSpec>? endpointSpec;
  /// User-defined key/value metadata
  final pulumi.Input<List<ServiceLabel>>? labels;
  /// Scheduling mode for the service
  final pulumi.Input<ServiceMode>? mode;
  /// Name of the service
  final pulumi.Input<String>? name;
  /// Specification for the rollback strategy of the service
  final pulumi.Input<ServiceRollbackConfig>? rollbackConfig;
  /// User modifiable task configuration
  final pulumi.Input<ServiceTaskSpec> taskSpec;
  /// Specification for the update strategy of the service
  final pulumi.Input<ServiceUpdateConfig>? updateConfig;

  /// Creates a new [ServiceArgs].
  /// [auth] Configuration for the authentication for pulling the images of the service
  /// [convergeConfig] A configuration to ensure that a service converges aka reaches the desired that of all task up and running
  /// [endpointSpec] Properties that can be configured to access and load balance a service
  /// [labels] User-defined key/value metadata
  /// [mode] Scheduling mode for the service
  /// [name] Name of the service
  /// [rollbackConfig] Specification for the rollback strategy of the service
  /// [taskSpec] User modifiable task configuration
  /// [updateConfig] Specification for the update strategy of the service
  const ServiceArgs({
    this.auth,
    this.convergeConfig,
    this.endpointSpec,
    this.labels,
    this.mode,
    this.name,
    this.rollbackConfig,
    required this.taskSpec,
    this.updateConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<ServiceAuth, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'convergeConfig': ?pulumi.Input.mapOptionalInputValue<ServiceConvergeConfig, Map<String, dynamic>>(convergeConfig, (value) => value.toMap()),
      'endpointSpec': ?pulumi.Input.mapOptionalInputValue<ServiceEndpointSpec, Map<String, dynamic>>(endpointSpec, (value) => value.toMap()),
      'labels': ?pulumi.Input.mapOptionalInputValue<List<ServiceLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<ServiceLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?pulumi.Input.mapOptionalInputValue<ServiceMode, Map<String, dynamic>>(mode, (value) => value.toMap()),
      'name': ?name,
      'rollbackConfig': ?pulumi.Input.mapOptionalInputValue<ServiceRollbackConfig, Map<String, dynamic>>(rollbackConfig, (value) => value.toMap()),
      'taskSpec': pulumi.Input.mapInputValue<ServiceTaskSpec, Map<String, dynamic>>(taskSpec, (value) => value.toMap()),
      'updateConfig': ?pulumi.Input.mapOptionalInputValue<ServiceUpdateConfig, Map<String, dynamic>>(updateConfig, (value) => value.toMap()),
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      auth: (() { final guardedValue = map['auth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      convergeConfig: (() { final guardedValue = map['convergeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceConvergeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointSpec: (() { final guardedValue = map['endpointSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceEndpointSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceLabel>(guardedValue, (value) => ServiceLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rollbackConfig: (() { final guardedValue = map['rollbackConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceRollbackConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskSpec: pulumi.Input.fromValue(ServiceTaskSpec.fromMap((map['taskSpec']! as Map).cast<String, dynamic>())),
      updateConfig: (() { final guardedValue = map['updateConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceUpdateConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

