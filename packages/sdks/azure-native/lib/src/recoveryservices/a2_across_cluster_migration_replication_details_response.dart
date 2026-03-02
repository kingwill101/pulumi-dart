// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A2A provider specific settings.
class A2ACrossClusterMigrationReplicationDetailsResponse {
  /// The fabric specific object Id of the virtual machine.
  final pulumi.Input<String>? fabricObjectId;
  /// Gets the Instance type.
  /// Expected value is 'A2ACrossClusterMigration'.
  final pulumi.Input<String> instanceType;
  /// An id associated with the PE that survives actions like switch protection which change the backing PE/CPE objects internally.The lifecycle id gets carried forward to have a link/continuity in being able to have an Id that denotes the "same" protected item even though other internal Ids/ARM Id might be changing.
  final pulumi.Input<String>? lifecycleId;
  /// The type of operating system.
  final pulumi.Input<String>? osType;
  /// Primary fabric location.
  final pulumi.Input<String>? primaryFabricLocation;
  /// The protection state for the vm.
  final pulumi.Input<String>? vmProtectionState;
  /// The protection state description for the vm.
  final pulumi.Input<String>? vmProtectionStateDescription;

  /// Creates a new [A2ACrossClusterMigrationReplicationDetailsResponse].
  /// [fabricObjectId] The fabric specific object Id of the virtual machine.
  /// [instanceType] Gets the Instance type.
  /// [lifecycleId] An id associated with the PE that survives actions like switch protection which change the backing PE/CPE objects internally.The lifecycle id gets carried forward to have a link/continuity in being able to have an Id that denotes the "same" protected item even though other internal Ids/ARM Id might be changing.
  /// [osType] The type of operating system.
  /// [primaryFabricLocation] Primary fabric location.
  /// [vmProtectionState] The protection state for the vm.
  /// [vmProtectionStateDescription] The protection state description for the vm.
  A2ACrossClusterMigrationReplicationDetailsResponse({
    this.fabricObjectId,
    required this.instanceType,
    this.lifecycleId,
    this.osType,
    this.primaryFabricLocation,
    this.vmProtectionState,
    this.vmProtectionStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricObjectId': ?fabricObjectId,
      'instanceType': instanceType,
      'lifecycleId': ?lifecycleId,
      'osType': ?osType,
      'primaryFabricLocation': ?primaryFabricLocation,
      'vmProtectionState': ?vmProtectionState,
      'vmProtectionStateDescription': ?vmProtectionStateDescription,
    };
  }

  factory A2ACrossClusterMigrationReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2ACrossClusterMigrationReplicationDetailsResponse(
      fabricObjectId: map['fabricObjectId'] == null ? null : (map['fabricObjectId']! as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      lifecycleId: map['lifecycleId'] == null ? null : (map['lifecycleId']! as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      primaryFabricLocation: map['primaryFabricLocation'] == null ? null : (map['primaryFabricLocation']! as String).input(),
      vmProtectionState: map['vmProtectionState'] == null ? null : (map['vmProtectionState']! as String).input(),
      vmProtectionStateDescription: map['vmProtectionStateDescription'] == null ? null : (map['vmProtectionStateDescription']! as String).input(),
    );
  }
}

