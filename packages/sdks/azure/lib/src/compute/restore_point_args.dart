// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_restore_point_restore_point_args_doc}
/// The set of arguments for RestorePoint.
/// {@endtemplate}
/// {@macro pulumi_compute_restore_point_restore_point_args_doc}
class RestorePointArgs {
  /// Whether the Consistency Mode of the Virtual Machine Restore Point is set to `CrashConsistent`. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? crashConsistencyModeEnabled;
  /// A list of disks that will be excluded from the Virtual Machine Restore Point. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? excludedDisks;
  /// Specifies the name of the Virtual Machine Restore Point. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Virtual Machine Restore Point Collection the Virtual Machine Restore Point will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualMachineRestorePointCollectionId;

  /// Creates a new [RestorePointArgs].
  /// [crashConsistencyModeEnabled] Whether the Consistency Mode of the Virtual Machine Restore Point is set to `CrashConsistent`. Defaults to `false`. Changing this forces a new resource to be created.
  /// [excludedDisks] A list of disks that will be excluded from the Virtual Machine Restore Point. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Virtual Machine Restore Point. Changing this forces a new resource to be created.
  /// [virtualMachineRestorePointCollectionId] Specifies the ID of the Virtual Machine Restore Point Collection the Virtual Machine Restore Point will be associated with. Changing this forces a new resource to be created.
  RestorePointArgs({
    pulumi.Output<bool>? crashConsistencyModeEnabled,
    pulumi.Output<List<String>>? excludedDisks,
    pulumi.Output<String>? name,
    required pulumi.Output<String> virtualMachineRestorePointCollectionId,
  }) :
      crashConsistencyModeEnabled = pulumi.Input.asOptionalInput<bool>(crashConsistencyModeEnabled),
      excludedDisks = pulumi.Input.asOptionalInput<List<String>>(excludedDisks),
      name = pulumi.Input.asOptionalInput<String>(name),
      virtualMachineRestorePointCollectionId = pulumi.Input.asInput<String>(virtualMachineRestorePointCollectionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crashConsistencyModeEnabled': ?crashConsistencyModeEnabled,
      'excludedDisks': ?excludedDisks,
      'name': ?name,
      'virtualMachineRestorePointCollectionId': virtualMachineRestorePointCollectionId,
    };
  }

  factory RestorePointArgs.fromMap(Map<String, dynamic> map) {
    return RestorePointArgs(
      crashConsistencyModeEnabled: map['crashConsistencyModeEnabled'] == null ? null : pulumi.Output.create<bool>(map['crashConsistencyModeEnabled'] as bool),
      excludedDisks: map['excludedDisks'] == null ? null : pulumi.Output.create<List<String>>((map['excludedDisks'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      virtualMachineRestorePointCollectionId: pulumi.Output.create<String>(map['virtualMachineRestorePointCollectionId'] as String),
    );
  }
}

