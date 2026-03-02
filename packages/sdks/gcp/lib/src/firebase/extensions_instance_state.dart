// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extensions_instance_config.dart';
import 'extensions_instance_error_status.dart';
import 'extensions_instance_runtime_data.dart';

/// Input properties used for looking up and filtering ExtensionsInstance resources.
class ExtensionsInstanceState {
  /// The current Config of the Extension Instance.
  /// Structure is documented below.
  final pulumi.Input<ExtensionsInstanceConfig>? config;
  /// The time at which the Extension Instance was created.
  final pulumi.Input<String>? createTime;
  /// If this Instance has `state: ERRORED`, the error messages
  /// will be found here.
  /// Structure is documented below.
  final pulumi.Input<List<ExtensionsInstanceErrorStatus>>? errorStatuses;
  /// A weak etag that is computed by the server based on other configuration
  /// values and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// The ID to use for the Extension Instance, which will become the final
  /// component of the instance's name.
  final pulumi.Input<String>? instanceId;
  /// The name of the last operation that acted on this Extension
  /// Instance
  final pulumi.Input<String>? lastOperationName;
  /// The type of the last operation that acted on the Extension Instance.
  final pulumi.Input<String>? lastOperationType;
  /// The fully-qualified resource name of the Extension Instance.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Data set by the extension instance at runtime.
  /// Structure is documented below.
  final pulumi.Input<List<ExtensionsInstanceRuntimeData>>? runtimeDatas;
  /// The email of the service account to be used at runtime by compute resources
  /// created for the operation of the Extension instance.
  final pulumi.Input<String>? serviceAccountEmail;
  /// The processing state of the extension instance.
  final pulumi.Input<String>? state;
  /// The time at which the Extension Instance was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ExtensionsInstanceState].
  /// [config] The current Config of the Extension Instance.
  /// [createTime] The time at which the Extension Instance was created.
  /// [errorStatuses] If this Instance has `state: ERRORED`, the error messages
  /// [etag] A weak etag that is computed by the server based on other configuration
  /// [instanceId] The ID to use for the Extension Instance, which will become the final
  /// [lastOperationName] The name of the last operation that acted on this Extension
  /// [lastOperationType] The type of the last operation that acted on the Extension Instance.
  /// [name] The fully-qualified resource name of the Extension Instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [runtimeDatas] Data set by the extension instance at runtime.
  /// [serviceAccountEmail] The email of the service account to be used at runtime by compute resources
  /// [state] The processing state of the extension instance.
  /// [updateTime] The time at which the Extension Instance was updated.
  ExtensionsInstanceState({
    this.config,
    this.createTime,
    this.errorStatuses,
    this.etag,
    this.instanceId,
    this.lastOperationName,
    this.lastOperationType,
    this.name,
    this.project,
    this.runtimeDatas,
    this.serviceAccountEmail,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<ExtensionsInstanceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createTime': ?createTime,
      'errorStatuses': ?pulumi.Input.mapOptionalInputValue<List<ExtensionsInstanceErrorStatus>, List<Map<String, dynamic>>>(errorStatuses, (value) => pulumi.Input.encodeList<ExtensionsInstanceErrorStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'instanceId': ?instanceId,
      'lastOperationName': ?lastOperationName,
      'lastOperationType': ?lastOperationType,
      'name': ?name,
      'project': ?project,
      'runtimeDatas': ?pulumi.Input.mapOptionalInputValue<List<ExtensionsInstanceRuntimeData>, List<Map<String, dynamic>>>(runtimeDatas, (value) => pulumi.Input.encodeList<ExtensionsInstanceRuntimeData, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccountEmail': ?serviceAccountEmail,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory ExtensionsInstanceState.fromMap(Map<String, dynamic> map) {
    return ExtensionsInstanceState(
      config: map['config'] == null ? null : (ExtensionsInstanceConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      errorStatuses: map['errorStatuses'] == null ? null : (pulumi.Input.decodeList<ExtensionsInstanceErrorStatus>(map['errorStatuses'], (value) => ExtensionsInstanceErrorStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      lastOperationName: map['lastOperationName'] == null ? null : (map['lastOperationName'] as String).input(),
      lastOperationType: map['lastOperationType'] == null ? null : (map['lastOperationType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      runtimeDatas: map['runtimeDatas'] == null ? null : (pulumi.Input.decodeList<ExtensionsInstanceRuntimeData>(map['runtimeDatas'], (value) => ExtensionsInstanceRuntimeData.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : (map['serviceAccountEmail'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

