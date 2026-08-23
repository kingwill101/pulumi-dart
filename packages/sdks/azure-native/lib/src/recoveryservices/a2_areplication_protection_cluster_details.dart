// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// A2A provider specific settings.
class A2AReplicationProtectionClusterDetails {
  /// The cluster management Id.
  final pulumi.Input<String>? clusterManagementId;
  /// The recovery point Id to which the cluster was failed over.
  final pulumi.Input<String>? failoverRecoveryPointId;
  /// The initial primary extended location.
  final pulumi.Input<ExtendedLocation>? initialPrimaryExtendedLocation;
  /// The initial primary fabric location.
  final pulumi.Input<String>? initialPrimaryFabricLocation;
  /// The initial primary availability zone.
  final pulumi.Input<String>? initialPrimaryZone;
  /// The initial recovery extended location.
  final pulumi.Input<ExtendedLocation>? initialRecoveryExtendedLocation;
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
  final pulumi.Input<ExtendedLocation>? primaryExtendedLocation;
  /// Primary fabric location.
  final pulumi.Input<String>? primaryFabricLocation;
  /// The recovery availability zone.
  final pulumi.Input<String>? recoveryAvailabilityZone;
  /// The recovery Extended Location.
  final pulumi.Input<ExtendedLocation>? recoveryExtendedLocation;
  /// The recovery fabric location.
  final pulumi.Input<String>? recoveryFabricLocation;
  /// The last RPO value in seconds.
  final pulumi.Input<double>? rpoInSeconds;

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
  const A2AReplicationProtectionClusterDetails({
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
      'initialPrimaryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(initialPrimaryExtendedLocation, (value) => value.toMap()),
      'initialPrimaryFabricLocation': ?initialPrimaryFabricLocation,
      'initialPrimaryZone': ?initialPrimaryZone,
      'initialRecoveryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(initialRecoveryExtendedLocation, (value) => value.toMap()),
      'initialRecoveryFabricLocation': ?initialRecoveryFabricLocation,
      'initialRecoveryZone': ?initialRecoveryZone,
      'instanceType': instanceType,
      'lastRpoCalculatedTime': ?lastRpoCalculatedTime,
      'lifecycleId': ?lifecycleId,
      'multiVmGroupCreateOption': ?multiVmGroupCreateOption,
      'multiVmGroupId': ?multiVmGroupId,
      'multiVmGroupName': ?multiVmGroupName,
      'primaryAvailabilityZone': ?primaryAvailabilityZone,
      'primaryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(primaryExtendedLocation, (value) => value.toMap()),
      'primaryFabricLocation': ?primaryFabricLocation,
      'recoveryAvailabilityZone': ?recoveryAvailabilityZone,
      'recoveryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(recoveryExtendedLocation, (value) => value.toMap()),
      'recoveryFabricLocation': ?recoveryFabricLocation,
      'rpoInSeconds': ?rpoInSeconds,
    };
  }

  factory A2AReplicationProtectionClusterDetails.fromMap(Map<String, dynamic> map) {
    return A2AReplicationProtectionClusterDetails(
      clusterManagementId: (() { final guardedValue = map['clusterManagementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failoverRecoveryPointId: (() { final guardedValue = map['failoverRecoveryPointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialPrimaryExtendedLocation: (() { final guardedValue = map['initialPrimaryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialPrimaryFabricLocation: (() { final guardedValue = map['initialPrimaryFabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialPrimaryZone: (() { final guardedValue = map['initialPrimaryZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialRecoveryExtendedLocation: (() { final guardedValue = map['initialRecoveryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialRecoveryFabricLocation: (() { final guardedValue = map['initialRecoveryFabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialRecoveryZone: (() { final guardedValue = map['initialRecoveryZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      lastRpoCalculatedTime: (() { final guardedValue = map['lastRpoCalculatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycleId: (() { final guardedValue = map['lifecycleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiVmGroupCreateOption: (() { final guardedValue = map['multiVmGroupCreateOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiVmGroupId: (() { final guardedValue = map['multiVmGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiVmGroupName: (() { final guardedValue = map['multiVmGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryAvailabilityZone: (() { final guardedValue = map['primaryAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryExtendedLocation: (() { final guardedValue = map['primaryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      primaryFabricLocation: (() { final guardedValue = map['primaryFabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryAvailabilityZone: (() { final guardedValue = map['recoveryAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryExtendedLocation: (() { final guardedValue = map['recoveryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recoveryFabricLocation: (() { final guardedValue = map['recoveryFabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rpoInSeconds: (() { final guardedValue = map['rpoInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
