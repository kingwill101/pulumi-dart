// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_aprotected_managed_disk_details_response.dart';
import 'a2_ashared_disk_irerror_details_response.dart';
import 'a2_aunprotected_disk_details_response.dart';

/// A2A provider specific settings.
class A2ASharedDiskReplicationDetailsResponse {
  /// The recovery point id to which the Virtual node was failed over.
  final String? failoverRecoveryPointId;
  /// Gets the Instance type.
  /// Expected value is 'A2A'.
  final String instanceType;
  /// The time (in UTC) when the last RPO value was calculated by Protection Service.
  final String? lastRpoCalculatedTime;
  /// The management Id.
  final String? managementId;
  /// The type of the monitoring job. The progress is contained in MonitoringPercentageCompletion property.
  final String? monitoringJobType;
  /// The percentage of the monitoring job. The type of the monitoring job is defined by MonitoringJobType property.
  final int? monitoringPercentageCompletion;
  /// Primary fabric location.
  final String? primaryFabricLocation;
  /// The list of protected managed disks.
  final List<A2AProtectedManagedDiskDetailsResponse>? protectedManagedDisks;
  /// The recovery fabric location.
  final String? recoveryFabricLocation;
  /// The last RPO value in seconds.
  final double? rpoInSeconds;
  /// The IR Errors.
  final List<A2ASharedDiskIRErrorDetailsResponse>? sharedDiskIRErrors;
  /// The list of unprotected disks.
  final List<A2AUnprotectedDiskDetailsResponse>? unprotectedDisks;

  /// Creates a new [A2ASharedDiskReplicationDetailsResponse].
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
  /// [sharedDiskIRErrors] The IR Errors.
  /// [unprotectedDisks] The list of unprotected disks.
  A2ASharedDiskReplicationDetailsResponse({
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
    this.sharedDiskIRErrors,
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
      'protectedManagedDisks': ?protectedManagedDisks == null ? null : pulumi.Input.encodeList<A2AProtectedManagedDiskDetailsResponse, Map<String, dynamic>>(protectedManagedDisks!, (value) => value.toMap()),
      'recoveryFabricLocation': ?recoveryFabricLocation,
      'rpoInSeconds': ?rpoInSeconds,
      'sharedDiskIRErrors': ?sharedDiskIRErrors == null ? null : pulumi.Input.encodeList<A2ASharedDiskIRErrorDetailsResponse, Map<String, dynamic>>(sharedDiskIRErrors!, (value) => value.toMap()),
      'unprotectedDisks': ?unprotectedDisks == null ? null : pulumi.Input.encodeList<A2AUnprotectedDiskDetailsResponse, Map<String, dynamic>>(unprotectedDisks!, (value) => value.toMap()),
    };
  }

  factory A2ASharedDiskReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2ASharedDiskReplicationDetailsResponse(
      failoverRecoveryPointId: map['failoverRecoveryPointId'] == null ? null : map['failoverRecoveryPointId'] as String,
      instanceType: map['instanceType'] as String,
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] == null ? null : map['lastRpoCalculatedTime'] as String,
      managementId: map['managementId'] == null ? null : map['managementId'] as String,
      monitoringJobType: map['monitoringJobType'] == null ? null : map['monitoringJobType'] as String,
      monitoringPercentageCompletion: map['monitoringPercentageCompletion'] == null ? null : map['monitoringPercentageCompletion'] as int,
      primaryFabricLocation: map['primaryFabricLocation'] == null ? null : map['primaryFabricLocation'] as String,
      protectedManagedDisks: map['protectedManagedDisks'] == null ? null : pulumi.Input.decodeList<A2AProtectedManagedDiskDetailsResponse>(map['protectedManagedDisks'], (value) => A2AProtectedManagedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      recoveryFabricLocation: map['recoveryFabricLocation'] == null ? null : map['recoveryFabricLocation'] as String,
      rpoInSeconds: map['rpoInSeconds'] == null ? null : map['rpoInSeconds'] as double,
      sharedDiskIRErrors: map['sharedDiskIRErrors'] == null ? null : pulumi.Input.decodeList<A2ASharedDiskIRErrorDetailsResponse>(map['sharedDiskIRErrors'], (value) => A2ASharedDiskIRErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      unprotectedDisks: map['unprotectedDisks'] == null ? null : pulumi.Input.decodeList<A2AUnprotectedDiskDetailsResponse>(map['unprotectedDisks'], (value) => A2AUnprotectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

