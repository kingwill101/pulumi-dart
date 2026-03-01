// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_partition_scheme.dart';
import 'scaling_policy.dart';
import 'service_correlation.dart';
import 'service_load_metric.dart';
import 'service_placement_invalid_domain_policy.dart';

/// The properties of a stateful service resource.
class StatefulServiceProperties {
  /// A list that describes the correlation of the service with other services.
  final List<ServiceCorrelation>? correlationScheme;
  /// Specifies the move cost for the service.
  final String? defaultMoveCost;
  /// A flag indicating whether this is a persistent service which stores states on the local disk. If it is then the value of this property is true, if not it is false.
  final bool? hasPersistedState;
  /// The minimum replica set size as a number.
  final int? minReplicaSetSize;
  /// Describes how the service is partitioned.
  final NamedPartitionScheme partitionDescription;
  /// The placement constraints as a string. Placement constraints are boolean expressions on node properties and allow for restricting a service to particular nodes based on the service requirements. For example, to place a service on nodes where NodeType is blue specify the following: "NodeColor == blue)".
  final String? placementConstraints;
  /// The maximum duration for which a partition is allowed to be in a state of quorum loss, represented in ISO 8601 format "hh:mm:ss".
  final String? quorumLossWaitDuration;
  /// The duration between when a replica goes down and when a new replica is created, represented in ISO 8601 format "hh:mm:ss".
  final String? replicaRestartWaitDuration;
  /// Scaling policies for this service.
  final List<ScalingPolicy>? scalingPolicies;
  /// Dns name used for the service. If this is specified, then the DNS name can be used to return the IP addresses of service endpoints for application layer protocols (e.g., HTTP).
  /// When updating serviceDnsName, old name may be temporarily resolvable. However, rely on new name.
  /// When removing serviceDnsName, removed name may temporarily be resolvable. Do not rely on the name being unresolvable.
  final String? serviceDnsName;
  /// The kind of service (Stateless or Stateful).
  /// Expected value is 'Stateful'.
  final String serviceKind;
  /// The service load metrics is given as an array of ServiceLoadMetric objects.
  final List<ServiceLoadMetric>? serviceLoadMetrics;
  /// The activation Mode of the service package
  final String? servicePackageActivationMode;
  /// A list that describes the correlation of the service with other services.
  final List<ServicePlacementInvalidDomainPolicy>? servicePlacementPolicies;
  /// The duration for which replicas can stay InBuild before reporting that build is stuck, represented in ISO 8601 format "hh:mm:ss".
  final String? servicePlacementTimeLimit;
  /// The name of the service type
  final String serviceTypeName;
  /// The definition on how long StandBy replicas should be maintained before being removed, represented in ISO 8601 format "hh:mm:ss".
  final String? standByReplicaKeepDuration;
  /// The target replica set size as a number.
  final int? targetReplicaSetSize;

