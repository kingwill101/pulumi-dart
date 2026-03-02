// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_disks_target_defaults_vmmigration_v1alpha1.dart';
import 'compute_engine_target_defaults_vmmigration_v1alpha1.dart';
import 'schedule_policy_vmmigration_v1alpha1.dart';
import 'target_vmdetails.dart';

/// {@template pulumi_vmmigration_v1alpha1_migrating_vm_vmmigration_v1alpha1_args_doc}
/// The set of arguments for MigratingVm.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_migrating_vm_vmmigration_v1alpha1_args_doc}
class MigratingVmVmmigrationV1alpha1Args {
  /// Details of the target Persistent Disks in Compute Engine.
  final pulumi.Input<ComputeEngineDisksTargetDefaultsVmmigrationV1alpha1>? computeEngineDisksTargetDefaults;
  /// Details of the target VM in Compute Engine.
  final pulumi.Input<ComputeEngineTargetDefaultsVmmigrationV1alpha1>? computeEngineTargetDefaults;
  /// Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_defaults instead.
  final pulumi.Input<TargetVMDetails>? computeEngineVmDefaults;
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
  final pulumi.Input<SchedulePolicyVmmigrationV1alpha1>? policy;
  final pulumi.Input<String>? project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String> sourceId;
  /// The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not the VM's name but rather its moRef id. This id is of the form vm-.
  final pulumi.Input<String>? sourceVmId;
  /// The default configuration of the target VM that will be created in Google Cloud as a result of the migration. Deprecated: Use compute_engine_target_defaults instead.
  final pulumi.Input<TargetVMDetails>? targetDefaults;

  /// Creates a new [MigratingVmVmmigrationV1alpha1Args].
  /// [computeEngineDisksTargetDefaults] Details of the target Persistent Disks in Compute Engine.
  /// [computeEngineTargetDefaults] Details of the target VM in Compute Engine.
  /// [computeEngineVmDefaults] Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_defaults instead.
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
  /// [targetDefaults] The default configuration of the target VM that will be created in Google Cloud as a result of the migration. Deprecated: Use compute_engine_target_defaults instead.
  MigratingVmVmmigrationV1alpha1Args({
    this.computeEngineDisksTargetDefaults,
    this.computeEngineTargetDefaults,
    this.computeEngineVmDefaults,
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
    this.targetDefaults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeEngineDisksTargetDefaults': ?pulumi.Input.mapOptionalInputValue<ComputeEngineDisksTargetDefaultsVmmigrationV1alpha1, Map<String, dynamic>>(computeEngineDisksTargetDefaults, (value) => value.toMap()),
      'computeEngineTargetDefaults': ?pulumi.Input.mapOptionalInputValue<ComputeEngineTargetDefaultsVmmigrationV1alpha1, Map<String, dynamic>>(computeEngineTargetDefaults, (value) => value.toMap()),
      'computeEngineVmDefaults': ?pulumi.Input.mapOptionalInputValue<TargetVMDetails, Map<String, dynamic>>(computeEngineVmDefaults, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'migratingVmId': migratingVmId,
      'policy': ?pulumi.Input.mapOptionalInputValue<SchedulePolicyVmmigrationV1alpha1, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
      'sourceId': sourceId,
      'sourceVmId': ?sourceVmId,
      'targetDefaults': ?pulumi.Input.mapOptionalInputValue<TargetVMDetails, Map<String, dynamic>>(targetDefaults, (value) => value.toMap()),
    };
  }

  factory MigratingVmVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return MigratingVmVmmigrationV1alpha1Args(
      computeEngineDisksTargetDefaults: map['computeEngineDisksTargetDefaults'] == null ? null : (ComputeEngineDisksTargetDefaultsVmmigrationV1alpha1.fromMap((map['computeEngineDisksTargetDefaults'] as Map).cast<String, dynamic>())).input(),
      computeEngineTargetDefaults: map['computeEngineTargetDefaults'] == null ? null : (ComputeEngineTargetDefaultsVmmigrationV1alpha1.fromMap((map['computeEngineTargetDefaults'] as Map).cast<String, dynamic>())).input(),
      computeEngineVmDefaults: map['computeEngineVmDefaults'] == null ? null : (TargetVMDetails.fromMap((map['computeEngineVmDefaults'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      migratingVmId: (map['migratingVmId'] as String).input(),
      policy: map['policy'] == null ? null : (SchedulePolicyVmmigrationV1alpha1.fromMap((map['policy'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      sourceId: (map['sourceId'] as String).input(),
      sourceVmId: map['sourceVmId'] == null ? null : (map['sourceVmId'] as String).input(),
      targetDefaults: map['targetDefaults'] == null ? null : (TargetVMDetails.fromMap((map['targetDefaults'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

