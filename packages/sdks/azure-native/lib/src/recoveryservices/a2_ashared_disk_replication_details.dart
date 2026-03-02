// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_aprotected_managed_disk_details.dart';
import 'a2_aunprotected_disk_details.dart';

/// A2A provider specific settings.
class A2ASharedDiskReplicationDetails {
  /// The recovery point id to which the Virtual node was failed over.
  final pulumi.Input<String>? failoverRecoveryPointId;
  /// Gets the Instance type.
  /// Expected value is 'A2A'.
  final pulumi.Input<String> instanceType;
  /// The time (in UTC) when the last RPO value was calculated by Protection Service.
  final pulumi.Input<String>? lastRpoCalculatedTime;
  /// The management Id.
  final pulumi.Input<String>? managementId;
  /// The type of the monitoring job. The progress is contained in MonitoringPercentageCompletion property.
  final pulumi.Input<String>? monitoringJobType;
  /// The percentage of the monitoring job. The type of the monitoring job is defined by MonitoringJobType property.
  final pulumi.Input<int>? monitoringPercentageCompletion;
  /// Primary fabric location.
  final pulumi.Input<String>? primaryFabricLocation;
  /// The list of protected managed disks.
  final pulumi.Input<List<A2AProtectedManagedDiskDetails>>? protectedManagedDisks;
  /// The recovery fabric location.
  final pulumi.Input<String>? recoveryFabricLocation;
  /// The last RPO value in seconds.
  final pulumi.Input<double>? rpoInSeconds;
  /// The list of unprotected disks.
  final pulumi.Input<List<A2AUnprotectedDiskDetails>>? unprotectedDisks;

  /// Creates a new [A2ASharedDiskReplicationDetails].
  /// [failoverRecoveryPointId] The recovery point id to which the Virtual node was failed over.
  /// [instanceType] Gets the Instance type.
  /// [lastRpoCalculatedTime] The time (in UTC) when the last RPO value was calculated by Protection Service.
  /// [managementId] The management Id.
  /// [monitoringJobType] The type of the monitoring job. The progress is contained in MonitoringPercentageCompletion property.
  /// [monitoringPercentageCompletion] The percentage of the monitoring job. The type of the monitoring job is defined by MonitoringJobType property.
  /// [primaryFabricLocation] Primary fabric location.
  /// [protectedManagedDisks] The list of protected managed disks.
  /// [recoveryFabricLocation] The recovery fabric location.
  /// [rpoInSeconds] The last RPO value in seconds.
  /// [unprotectedDisks] The list of unprotected disks.
  A2ASharedDiskReplicationDetails({
    this.failoverRecoveryPointId,
    required this.instanceType,
    this.lastRpoCalculatedTime,
    this.managementId,
    this.monitoringJobType,
    this.monitoringPercentageCompletion,
    this.primaryFabricLocation,
    this.protectedManagedDisks,
    this.recoveryFabricLocation,
    this.rpoInSeconds,
    this.unprotectedDisks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverRecoveryPointId': ?failoverRecoveryPointId,
      'instanceType': instanceType,
      'lastRpoCalculatedTime': ?lastRpoCalculatedTime,
      'managementId': ?managementId,
      'monitoringJobType': ?monitoringJobType,
      'monitoringPercentageCompletion': ?monitoringPercentageCompletion,
      'primaryFabricLocation': ?primaryFabricLocation,
      'protectedManagedDisks': ?pulumi.Input.mapOptionalInputValue<List<A2AProtectedManagedDiskDetails>, List<Map<String, dynamic>>>(protectedManagedDisks, (value) => pulumi.Input.encodeList<A2AProtectedManagedDiskDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recoveryFabricLocation': ?recoveryFabricLocation,
      'rpoInSeconds': ?rpoInSeconds,
      'unprotectedDisks': ?pulumi.Input.mapOptionalInputValue<List<A2AUnprotectedDiskDetails>, List<Map<String, dynamic>>>(unprotectedDisks, (value) => pulumi.Input.encodeList<A2AUnprotectedDiskDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory A2ASharedDiskReplicationDetails.fromMap(Map<String, dynamic> map) {
    return A2ASharedDiskReplicationDetails(
      failoverRecoveryPointId: map['failoverRecoveryPointId'] == null ? null : (map['failoverRecoveryPointId'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] == null ? null : (map['lastRpoCalculatedTime'] as String).input(),
      managementId: map['managementId'] == null ? null : (map['managementId'] as String).input(),
      monitoringJobType: map['monitoringJobType'] == null ? null : (map['monitoringJobType'] as String).input(),
      monitoringPercentageCompletion: map['monitoringPercentageCompletion'] == null ? null : (map['monitoringPercentageCompletion'] as int).input(),
      primaryFabricLocation: map['primaryFabricLocation'] == null ? null : (map['primaryFabricLocation'] as String).input(),
      protectedManagedDisks: map['protectedManagedDisks'] == null ? null : (pulumi.Input.decodeList<A2AProtectedManagedDiskDetails>(map['protectedManagedDisks'], (value) => A2AProtectedManagedDiskDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      recoveryFabricLocation: map['recoveryFabricLocation'] == null ? null : (map['recoveryFabricLocation'] as String).input(),
      rpoInSeconds: map['rpoInSeconds'] == null ? null : (map['rpoInSeconds'] as double).input(),
      unprotectedDisks: map['unprotectedDisks'] == null ? null : (pulumi.Input.decodeList<A2AUnprotectedDiskDetails>(map['unprotectedDisks'], (value) => A2AUnprotectedDiskDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

