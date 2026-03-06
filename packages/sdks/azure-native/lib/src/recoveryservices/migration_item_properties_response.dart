// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'critical_job_history_details_response.dart';
import 'current_job_details_response.dart';
import 'health_error_response.dart';
import 'vmware_cbt_migration_details_response.dart';

/// Migration item properties.
class MigrationItemPropertiesResponse {
  /// The allowed operations on the migration item based on the current migration state of the item.
  final pulumi.Input<List<String>> allowedOperations;
  /// The critical past job details.
  final pulumi.Input<List<CriticalJobHistoryDetailsResponse>> criticalJobHistory;
  /// The current job details.
  final pulumi.Input<CurrentJobDetailsResponse> currentJob;
  /// The correlation Id for events associated with this migration item.
  final pulumi.Input<String> eventCorrelationId;
  /// The consolidated health.
  final pulumi.Input<String> health;
  /// The list of health errors.
  final pulumi.Input<List<HealthErrorResponse>> healthErrors;
  /// The status of the last migration.
  final pulumi.Input<String> lastMigrationStatus;
  /// The last migration time.
  final pulumi.Input<String> lastMigrationTime;
  /// The status of the last test migration.
  final pulumi.Input<String> lastTestMigrationStatus;
  /// The last test migration time.
  final pulumi.Input<String> lastTestMigrationTime;
  /// The on-premise virtual machine name.
  final pulumi.Input<String> machineName;
  /// The migration status.
  final pulumi.Input<String> migrationState;
  /// The migration state description.
  final pulumi.Input<String> migrationStateDescription;
  /// The name of policy governing this item.
  final pulumi.Input<String> policyFriendlyName;
  /// The ARM Id of policy governing this item.
  final pulumi.Input<String> policyId;
  /// The migration provider custom settings.
  final pulumi.Input<VMwareCbtMigrationDetailsResponse>? providerSpecificDetails;
  /// The recovery services provider ARM Id.
  final pulumi.Input<String> recoveryServicesProviderId;
  /// The replication status.
  final pulumi.Input<String> replicationStatus;
  /// The test migrate state.
  final pulumi.Input<String> testMigrateState;
  /// The test migrate state description.
  final pulumi.Input<String> testMigrateStateDescription;

  /// Creates a new [MigrationItemPropertiesResponse].
  /// [allowedOperations] The allowed operations on the migration item based on the current migration state of the item.
  /// [criticalJobHistory] The critical past job details.
  /// [currentJob] The current job details.
  /// [eventCorrelationId] The correlation Id for events associated with this migration item.
  /// [health] The consolidated health.
  /// [healthErrors] The list of health errors.
  /// [lastMigrationStatus] The status of the last migration.
  /// [lastMigrationTime] The last migration time.
  /// [lastTestMigrationStatus] The status of the last test migration.
  /// [lastTestMigrationTime] The last test migration time.
  /// [machineName] The on-premise virtual machine name.
  /// [migrationState] The migration status.
  /// [migrationStateDescription] The migration state description.
  /// [policyFriendlyName] The name of policy governing this item.
  /// [policyId] The ARM Id of policy governing this item.
  /// [providerSpecificDetails] The migration provider custom settings.
  /// [recoveryServicesProviderId] The recovery services provider ARM Id.
  /// [replicationStatus] The replication status.
  /// [testMigrateState] The test migrate state.
  /// [testMigrateStateDescription] The test migrate state description.
  const MigrationItemPropertiesResponse({
    required this.allowedOperations,
    required this.criticalJobHistory,
    required this.currentJob,
    required this.eventCorrelationId,
    required this.health,
    required this.healthErrors,
    required this.lastMigrationStatus,
    required this.lastMigrationTime,
    required this.lastTestMigrationStatus,
    required this.lastTestMigrationTime,
    required this.machineName,
    required this.migrationState,
    required this.migrationStateDescription,
    required this.policyFriendlyName,
    required this.policyId,
    this.providerSpecificDetails,
    required this.recoveryServicesProviderId,
    required this.replicationStatus,
    required this.testMigrateState,
    required this.testMigrateStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOperations': allowedOperations,
      'criticalJobHistory': pulumi.Input.mapInputValue<List<CriticalJobHistoryDetailsResponse>, List<Map<String, dynamic>>>(criticalJobHistory, (value) => pulumi.Input.encodeList<CriticalJobHistoryDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'currentJob': pulumi.Input.mapInputValue<CurrentJobDetailsResponse, Map<String, dynamic>>(currentJob, (value) => value.toMap()),
      'eventCorrelationId': eventCorrelationId,
      'health': health,
      'healthErrors': pulumi.Input.mapInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastMigrationStatus': lastMigrationStatus,
      'lastMigrationTime': lastMigrationTime,
      'lastTestMigrationStatus': lastTestMigrationStatus,
      'lastTestMigrationTime': lastTestMigrationTime,
      'machineName': machineName,
      'migrationState': migrationState,
      'migrationStateDescription': migrationStateDescription,
      'policyFriendlyName': policyFriendlyName,
      'policyId': policyId,
      'providerSpecificDetails': ?pulumi.Input.mapOptionalInputValue<VMwareCbtMigrationDetailsResponse, Map<String, dynamic>>(providerSpecificDetails, (value) => value.toMap()),
      'recoveryServicesProviderId': recoveryServicesProviderId,
      'replicationStatus': replicationStatus,
      'testMigrateState': testMigrateState,
      'testMigrateStateDescription': testMigrateStateDescription,
    };
  }

  factory MigrationItemPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrationItemPropertiesResponse(
      allowedOperations: pulumi.Input.fromValue((map['allowedOperations'] as List).cast<String>()),
      criticalJobHistory: pulumi.Input.fromValue(pulumi.Input.decodeList<CriticalJobHistoryDetailsResponse>(map['criticalJobHistory']!, (value) => CriticalJobHistoryDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      currentJob: pulumi.Input.fromValue(CurrentJobDetailsResponse.fromMap((map['currentJob']! as Map).cast<String, dynamic>())),
      eventCorrelationId: pulumi.Input.fromValue(map['eventCorrelationId'] as String),
      health: pulumi.Input.fromValue(map['health'] as String),
      healthErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors']!, (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      lastMigrationStatus: pulumi.Input.fromValue(map['lastMigrationStatus'] as String),
      lastMigrationTime: pulumi.Input.fromValue(map['lastMigrationTime'] as String),
      lastTestMigrationStatus: pulumi.Input.fromValue(map['lastTestMigrationStatus'] as String),
      lastTestMigrationTime: pulumi.Input.fromValue(map['lastTestMigrationTime'] as String),
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      migrationState: pulumi.Input.fromValue(map['migrationState'] as String),
      migrationStateDescription: pulumi.Input.fromValue(map['migrationStateDescription'] as String),
      policyFriendlyName: pulumi.Input.fromValue(map['policyFriendlyName'] as String),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      providerSpecificDetails: (() { final guardedValue = map['providerSpecificDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMwareCbtMigrationDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recoveryServicesProviderId: pulumi.Input.fromValue(map['recoveryServicesProviderId'] as String),
      replicationStatus: pulumi.Input.fromValue(map['replicationStatus'] as String),
      testMigrateState: pulumi.Input.fromValue(map['testMigrateState'] as String),
      testMigrateStateDescription: pulumi.Input.fromValue(map['testMigrateStateDescription'] as String),
    );
  }
}

