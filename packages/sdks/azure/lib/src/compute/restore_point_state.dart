// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RestorePoint resources.
class RestorePointState {
  /// Whether the Consistency Mode of the Virtual Machine Restore Point is set to `CrashConsistent`. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? crashConsistencyModeEnabled;
  /// A list of disks that will be excluded from the Virtual Machine Restore Point. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? excludedDisks;
  /// Specifies the name of the Virtual Machine Restore Point. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Virtual Machine Restore Point Collection the Virtual Machine Restore Point will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualMachineRestorePointCollectionId;

  /// Creates a new [RestorePointState].
  /// [crashConsistencyModeEnabled] Whether the Consistency Mode of the Virtual Machine Restore Point is set to `CrashConsistent`. Defaults to `false`. Changing this forces a new resource to be created.
  /// [excludedDisks] A list of disks that will be excluded from the Virtual Machine Restore Point. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Virtual Machine Restore Point. Changing this forces a new resource to be created.
  /// [virtualMachineRestorePointCollectionId] Specifies the ID of the Virtual Machine Restore Point Collection the Virtual Machine Restore Point will be associated with. Changing this forces a new resource to be created.
  const RestorePointState({
    this.crashConsistencyModeEnabled,
    this.excludedDisks,
    this.name,
    this.virtualMachineRestorePointCollectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crashConsistencyModeEnabled': ?crashConsistencyModeEnabled,
      'excludedDisks': ?excludedDisks,
      'name': ?name,
      'virtualMachineRestorePointCollectionId': ?virtualMachineRestorePointCollectionId,
    };
  }

  factory RestorePointState.fromMap(Map<String, dynamic> map) {
    return RestorePointState(
      crashConsistencyModeEnabled: (() { final guardedValue = map['crashConsistencyModeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludedDisks: (() { final guardedValue = map['excludedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachineRestorePointCollectionId: (() { final guardedValue = map['virtualMachineRestorePointCollectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

