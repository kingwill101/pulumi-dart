// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_ashared_disk_replication_details.dart';
import 'current_scenario_details.dart';
import 'health_error.dart';

/// Shared Disk Replication item custom data details.
class SharedDiskReplicationItemProperties {
  /// The Current active location of the PE.
  final pulumi.Input<String>? activeLocation;
  /// The allowed operations on the Replication protected item.
  final pulumi.Input<List<String>>? allowedOperations;
  /// The current scenario.
  final pulumi.Input<CurrentScenarioDetails>? currentScenario;
  /// List of health errors.
  final pulumi.Input<List<HealthError>>? healthErrors;
  /// The protection state of shared disk.
  final pulumi.Input<String>? protectionState;
  /// The consolidated protection health for the VM taking any issues with SRS as well as all the replication units associated with the VM's replication group into account. This is a string representation of the ProtectionHealth enumeration.
  final pulumi.Input<String>? replicationHealth;
  /// The Replication provider custom settings.
  final pulumi.Input<A2ASharedDiskReplicationDetails>? sharedDiskProviderSpecificDetails;
  /// The tfo state of shared disk.
  final pulumi.Input<String>? testFailoverState;

  /// Creates a new [SharedDiskReplicationItemProperties].
  /// [activeLocation] The Current active location of the PE.
  /// [allowedOperations] The allowed operations on the Replication protected item.
  /// [currentScenario] The current scenario.
  /// [healthErrors] List of health errors.
  /// [protectionState] The protection state of shared disk.
  /// [replicationHealth] The consolidated protection health for the VM taking any issues with SRS as well as all the replication units associated with the VM's replication group into account. This is a string representation of the ProtectionHealth enumeration.
  /// [sharedDiskProviderSpecificDetails] The Replication provider custom settings.
  /// [testFailoverState] The tfo state of shared disk.
  SharedDiskReplicationItemProperties({
    this.activeLocation,
    this.allowedOperations,
    this.currentScenario,
    this.healthErrors,
    this.protectionState,
    this.replicationHealth,
    this.sharedDiskProviderSpecificDetails,
    this.testFailoverState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeLocation': ?activeLocation,
      'allowedOperations': ?allowedOperations,
      'currentScenario': ?pulumi.Input.mapOptionalInputValue<CurrentScenarioDetails, Map<String, dynamic>>(currentScenario, (value) => value.toMap()),
      'healthErrors': ?pulumi.Input.mapOptionalInputValue<List<HealthError>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectionState': ?protectionState,
      'replicationHealth': ?replicationHealth,
      'sharedDiskProviderSpecificDetails': ?pulumi.Input.mapOptionalInputValue<A2ASharedDiskReplicationDetails, Map<String, dynamic>>(sharedDiskProviderSpecificDetails, (value) => value.toMap()),
      'testFailoverState': ?testFailoverState,
    };
  }

  factory SharedDiskReplicationItemProperties.fromMap(Map<String, dynamic> map) {
    return SharedDiskReplicationItemProperties(
      activeLocation: map['activeLocation'] == null ? null : (map['activeLocation'] as String).input(),
      allowedOperations: map['allowedOperations'] == null ? null : ((map['allowedOperations'] as List).cast<String>()).input(),
      currentScenario: map['currentScenario'] == null ? null : (CurrentScenarioDetails.fromMap((map['currentScenario'] as Map).cast<String, dynamic>())).input(),
      healthErrors: map['healthErrors'] == null ? null : (pulumi.Input.decodeList<HealthError>(map['healthErrors'], (value) => HealthError.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protectionState: map['protectionState'] == null ? null : (map['protectionState'] as String).input(),
      replicationHealth: map['replicationHealth'] == null ? null : (map['replicationHealth'] as String).input(),
      sharedDiskProviderSpecificDetails: map['sharedDiskProviderSpecificDetails'] == null ? null : (A2ASharedDiskReplicationDetails.fromMap((map['sharedDiskProviderSpecificDetails'] as Map).cast<String, dynamic>())).input(),
      testFailoverState: map['testFailoverState'] == null ? null : (map['testFailoverState'] as String).input(),
    );
  }
}

