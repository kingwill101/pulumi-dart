// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location.dart';

/// A2A provider specific settings.
class A2AReplicationProtectionClusterDetails {
  /// The cluster management Id.
  final String? clusterManagementId;
  /// The recovery point Id to which the cluster was failed over.
  final String? failoverRecoveryPointId;
  /// The initial primary extended location.
  final ExtendedLocation? initialPrimaryExtendedLocation;
  /// The initial primary fabric location.
  final String? initialPrimaryFabricLocation;
  /// The initial primary availability zone.
  final String? initialPrimaryZone;
  /// The initial recovery extended location.
  final ExtendedLocation? initialRecoveryExtendedLocation;
  /// The initial recovery fabric location.
  final String? initialRecoveryFabricLocation;
  /// The initial recovery availability zone.
  final String? initialRecoveryZone;
  /// Gets the Instance type.
  /// Expected value is 'A2A'.
  final String instanceType;
  /// The time (in UTC) when the last RPO value was calculated by Protection Service.
  final String? lastRpoCalculatedTime;
  /// An id that survives actions like switch protection which change the backing PE/CPE objects internally.The lifecycle id gets carried forward to have a link/continuity in being able to have an Id that denotes the "same" protected cluster even though other internal Ids/ARM Id might be changing.
  final String? lifecycleId;
  /// Whether Multi VM group is auto created or specified by user.
  final String? multiVmGroupCreateOption;
  /// The multi vm group Id.
  final String? multiVmGroupId;
  /// The multi vm group name.
  final String? multiVmGroupName;
  /// The primary availability zone.
  final String? primaryAvailabilityZone;
  /// The primary Extended Location.
  final ExtendedLocation? primaryExtendedLocation;
  /// Primary fabric location.
  final String? primaryFabricLocation;
  /// The recovery availability zone.
  final String? recoveryAvailabilityZone;
  /// The recovery Extended Location.
  final ExtendedLocation? recoveryExtendedLocation;
  /// The recovery fabric location.
  final String? recoveryFabricLocation;
  /// The last RPO value in seconds.
  final double? rpoInSeconds;

  /// Creates a new [A2AReplicationProtectionClusterDetails].
  /// [clusterManagementId] The cluster management Id.
  /// [failoverRecoveryPointId] The recovery point Id to which the cluster was failed over.
  /// [initialPrimaryExtendedLocation] The initial primary extended location.
  /// [initialPrimaryFabricLocation] The initial primary fabric location.
  /// [initialPrimaryZone] The initial primary availability zone.
  /// [initialRecoveryExtendedLocation] The initial recovery extended location.
  /// [initialRecoveryFabricLocation] The initial recovery fabric location.
  /// [initialRecoveryZone] The initial recovery availability zone.
  /// [instanceType] Gets the Instance type.
  /// [lastRpoCalculatedTime] The time (in UTC) when the last RPO value was calculated by Protection Service.
  /// [lifecycleId] An id that survives actions like switch protection which change the backing PE/CPE objects internally.The lifecycle id gets carried forward to have a link/continuity in being able to have an Id that denotes the "same" protected cluster even though other internal Ids/ARM Id might be changing.
  /// [multiVmGroupCreateOption] Whether Multi VM group is auto created or specified by user.
  /// [multiVmGroupId] The multi vm group Id.
  /// [multiVmGroupName] The multi vm group name.
  /// [primaryAvailabilityZone] The primary availability zone.
  /// [primaryExtendedLocation] The primary Extended Location.
  /// [primaryFabricLocation] Primary fabric location.
  /// [recoveryAvailabilityZone] The recovery availability zone.
  /// [recoveryExtendedLocation] The recovery Extended Location.
  /// [recoveryFabricLocation] The recovery fabric location.
  /// [rpoInSeconds] The last RPO value in seconds.
  A2AReplicationProtectionClusterDetails({
    this.clusterManagementId,
    this.failoverRecoveryPointId,
    this.initialPrimaryExtendedLocation,
    this.initialPrimaryFabricLocation,
    this.initialPrimaryZone,
    this.initialRecoveryExtendedLocation,
    this.initialRecoveryFabricLocation,
    this.initialRecoveryZone,
    required this.instanceType,
    this.lastRpoCalculatedTime,
    this.lifecycleId,
    this.multiVmGroupCreateOption,
    this.multiVmGroupId,
    this.multiVmGroupName,
    this.primaryAvailabilityZone,
    this.primaryExtendedLocation,
    this.primaryFabricLocation,
    this.recoveryAvailabilityZone,
    this.recoveryExtendedLocation,
    this.recoveryFabricLocation,
    this.rpoInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterManagementId': ?clusterManagementId,
      'failoverRecoveryPointId': ?failoverRecoveryPointId,
      'initialPrimaryExtendedLocation': ?initialPrimaryExtendedLocation == null ? null : initialPrimaryExtendedLocation!.toMap(),
      'initialPrimaryFabricLocation': ?initialPrimaryFabricLocation,
      'initialPrimaryZone': ?initialPrimaryZone,
      'initialRecoveryExtendedLocation': ?initialRecoveryExtendedLocation == null ? null : initialRecoveryExtendedLocation!.toMap(),
      'initialRecoveryFabricLocation': ?initialRecoveryFabricLocation,
      'initialRecoveryZone': ?initialRecoveryZone,
      'instanceType': instanceType,
      'lastRpoCalculatedTime': ?lastRpoCalculatedTime,
      'lifecycleId': ?lifecycleId,
      'multiVmGroupCreateOption': ?multiVmGroupCreateOption,
      'multiVmGroupId': ?multiVmGroupId,
      'multiVmGroupName': ?multiVmGroupName,
      'primaryAvailabilityZone': ?primaryAvailabilityZone,
      'primaryExtendedLocation': ?primaryExtendedLocation == null ? null : primaryExtendedLocation!.toMap(),
      'primaryFabricLocation': ?primaryFabricLocation,
      'recoveryAvailabilityZone': ?recoveryAvailabilityZone,
      'recoveryExtendedLocation': ?recoveryExtendedLocation == null ? null : recoveryExtendedLocation!.toMap(),
      'recoveryFabricLocation': ?recoveryFabricLocation,
      'rpoInSeconds': ?rpoInSeconds,
    };
  }