  /// Creates a new [StatefulServiceProperties].
  /// [correlationScheme] A list that describes the correlation of the service with other services.
  /// [defaultMoveCost] Specifies the move cost for the service.
  /// [hasPersistedState] A flag indicating whether this is a persistent service which stores states on the local disk. If it is then the value of this property is true, if not it is false.
  /// [minReplicaSetSize] The minimum replica set size as a number.
  /// [partitionDescription] Describes how the service is partitioned.
  /// [placementConstraints] The placement constraints as a string. Placement constraints are boolean expressions on node properties and allow for restricting a service to particular nodes based on the service requirements. For example, to place a service on nodes where NodeType is blue specify the following: "NodeColor == blue)".
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
  StatefulServiceProperties({
    this.correlationScheme,
    this.defaultMoveCost,
    this.hasPersistedState,
    this.minReplicaSetSize,
    required this.partitionDescription,
    this.placementConstraints,
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
      'correlationScheme': ?correlationScheme == null ? null : pulumi.Input.encodeList<ServiceCorrelation, Map<String, dynamic>>(correlationScheme!, (value) => value.toMap()),
      'defaultMoveCost': ?defaultMoveCost,
      'hasPersistedState': ?hasPersistedState,
      'minReplicaSetSize': ?minReplicaSetSize,
      'partitionDescription': partitionDescription.toMap(),
      'placementConstraints': ?placementConstraints,
      'quorumLossWaitDuration': ?quorumLossWaitDuration,
      'replicaRestartWaitDuration': ?replicaRestartWaitDuration,
      'scalingPolicies': ?scalingPolicies == null ? null : pulumi.Input.encodeList<ScalingPolicy, Map<String, dynamic>>(scalingPolicies!, (value) => value.toMap()),
      'serviceDnsName': ?serviceDnsName,
      'serviceKind': serviceKind,
      'serviceLoadMetrics': ?serviceLoadMetrics == null ? null : pulumi.Input.encodeList<ServiceLoadMetric, Map<String, dynamic>>(serviceLoadMetrics!, (value) => value.toMap()),
      'servicePackageActivationMode': ?servicePackageActivationMode,
      'servicePlacementPolicies': ?servicePlacementPolicies == null ? null : pulumi.Input.encodeList<ServicePlacementInvalidDomainPolicy, Map<String, dynamic>>(servicePlacementPolicies!, (value) => value.toMap()),
      'servicePlacementTimeLimit': ?servicePlacementTimeLimit,
      'serviceTypeName': serviceTypeName,
      'standByReplicaKeepDuration': ?standByReplicaKeepDuration,
      'targetReplicaSetSize': ?targetReplicaSetSize,
    };
  }

  factory StatefulServiceProperties.fromMap(Map<String, dynamic> map) {
    return StatefulServiceProperties(
      correlationScheme: map['correlationScheme'] == null ? null : pulumi.Input.decodeList<ServiceCorrelation>(map['correlationScheme'], (value) => ServiceCorrelation.fromMap((value as Map).cast<String, dynamic>())),
      defaultMoveCost: map['defaultMoveCost'] == null ? null : map['defaultMoveCost'] as String,
      hasPersistedState: map['hasPersistedState'] == null ? null : map['hasPersistedState'] as bool,
      minReplicaSetSize: map['minReplicaSetSize'] == null ? null : map['minReplicaSetSize'] as int,
      partitionDescription: NamedPartitionScheme.fromMap((map['partitionDescription'] as Map).cast<String, dynamic>()),
      placementConstraints: map['placementConstraints'] == null ? null : map['placementConstraints'] as String,
      quorumLossWaitDuration: map['quorumLossWaitDuration'] == null ? null : map['quorumLossWaitDuration'] as String,
      replicaRestartWaitDuration: map['replicaRestartWaitDuration'] == null ? null : map['replicaRestartWaitDuration'] as String,
      scalingPolicies: map['scalingPolicies'] == null ? null : pulumi.Input.decodeList<ScalingPolicy>(map['scalingPolicies'], (value) => ScalingPolicy.fromMap((value as Map).cast<String, dynamic>())),
      serviceDnsName: map['serviceDnsName'] == null ? null : map['serviceDnsName'] as String,
      serviceKind: map['serviceKind'] as String,
      serviceLoadMetrics: map['serviceLoadMetrics'] == null ? null : pulumi.Input.decodeList<ServiceLoadMetric>(map['serviceLoadMetrics'], (value) => ServiceLoadMetric.fromMap((value as Map).cast<String, dynamic>())),
      servicePackageActivationMode: map['servicePackageActivationMode'] == null ? null : map['servicePackageActivationMode'] as String,
      servicePlacementPolicies: map['servicePlacementPolicies'] == null ? null : pulumi.Input.decodeList<ServicePlacementInvalidDomainPolicy>(map['servicePlacementPolicies'], (value) => ServicePlacementInvalidDomainPolicy.fromMap((value as Map).cast<String, dynamic>())),
      servicePlacementTimeLimit: map['servicePlacementTimeLimit'] == null ? null : map['servicePlacementTimeLimit'] as String,
      serviceTypeName: map['serviceTypeName'] as String,
      standByReplicaKeepDuration: map['standByReplicaKeepDuration'] == null ? null : map['standByReplicaKeepDuration'] as String,
      targetReplicaSetSize: map['targetReplicaSetSize'] == null ? null : map['targetReplicaSetSize'] as int,
    );
  }
}

