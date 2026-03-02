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
  final pulumi.Input<ComputeEngineDisksTargetDefaults>? computeEngineDisksTargetDefaults;
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
      'computeEngineDisksTargetDefaults': ?pulumi.Input.mapOptionalInputValue<ComputeEngineDisksTargetDefaults, Map<String, dynamic>>(computeEngineDisksTargetDefaults, (value) => value.toMap()),
      'computeEngineTargetDefaults': ?pulumi.Input.mapOptionalInputValue<ComputeEngineTargetDefaults, Map<String, dynamic>>(computeEngineTargetDefaults, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'migratingVmId': migratingVmId,
      'policy': ?pulumi.Input.mapOptionalInputValue<SchedulePolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
      'sourceId': sourceId,
      'sourceVmId': ?sourceVmId,
    };
  }

  factory MigratingVmArgs.fromMap(Map<String, dynamic> map) {
    return MigratingVmArgs(
      computeEngineDisksTargetDefaults: map['computeEngineDisksTargetDefaults'] == null ? null : (ComputeEngineDisksTargetDefaults.fromMap((map['computeEngineDisksTargetDefaults']! as Map).cast<String, dynamic>())).input(),
      computeEngineTargetDefaults: map['computeEngineTargetDefaults'] == null ? null : (ComputeEngineTargetDefaults.fromMap((map['computeEngineTargetDefaults']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      migratingVmId: (map['migratingVmId'] as String).input(),
      policy: map['policy'] == null ? null : (SchedulePolicy.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      sourceId: (map['sourceId'] as String).input(),
      sourceVmId: map['sourceVmId'] == null ? null : (map['sourceVmId']! as String).input(),
    );
  }
}

