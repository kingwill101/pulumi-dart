// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_partition_scheme_response.dart';
import 'scaling_policy_response.dart';
import 'service_correlation_response.dart';
import 'service_load_metric_response.dart';
import 'service_placement_invalid_domain_policy_response.dart';

/// The properties of a stateful service resource.
class StatefulServicePropertiesResponse {
  /// A list that describes the correlation of the service with other services.
  final pulumi.Input<List<ServiceCorrelationResponse>>? correlationScheme;
  /// Specifies the move cost for the service.
  final pulumi.Input<String>? defaultMoveCost;
  /// A flag indicating whether this is a persistent service which stores states on the local disk. If it is then the value of this property is true, if not it is false.
  final pulumi.Input<bool>? hasPersistedState;
  /// The minimum replica set size as a number.
  final pulumi.Input<int>? minReplicaSetSize;
  /// Describes how the service is partitioned.
  final pulumi.Input<NamedPartitionSchemeResponse> partitionDescription;
  /// The placement constraints as a string. Placement constraints are boolean expressions on node properties and allow for restricting a service to particular nodes based on the service requirements. For example, to place a service on nodes where NodeType is blue specify the following: "NodeColor == blue)".
  final pulumi.Input<String>? placementConstraints;
  /// The current deployment or provisioning state, which only appears in the response
  final pulumi.Input<String> provisioningState;
  /// The maximum duration for which a partition is allowed to be in a state of quorum loss, represented in ISO 8601 format "hh:mm:ss".
  final pulumi.Input<String>? quorumLossWaitDuration;
  /// The duration between when a replica goes down and when a new replica is created, represented in ISO 8601 format "hh:mm:ss".
  final pulumi.Input<String>? replicaRestartWaitDuration;
  /// Scaling policies for this service.
  final pulumi.Input<List<ScalingPolicyResponse>>? scalingPolicies;
  /// Dns name used for the service. If this is specified, then the DNS name can be used to return the IP addresses of service endpoints for application layer protocols (e.g., HTTP).
  /// When updating serviceDnsName, old name may be temporarily resolvable. However, rely on new name.
  /// When removing serviceDnsName, removed name may temporarily be resolvable. Do not rely on the name being unresolvable.
  final pulumi.Input<String>? serviceDnsName;
  /// The kind of service (Stateless or Stateful).
  /// Expected value is 'Stateful'.
  final pulumi.Input<String> serviceKind;
  /// The service load metrics is given as an array of ServiceLoadMetric objects.
  final pulumi.Input<List<ServiceLoadMetricResponse>>? serviceLoadMetrics;
  /// The activation Mode of the service package
  final pulumi.Input<String>? servicePackageActivationMode;
  /// A list that describes the correlation of the service with other services.
  final pulumi.Input<List<ServicePlacementInvalidDomainPolicyResponse>>? servicePlacementPolicies;
  /// The duration for which replicas can stay InBuild before reporting that build is stuck, represented in ISO 8601 format "hh:mm:ss".
  final pulumi.Input<String>? servicePlacementTimeLimit;
  /// The name of the service type
  final pulumi.Input<String> serviceTypeName;
  /// The definition on how long StandBy replicas should be maintained before being removed, represented in ISO 8601 format "hh:mm:ss".
  final pulumi.Input<String>? standByReplicaKeepDuration;
  /// The target replica set size as a number.
  final pulumi.Input<int>? targetReplicaSetSize;