  factory A2AReplicationProtectionClusterDetails.fromMap(Map<String, dynamic> map) {
    return A2AReplicationProtectionClusterDetails(
      clusterManagementId: map['clusterManagementId'] == null ? null : map['clusterManagementId'] as String,
      failoverRecoveryPointId: map['failoverRecoveryPointId'] == null ? null : map['failoverRecoveryPointId'] as String,
      initialPrimaryExtendedLocation: map['initialPrimaryExtendedLocation'] == null ? null : ExtendedLocation.fromMap((map['initialPrimaryExtendedLocation'] as Map).cast<String, dynamic>()),
      initialPrimaryFabricLocation: map['initialPrimaryFabricLocation'] == null ? null : map['initialPrimaryFabricLocation'] as String,
      initialPrimaryZone: map['initialPrimaryZone'] == null ? null : map['initialPrimaryZone'] as String,
      initialRecoveryExtendedLocation: map['initialRecoveryExtendedLocation'] == null ? null : ExtendedLocation.fromMap((map['initialRecoveryExtendedLocation'] as Map).cast<String, dynamic>()),
      initialRecoveryFabricLocation: map['initialRecoveryFabricLocation'] == null ? null : map['initialRecoveryFabricLocation'] as String,
      initialRecoveryZone: map['initialRecoveryZone'] == null ? null : map['initialRecoveryZone'] as String,
      instanceType: map['instanceType'] as String,
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] == null ? null : map['lastRpoCalculatedTime'] as String,
      lifecycleId: map['lifecycleId'] == null ? null : map['lifecycleId'] as String,
      multiVmGroupCreateOption: map['multiVmGroupCreateOption'] == null ? null : map['multiVmGroupCreateOption'] as String,
      multiVmGroupId: map['multiVmGroupId'] == null ? null : map['multiVmGroupId'] as String,
      multiVmGroupName: map['multiVmGroupName'] == null ? null : map['multiVmGroupName'] as String,
      primaryAvailabilityZone: map['primaryAvailabilityZone'] == null ? null : map['primaryAvailabilityZone'] as String,
      primaryExtendedLocation: map['primaryExtendedLocation'] == null ? null : ExtendedLocation.fromMap((map['primaryExtendedLocation'] as Map).cast<String, dynamic>()),
      primaryFabricLocation: map['primaryFabricLocation'] == null ? null : map['primaryFabricLocation'] as String,
      recoveryAvailabilityZone: map['recoveryAvailabilityZone'] == null ? null : map['recoveryAvailabilityZone'] as String,
      recoveryExtendedLocation: map['recoveryExtendedLocation'] == null ? null : ExtendedLocation.fromMap((map['recoveryExtendedLocation'] as Map).cast<String, dynamic>()),
      recoveryFabricLocation: map['recoveryFabricLocation'] == null ? null : map['recoveryFabricLocation'] as String,
      rpoInSeconds: map['rpoInSeconds'] == null ? null : map['rpoInSeconds'] as double,
    );
  }
}

