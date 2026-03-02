// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_aprotection_container_mapping_details_response.dart';
import 'health_error_response.dart';

/// Protection container mapping properties.
class ProtectionContainerMappingPropertiesResponse {
  /// Health of pairing.
  final pulumi.Input<String>? health;
  /// Health error.
  final pulumi.Input<List<HealthErrorResponse>>? healthErrorDetails;
  /// Friendly name of replication policy.
  final pulumi.Input<String>? policyFriendlyName;
  /// Policy ARM Id.
  final pulumi.Input<String>? policyId;
  /// Provider specific provider details.
  final pulumi.Input<A2AProtectionContainerMappingDetailsResponse>? providerSpecificDetails;
  /// Friendly name of source fabric.
  final pulumi.Input<String>? sourceFabricFriendlyName;
  /// Friendly name of source protection container.
  final pulumi.Input<String>? sourceProtectionContainerFriendlyName;
  /// Association Status.
  final pulumi.Input<String>? state;
  /// Friendly name of target fabric.
  final pulumi.Input<String>? targetFabricFriendlyName;
  /// Friendly name of paired container.
  final pulumi.Input<String>? targetProtectionContainerFriendlyName;
  /// Paired protection container ARM ID.
  final pulumi.Input<String>? targetProtectionContainerId;

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
  ProtectionContainerMappingPropertiesResponse({
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
      'providerSpecificDetails': ?pulumi.Input.mapOptionalInputValue<A2AProtectionContainerMappingDetailsResponse, Map<String, dynamic>>(providerSpecificDetails, (value) => value.toMap()),
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
      health: map['health'] == null ? null : (map['health'] as String).input(),
      healthErrorDetails: map['healthErrorDetails'] == null ? null : (pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrorDetails'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policyFriendlyName: map['policyFriendlyName'] == null ? null : (map['policyFriendlyName'] as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId'] as String).input(),
      providerSpecificDetails: map['providerSpecificDetails'] == null ? null : (A2AProtectionContainerMappingDetailsResponse.fromMap((map['providerSpecificDetails'] as Map).cast<String, dynamic>())).input(),
      sourceFabricFriendlyName: map['sourceFabricFriendlyName'] == null ? null : (map['sourceFabricFriendlyName'] as String).input(),
      sourceProtectionContainerFriendlyName: map['sourceProtectionContainerFriendlyName'] == null ? null : (map['sourceProtectionContainerFriendlyName'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      targetFabricFriendlyName: map['targetFabricFriendlyName'] == null ? null : (map['targetFabricFriendlyName'] as String).input(),
      targetProtectionContainerFriendlyName: map['targetProtectionContainerFriendlyName'] == null ? null : (map['targetProtectionContainerFriendlyName'] as String).input(),
      targetProtectionContainerId: map['targetProtectionContainerId'] == null ? null : (map['targetProtectionContainerId'] as String).input(),
    );
  }
}

