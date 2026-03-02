// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';

/// A2A provider specific settings.
class A2AReplicationProtectionClusterDetailsResponse {
  /// The cluster management Id.
  final pulumi.Input<String>? clusterManagementId;
  /// The recovery point Id to which the cluster was failed over.
  final pulumi.Input<String>? failoverRecoveryPointId;
  /// The initial primary extended location.
  final pulumi.Input<ExtendedLocationResponse>? initialPrimaryExtendedLocation;
  /// The initial primary fabric location.
  final pulumi.Input<String>? initialPrimaryFabricLocation;
  /// The initial primary availability zone.
  final pulumi.Input<String>? initialPrimaryZone;
  /// The initial recovery extended location.
  final pulumi.Input<ExtendedLocationResponse>? initialRecoveryExtendedLocation;
  /// The initial recovery fabric location.
  final pulumi.Input<String>? initialRecoveryFabricLocation;
  /// The initial recovery availability zone.
  final pulumi.Input<String>? initialRecoveryZone;
  /// Gets the Instance type.
  /// Expected value is 'A2A'.
  final pulumi.Input<String> instanceType;
  /// The time (in UTC) when the last RPO value was calculated by Protection Service.
  final pulumi.Input<String>? lastRpoCalculatedTime;
  /// An id that survives actions like switch protection which change the backing PE/CPE objects internally.The lifecycle id gets carried forward to have a link/continuity in being able to have an Id that denotes the "same" protected cluster even though other internal Ids/ARM Id might be changing.
  final pulumi.Input<String>? lifecycleId;
  /// Whether Multi VM group is auto created or specified by user.
  final pulumi.Input<String>? multiVmGroupCreateOption;
  /// The multi vm group Id.
  final pulumi.Input<String>? multiVmGroupId;
  /// The multi vm group name.
  final pulumi.Input<String>? multiVmGroupName;
  /// The primary availability zone.
  final pulumi.Input<String>? primaryAvailabilityZone;
  /// The primary Extended Location.
  final pulumi.Input<ExtendedLocationResponse>? primaryExtendedLocation;
  /// Primary fabric location.
  final pulumi.Input<String>? primaryFabricLocation;
  /// The recovery availability zone.
  final pulumi.Input<String>? recoveryAvailabilityZone;
  /// The recovery Extended Location.
  final pulumi.Input<ExtendedLocationResponse>? recoveryExtendedLocation;
  /// The recovery fabric location.
  final pulumi.Input<String>? recoveryFabricLocation;
  /// The last RPO value in seconds.
  final pulumi.Input<double>? rpoInSeconds;

  /// Creates a new [A2AReplicationProtectionClusterDetailsResponse].
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
  A2AReplicationProtectionClusterDetailsResponse({
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
      'initialPrimaryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(initialPrimaryExtendedLocation, (value) => value.toMap()),
      'initialPrimaryFabricLocation': ?initialPrimaryFabricLocation,
      'initialPrimaryZone': ?initialPrimaryZone,
      'initialRecoveryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(initialRecoveryExtendedLocation, (value) => value.toMap()),
      'initialRecoveryFabricLocation': ?initialRecoveryFabricLocation,
      'initialRecoveryZone': ?initialRecoveryZone,
      'instanceType': instanceType,
      'lastRpoCalculatedTime': ?lastRpoCalculatedTime,
      'lifecycleId': ?lifecycleId,
      'multiVmGroupCreateOption': ?multiVmGroupCreateOption,
      'multiVmGroupId': ?multiVmGroupId,
      'multiVmGroupName': ?multiVmGroupName,
      'primaryAvailabilityZone': ?primaryAvailabilityZone,
      'primaryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(primaryExtendedLocation, (value) => value.toMap()),
      'primaryFabricLocation': ?primaryFabricLocation,
      'recoveryAvailabilityZone': ?recoveryAvailabilityZone,
      'recoveryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(recoveryExtendedLocation, (value) => value.toMap()),
      'recoveryFabricLocation': ?recoveryFabricLocation,
      'rpoInSeconds': ?rpoInSeconds,
    };
  }

  factory A2AReplicationProtectionClusterDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2AReplicationProtectionClusterDetailsResponse(
      clusterManagementId: map['clusterManagementId'] == null ? null : (map['clusterManagementId'] as String).input(),
      failoverRecoveryPointId: map['failoverRecoveryPointId'] == null ? null : (map['failoverRecoveryPointId'] as String).input(),
      initialPrimaryExtendedLocation: map['initialPrimaryExtendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['initialPrimaryExtendedLocation'] as Map).cast<String, dynamic>())).input(),
      initialPrimaryFabricLocation: map['initialPrimaryFabricLocation'] == null ? null : (map['initialPrimaryFabricLocation'] as String).input(),
      initialPrimaryZone: map['initialPrimaryZone'] == null ? null : (map['initialPrimaryZone'] as String).input(),
      initialRecoveryExtendedLocation: map['initialRecoveryExtendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['initialRecoveryExtendedLocation'] as Map).cast<String, dynamic>())).input(),
      initialRecoveryFabricLocation: map['initialRecoveryFabricLocation'] == null ? null : (map['initialRecoveryFabricLocation'] as String).input(),
      initialRecoveryZone: map['initialRecoveryZone'] == null ? null : (map['initialRecoveryZone'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] == null ? null : (map['lastRpoCalculatedTime'] as String).input(),
      lifecycleId: map['lifecycleId'] == null ? null : (map['lifecycleId'] as String).input(),
      multiVmGroupCreateOption: map['multiVmGroupCreateOption'] == null ? null : (map['multiVmGroupCreateOption'] as String).input(),
      multiVmGroupId: map['multiVmGroupId'] == null ? null : (map['multiVmGroupId'] as String).input(),
      multiVmGroupName: map['multiVmGroupName'] == null ? null : (map['multiVmGroupName'] as String).input(),
      primaryAvailabilityZone: map['primaryAvailabilityZone'] == null ? null : (map['primaryAvailabilityZone'] as String).input(),
      primaryExtendedLocation: map['primaryExtendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['primaryExtendedLocation'] as Map).cast<String, dynamic>())).input(),
      primaryFabricLocation: map['primaryFabricLocation'] == null ? null : (map['primaryFabricLocation'] as String).input(),
      recoveryAvailabilityZone: map['recoveryAvailabilityZone'] == null ? null : (map['recoveryAvailabilityZone'] as String).input(),
      recoveryExtendedLocation: map['recoveryExtendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['recoveryExtendedLocation'] as Map).cast<String, dynamic>())).input(),
      recoveryFabricLocation: map['recoveryFabricLocation'] == null ? null : (map['recoveryFabricLocation'] as String).input(),
      rpoInSeconds: map['rpoInSeconds'] == null ? null : (map['rpoInSeconds'] as double).input(),
    );
  }
}

