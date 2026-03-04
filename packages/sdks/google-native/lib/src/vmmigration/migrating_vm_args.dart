// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_disks_target_defaults.dart';
import 'compute_engine_target_defaults.dart';
import 'schedule_policy.dart';

/// {@template pulumi_vmmigration_v1_migrating_vm_args_doc}
/// The set of arguments for MigratingVm.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1_migrating_vm_args_doc}
class MigratingVmArgs {
  /// Details of the target Persistent Disks in Compute Engine.
  final pulumi.Input<ComputeEngineDisksTargetDefaults>?
  computeEngineDisksTargetDefaults;

  /// Details of the target VM in Compute Engine.
  final pulumi.Input<ComputeEngineTargetDefaults>? computeEngineTargetDefaults;

  /// The description attached to the migrating VM by the user.
  final pulumi.Input<String>? description;

  /// The display name attached to the MigratingVm by the user.
  final pulumi.Input<String>? displayName;

  /// The labels of the migrating VM.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Required. The migratingVm identifier.
  final pulumi.Input<String> migratingVmId;

  /// The replication schedule policy.
  final pulumi.Input<SchedulePolicy>? policy;
  final pulumi.Input<String>? project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String> sourceId;

  /// The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not the VM's name but rather its moRef id. This id is of the form vm-.
  final pulumi.Input<String>? sourceVmId;

  /// Creates a new [MigratingVmArgs].
  /// [computeEngineDisksTargetDefaults] Details of the target Persistent Disks in Compute Engine.
  /// [computeEngineTargetDefaults] Details of the target VM in Compute Engine.
  /// [description] The description attached to the migrating VM by the user.
  /// [displayName] The display name attached to the MigratingVm by the user.
  /// [labels] The labels of the migrating VM.
  /// [location] Optional.
  /// [migratingVmId] Required. The migratingVm identifier.
  /// [policy] The replication schedule policy.
  /// [project] Optional.
  /// [requestId] A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [sourceId] Required.
  /// [sourceVmId] The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not the VM's name but rather its moRef id. This id is of the form vm-.
  MigratingVmArgs({
    this.computeEngineDisksTargetDefaults,
    this.computeEngineTargetDefaults,
    this.description,
    this.displayName,
    this.labels,
    this.location,
    required this.migratingVmId,
    this.policy,
    this.project,
    this.requestId,
    required this.sourceId,
    this.sourceVmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeEngineDisksTargetDefaults':
          ?pulumi.Input.mapOptionalInputValue<
            ComputeEngineDisksTargetDefaults,
            Map<String, dynamic>
          >(computeEngineDisksTargetDefaults, (value) => value.toMap()),
      'computeEngineTargetDefaults':
          ?pulumi.Input.mapOptionalInputValue<
            ComputeEngineTargetDefaults,
            Map<String, dynamic>
          >(computeEngineTargetDefaults, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'migratingVmId': migratingVmId,
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            SchedulePolicy,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
      'sourceId': sourceId,
      'sourceVmId': ?sourceVmId,
    };
  }

  factory MigratingVmArgs.fromMap(Map<String, dynamic> map) {
    return MigratingVmArgs(
      computeEngineDisksTargetDefaults: (() {
        final guardedValue = map['computeEngineDisksTargetDefaults'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ComputeEngineDisksTargetDefaults.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      computeEngineTargetDefaults: (() {
        final guardedValue = map['computeEngineTargetDefaults'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ComputeEngineTargetDefaults.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      migratingVmId: pulumi.Input.fromValue(map['migratingVmId'] as String),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SchedulePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestId: (() {
        final guardedValue = map['requestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
      sourceVmId: (() {
        final guardedValue = map['sourceVmId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
