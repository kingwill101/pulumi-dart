// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_ashared_disk_replication_details_response.dart';
import 'current_scenario_details_response.dart';
import 'health_error_response.dart';

/// Shared Disk Replication item custom data details.
class SharedDiskReplicationItemPropertiesResponse {
  /// The Current active location of the PE.
  final pulumi.Input<String>? activeLocation;
  /// The allowed operations on the Replication protected item.
  final pulumi.Input<List<String>>? allowedOperations;
  /// The current scenario.
  final pulumi.Input<CurrentScenarioDetailsResponse>? currentScenario;
  /// List of health errors.
  final pulumi.Input<List<HealthErrorResponse>>? healthErrors;
  /// The protection state of shared disk.
  final pulumi.Input<String>? protectionState;
  /// The consolidated protection health for the VM taking any issues with SRS as well as all the replication units associated with the VM's replication group into account. This is a string representation of the ProtectionHealth enumeration.
  final pulumi.Input<String>? replicationHealth;
  /// The Replication provider custom settings.
  final pulumi.Input<A2ASharedDiskReplicationDetailsResponse>? sharedDiskProviderSpecificDetails;
  /// The tfo state of shared disk.
  final pulumi.Input<String>? testFailoverState;

  /// Creates a new [SharedDiskReplicationItemPropertiesResponse].
  /// [activeLocation] The Current active location of the PE.
  /// [allowedOperations] The allowed operations on the Replication protected item.
  /// [currentScenario] The current scenario.
  /// [healthErrors] List of health errors.
  /// [protectionState] The protection state of shared disk.
  /// [replicationHealth] The consolidated protection health for the VM taking any issues with SRS as well as all the replication units associated with the VM's replication group into account. This is a string representation of the ProtectionHealth enumeration.
  /// [sharedDiskProviderSpecificDetails] The Replication provider custom settings.
  /// [testFailoverState] The tfo state of shared disk.
  const SharedDiskReplicationItemPropertiesResponse({
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
      'currentScenario': ?pulumi.Input.mapOptionalInputValue<CurrentScenarioDetailsResponse, Map<String, dynamic>>(currentScenario, (value) => value.toMap()),
      'healthErrors': ?pulumi.Input.mapOptionalInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectionState': ?protectionState,
      'replicationHealth': ?replicationHealth,
      'sharedDiskProviderSpecificDetails': ?pulumi.Input.mapOptionalInputValue<A2ASharedDiskReplicationDetailsResponse, Map<String, dynamic>>(sharedDiskProviderSpecificDetails, (value) => value.toMap()),
      'testFailoverState': ?testFailoverState,
    };
  }

  factory SharedDiskReplicationItemPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SharedDiskReplicationItemPropertiesResponse(
      activeLocation: (() { final guardedValue = map['activeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedOperations: (() { final guardedValue = map['allowedOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      currentScenario: (() { final guardedValue = map['currentScenario']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CurrentScenarioDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      healthErrors: (() { final guardedValue = map['healthErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HealthErrorResponse>(guardedValue, (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protectionState: (() { final guardedValue = map['protectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationHealth: (() { final guardedValue = map['replicationHealth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedDiskProviderSpecificDetails: (() { final guardedValue = map['sharedDiskProviderSpecificDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(A2ASharedDiskReplicationDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      testFailoverState: (() { final guardedValue = map['testFailoverState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