  /// Creates a new [StatefulServicePropertiesResponse].
  /// [correlationScheme] A list that describes the correlation of the service with other services.
  /// [defaultMoveCost] Specifies the move cost for the service.
  /// [hasPersistedState] A flag indicating whether this is a persistent service which stores states on the local disk. If it is then the value of this property is true, if not it is false.
  /// [minReplicaSetSize] The minimum replica set size as a number.
  /// [partitionDescription] Describes how the service is partitioned.
  /// [placementConstraints] The placement constraints as a string. Placement constraints are boolean expressions on node properties and allow for restricting a service to particular nodes based on the service requirements. For example, to place a service on nodes where NodeType is blue specify the following: "NodeColor == blue)".
  /// [provisioningState] The current deployment or provisioning state, which only appears in the response
  /// [quorumLossWaitDuration] The maximum duration for which a partition is allowed to be in a state of quorum loss, represented in ISO 8601 format "hh:mm:ss".
  /// [replicaRestartWaitDuration] The duration between when a replica goes down and when a new replica is created, represented in ISO 8601 format "hh:mm:ss".
  /// [scalingPolicies] Scaling policies for this service.
  /// [serviceDnsName] Dns name used for the service. If this is specified, then the DNS name can be used to return the IP addresses of service endpoints for application layer protocols (e.g., HTTP).
  /// [serviceKind] The kind of service (Stateless or Stateful).
  /// [serviceLoadMetrics] The service load metrics is given as an array of ServiceLoadMetric objects.
  /// [servicePackageActivationMode] The activation Mode of the service package
  /// [servicePlacementPolicies] A list that describes the correlation of the service with other services.
  /// [servicePlacementTimeLimit] The duration for which replicas can stay InBuild before reporting that build is stuck, represented in ISO 8601 format "hh:mm:ss".
  /// [serviceTypeName] The name of the service type
  /// [standByReplicaKeepDuration] The definition on how long StandBy replicas should be maintained before being removed, represented in ISO 8601 format "hh:mm:ss".
  /// [targetReplicaSetSize] The target replica set size as a number.
  StatefulServicePropertiesResponse({
    this.correlationScheme,
    this.defaultMoveCost,
    this.hasPersistedState,
    this.minReplicaSetSize,
    required this.partitionDescription,
    this.placementConstraints,
    required this.provisioningState,
    this.quorumLossWaitDuration,
    this.replicaRestartWaitDuration,
    this.scalingPolicies,
    this.serviceDnsName,
    required this.serviceKind,
    this.serviceLoadMetrics,
    this.servicePackageActivationMode,
    this.servicePlacementPolicies,
    this.servicePlacementTimeLimit,
    required this.serviceTypeName,
    this.standByReplicaKeepDuration,
    this.targetReplicaSetSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'correlationScheme': ?pulumi.Input.mapOptionalInputValue<List<ServiceCorrelationResponse>, List<Map<String, dynamic>>>(correlationScheme, (value) => pulumi.Input.encodeList<ServiceCorrelationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultMoveCost': ?defaultMoveCost,
      'hasPersistedState': ?hasPersistedState,
      'minReplicaSetSize': ?minReplicaSetSize,
      'partitionDescription': pulumi.Input.mapInputValue<NamedPartitionSchemeResponse, Map<String, dynamic>>(partitionDescription, (value) => value.toMap()),
      'placementConstraints': ?placementConstraints,
      'provisioningState': provisioningState,
      'quorumLossWaitDuration': ?quorumLossWaitDuration,
      'replicaRestartWaitDuration': ?replicaRestartWaitDuration,
      'scalingPolicies': ?pulumi.Input.mapOptionalInputValue<List<ScalingPolicyResponse>, List<Map<String, dynamic>>>(scalingPolicies, (value) => pulumi.Input.encodeList<ScalingPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceDnsName': ?serviceDnsName,
      'serviceKind': serviceKind,
      'serviceLoadMetrics': ?pulumi.Input.mapOptionalInputValue<List<ServiceLoadMetricResponse>, List<Map<String, dynamic>>>(serviceLoadMetrics, (value) => pulumi.Input.encodeList<ServiceLoadMetricResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePackageActivationMode': ?servicePackageActivationMode,
      'servicePlacementPolicies': ?pulumi.Input.mapOptionalInputValue<List<ServicePlacementInvalidDomainPolicyResponse>, List<Map<String, dynamic>>>(servicePlacementPolicies, (value) => pulumi.Input.encodeList<ServicePlacementInvalidDomainPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePlacementTimeLimit': ?servicePlacementTimeLimit,
      'serviceTypeName': serviceTypeName,
      'standByReplicaKeepDuration': ?standByReplicaKeepDuration,
      'targetReplicaSetSize': ?targetReplicaSetSize,
    };
  }

  factory StatefulServicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StatefulServicePropertiesResponse(
      correlationScheme: map['correlationScheme'] == null ? null : (pulumi.Input.decodeList<ServiceCorrelationResponse>(map['correlationScheme'], (value) => ServiceCorrelationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultMoveCost: map['defaultMoveCost'] == null ? null : (map['defaultMoveCost'] as String).input(),
      hasPersistedState: map['hasPersistedState'] == null ? null : (map['hasPersistedState'] as bool).input(),
      minReplicaSetSize: map['minReplicaSetSize'] == null ? null : (map['minReplicaSetSize'] as int).input(),
      partitionDescription: (NamedPartitionSchemeResponse.fromMap((map['partitionDescription'] as Map).cast<String, dynamic>())).input(),
      placementConstraints: map['placementConstraints'] == null ? null : (map['placementConstraints'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      quorumLossWaitDuration: map['quorumLossWaitDuration'] == null ? null : (map['quorumLossWaitDuration'] as String).input(),
      replicaRestartWaitDuration: map['replicaRestartWaitDuration'] == null ? null : (map['replicaRestartWaitDuration'] as String).input(),
      scalingPolicies: map['scalingPolicies'] == null ? null : (pulumi.Input.decodeList<ScalingPolicyResponse>(map['scalingPolicies'], (value) => ScalingPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceDnsName: map['serviceDnsName'] == null ? null : (map['serviceDnsName'] as String).input(),
      serviceKind: (map['serviceKind'] as String).input(),
      serviceLoadMetrics: map['serviceLoadMetrics'] == null ? null : (pulumi.Input.decodeList<ServiceLoadMetricResponse>(map['serviceLoadMetrics'], (value) => ServiceLoadMetricResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      servicePackageActivationMode: map['servicePackageActivationMode'] == null ? null : (map['servicePackageActivationMode'] as String).input(),
      servicePlacementPolicies: map['servicePlacementPolicies'] == null ? null : (pulumi.Input.decodeList<ServicePlacementInvalidDomainPolicyResponse>(map['servicePlacementPolicies'], (value) => ServicePlacementInvalidDomainPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      servicePlacementTimeLimit: map['servicePlacementTimeLimit'] == null ? null : (map['servicePlacementTimeLimit'] as String).input(),
      serviceTypeName: (map['serviceTypeName'] as String).input(),
      standByReplicaKeepDuration: map['standByReplicaKeepDuration'] == null ? null : (map['standByReplicaKeepDuration'] as String).input(),
      targetReplicaSetSize: map['targetReplicaSetSize'] == null ? null : (map['targetReplicaSetSize'] as int).input(),
    );
  }
}

