// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_aprotected_managed_disk_details_response.dart';
import 'a2_ashared_disk_irerror_details_response.dart';
import 'a2_aunprotected_disk_details_response.dart';

/// A2A provider specific settings.
class A2ASharedDiskReplicationDetailsResponse {
  /// The recovery point id to which the Virtual node was failed over.
  final pulumi.Input<String?>? failoverRecoveryPointId;
  /// Gets the Instance type.
  /// Expected value is 'A2A'.
  final pulumi.Input<String> instanceType;
  /// The time (in UTC) when the last RPO value was calculated by Protection Service.
  final pulumi.Input<String?>? lastRpoCalculatedTime;
  /// The management Id.
  final pulumi.Input<String?>? managementId;
  /// The type of the monitoring job. The progress is contained in MonitoringPercentageCompletion property.
  final pulumi.Input<String?>? monitoringJobType;
  /// The percentage of the monitoring job. The type of the monitoring job is defined by MonitoringJobType property.
  final pulumi.Input<int?>? monitoringPercentageCompletion;
  /// Primary fabric location.
  final pulumi.Input<String?>? primaryFabricLocation;
  /// The list of protected managed disks.
  final pulumi.Input<List<A2AProtectedManagedDiskDetailsResponse>?>? protectedManagedDisks;
  /// The recovery fabric location.
  final pulumi.Input<String?>? recoveryFabricLocation;
  /// The last RPO value in seconds.
  final pulumi.Input<double?>? rpoInSeconds;
  /// The IR Errors.
  final pulumi.Input<List<A2ASharedDiskIRErrorDetailsResponse>?>? sharedDiskIRErrors;
  /// The list of unprotected disks.
  final pulumi.Input<List<A2AUnprotectedDiskDetailsResponse>?>? unprotectedDisks;

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
  const A2ASharedDiskReplicationDetailsResponse({
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
      'protectedManagedDisks': ?pulumi.Input.mapOptionalInputValue<List<A2AProtectedManagedDiskDetailsResponse>, List<Map<String, dynamic>>>(protectedManagedDisks, (value) => pulumi.Input.encodeList<A2AProtectedManagedDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recoveryFabricLocation': ?recoveryFabricLocation,
      'rpoInSeconds': ?rpoInSeconds,
      'sharedDiskIRErrors': ?pulumi.Input.mapOptionalInputValue<List<A2ASharedDiskIRErrorDetailsResponse>, List<Map<String, dynamic>>>(sharedDiskIRErrors, (value) => pulumi.Input.encodeList<A2ASharedDiskIRErrorDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unprotectedDisks': ?pulumi.Input.mapOptionalInputValue<List<A2AUnprotectedDiskDetailsResponse>, List<Map<String, dynamic>>>(unprotectedDisks, (value) => pulumi.Input.encodeList<A2AUnprotectedDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory A2ASharedDiskReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2ASharedDiskReplicationDetailsResponse(
      failoverRecoveryPointId: (() { final guardedValue = map['failoverRecoveryPointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      lastRpoCalculatedTime: (() { final guardedValue = map['lastRpoCalculatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementId: (() { final guardedValue = map['managementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringJobType: (() { final guardedValue = map['monitoringJobType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringPercentageCompletion: (() { final guardedValue = map['monitoringPercentageCompletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      primaryFabricLocation: (() { final guardedValue = map['primaryFabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedManagedDisks: (() { final guardedValue = map['protectedManagedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<A2AProtectedManagedDiskDetailsResponse>(guardedValue, (value) => A2AProtectedManagedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      recoveryFabricLocation: (() { final guardedValue = map['recoveryFabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rpoInSeconds: (() { final guardedValue = map['rpoInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      sharedDiskIRErrors: (() { final guardedValue = map['sharedDiskIRErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<A2ASharedDiskIRErrorDetailsResponse>(guardedValue, (value) => A2ASharedDiskIRErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      unprotectedDisks: (() { final guardedValue = map['unprotectedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<A2AUnprotectedDiskDetailsResponse>(guardedValue, (value) => A2AUnprotectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
