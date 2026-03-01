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
  ServiceArgs({
    pulumi.Output<ServiceAuth>? auth,
    pulumi.Output<ServiceConvergeConfig>? convergeConfig,
    pulumi.Output<ServiceEndpointSpec>? endpointSpec,
    pulumi.Output<List<ServiceLabel>>? labels,
    pulumi.Output<ServiceMode>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<ServiceRollbackConfig>? rollbackConfig,
    required pulumi.Output<ServiceTaskSpec> taskSpec,
    pulumi.Output<ServiceUpdateConfig>? updateConfig,
  }) :
      auth = pulumi.Input.asOptionalInput<ServiceAuth>(auth),
      convergeConfig = pulumi.Input.asOptionalInput<ServiceConvergeConfig>(convergeConfig),
      endpointSpec = pulumi.Input.asOptionalInput<ServiceEndpointSpec>(endpointSpec),
      labels = pulumi.Input.asOptionalInput<List<ServiceLabel>>(labels),
      mode = pulumi.Input.asOptionalInput<ServiceMode>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      rollbackConfig = pulumi.Input.asOptionalInput<ServiceRollbackConfig>(rollbackConfig),
      taskSpec = pulumi.Input.asInput<ServiceTaskSpec>(taskSpec),
      updateConfig = pulumi.Input.asOptionalInput<ServiceUpdateConfig>(updateConfig);

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
      auth: map['auth'] == null ? null : pulumi.Output.create<ServiceAuth>(ServiceAuth.fromMap((map['auth'] as Map).cast<String, dynamic>())),
      convergeConfig: map['convergeConfig'] == null ? null : pulumi.Output.create<ServiceConvergeConfig>(ServiceConvergeConfig.fromMap((map['convergeConfig'] as Map).cast<String, dynamic>())),
      endpointSpec: map['endpointSpec'] == null ? null : pulumi.Output.create<ServiceEndpointSpec>(ServiceEndpointSpec.fromMap((map['endpointSpec'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<ServiceLabel>>(pulumi.Input.decodeList<ServiceLabel>(map['labels'], (value) => ServiceLabel.fromMap((value as Map).cast<String, dynamic>()))),
      mode: map['mode'] == null ? null : pulumi.Output.create<ServiceMode>(ServiceMode.fromMap((map['mode'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      rollbackConfig: map['rollbackConfig'] == null ? null : pulumi.Output.create<ServiceRollbackConfig>(ServiceRollbackConfig.fromMap((map['rollbackConfig'] as Map).cast<String, dynamic>())),
      taskSpec: pulumi.Output.create<ServiceTaskSpec>(ServiceTaskSpec.fromMap((map['taskSpec'] as Map).cast<String, dynamic>())),
      updateConfig: map['updateConfig'] == null ? null : pulumi.Output.create<ServiceUpdateConfig>(ServiceUpdateConfig.fromMap((map['updateConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

