// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';

/// Protection container mapping properties.
class ProtectionContainerMappingPropertiesResponse {
  /// Health of pairing.
  final pulumi.Input<String?>? health;
  /// Health error.
  final pulumi.Input<List<HealthErrorResponse>?>? healthErrorDetails;
  /// Friendly name of replication policy.
  final pulumi.Input<String?>? policyFriendlyName;
  /// Policy ARM Id.
  final pulumi.Input<String?>? policyId;
  /// Provider specific provider details.
  final pulumi.Input<dynamic>? providerSpecificDetails;
  /// Friendly name of source fabric.
  final pulumi.Input<String?>? sourceFabricFriendlyName;
  /// Friendly name of source protection container.
  final pulumi.Input<String?>? sourceProtectionContainerFriendlyName;
  /// Association Status.
  final pulumi.Input<String?>? state;
  /// Friendly name of target fabric.
  final pulumi.Input<String?>? targetFabricFriendlyName;
  /// Friendly name of paired container.
  final pulumi.Input<String?>? targetProtectionContainerFriendlyName;
  /// Paired protection container ARM ID.
  final pulumi.Input<String?>? targetProtectionContainerId;

  /// Creates a new [ProtectionContainerMappingPropertiesResponse].
  /// [health] Health of pairing.
  /// [healthErrorDetails] Health error.
  /// [policyFriendlyName] Friendly name of replication policy.
  /// [policyId] Policy ARM Id.
  /// [providerSpecificDetails] Provider specific provider details.
  /// [sourceFabricFriendlyName] Friendly name of source fabric.
  /// [sourceProtectionContainerFriendlyName] Friendly name of source protection container.
  /// [state] Association Status.
  /// [targetFabricFriendlyName] Friendly name of target fabric.
  /// [targetProtectionContainerFriendlyName] Friendly name of paired container.
  /// [targetProtectionContainerId] Paired protection container ARM ID.
  const ProtectionContainerMappingPropertiesResponse({
    this.health,
    this.healthErrorDetails,
    this.policyFriendlyName,
    this.policyId,
    this.providerSpecificDetails,
    this.sourceFabricFriendlyName,
    this.sourceProtectionContainerFriendlyName,
    this.state,
    this.targetFabricFriendlyName,
    this.targetProtectionContainerFriendlyName,
    this.targetProtectionContainerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'health': ?health,
      'healthErrorDetails': ?pulumi.Input.mapOptionalInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(healthErrorDetails, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyFriendlyName': ?policyFriendlyName,
      'policyId': ?policyId,
      'providerSpecificDetails': ?providerSpecificDetails,
      'sourceFabricFriendlyName': ?sourceFabricFriendlyName,
      'sourceProtectionContainerFriendlyName': ?sourceProtectionContainerFriendlyName,
      'state': ?state,
      'targetFabricFriendlyName': ?targetFabricFriendlyName,
      'targetProtectionContainerFriendlyName': ?targetProtectionContainerFriendlyName,
      'targetProtectionContainerId': ?targetProtectionContainerId,
    };
  }

  factory ProtectionContainerMappingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProtectionContainerMappingPropertiesResponse(
      health: (() { final guardedValue = map['health']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthErrorDetails: (() { final guardedValue = map['healthErrorDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HealthErrorResponse>(guardedValue, (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyFriendlyName: (() { final guardedValue = map['policyFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerSpecificDetails: (() { final guardedValue = map['providerSpecificDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceFabricFriendlyName: (() { final guardedValue = map['sourceFabricFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceProtectionContainerFriendlyName: (() { final guardedValue = map['sourceProtectionContainerFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetFabricFriendlyName: (() { final guardedValue = map['targetFabricFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetProtectionContainerFriendlyName: (() { final guardedValue = map['targetProtectionContainerFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetProtectionContainerId: (() { final guardedValue = map['targetProtectionContainerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
