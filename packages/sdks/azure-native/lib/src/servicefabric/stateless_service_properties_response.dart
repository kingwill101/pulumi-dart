// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_partition_scheme_response.dart';
import 'scaling_policy_response.dart';
import 'service_correlation_response.dart';
import 'service_load_metric_response.dart';
import 'service_placement_invalid_domain_policy_response.dart';

/// The properties of a stateless service resource.
class StatelessServicePropertiesResponse {
  /// A list that describes the correlation of the service with other services.
  final List<ServiceCorrelationResponse>? correlationScheme;
  /// Specifies the move cost for the service.
  final String? defaultMoveCost;
  /// The instance count.
  final int instanceCount;
  /// MinInstanceCount is the minimum number of instances that must be up to meet the EnsureAvailability safety check during operations like upgrade or deactivate node. The actual number that is used is max( MinInstanceCount, ceil( MinInstancePercentage/100.0 * InstanceCount) ). Note, if InstanceCount is set to -1, during MinInstanceCount computation -1 is first converted into the number of nodes on which the instances are allowed to be placed according to the placement constraints on the service.
  final int? minInstanceCount;
  /// MinInstancePercentage is the minimum percentage of InstanceCount that must be up to meet the EnsureAvailability safety check during operations like upgrade or deactivate node. The actual number that is used is max( MinInstanceCount, ceil( MinInstancePercentage/100.0 * InstanceCount) ). Note, if InstanceCount is set to -1, during MinInstancePercentage computation, -1 is first converted into the number of nodes on which the instances are allowed to be placed according to the placement constraints on the service.
  final int? minInstancePercentage;
  /// Describes how the service is partitioned.
  final NamedPartitionSchemeResponse partitionDescription;
  /// The placement constraints as a string. Placement constraints are boolean expressions on node properties and allow for restricting a service to particular nodes based on the service requirements. For example, to place a service on nodes where NodeType is blue specify the following: "NodeColor == blue)".
  final String? placementConstraints;
  /// The current deployment or provisioning state, which only appears in the response
  final String provisioningState;
  /// Scaling policies for this service.
  final List<ScalingPolicyResponse>? scalingPolicies;
  /// Dns name used for the service. If this is specified, then the DNS name can be used to return the IP addresses of service endpoints for application layer protocols (e.g., HTTP).
  /// When updating serviceDnsName, old name may be temporarily resolvable. However, rely on new name.
  /// When removing serviceDnsName, removed name may temporarily be resolvable. Do not rely on the name being unresolvable.
  final String? serviceDnsName;
  /// The kind of service (Stateless or Stateful).
  /// Expected value is 'Stateless'.
  final String serviceKind;
  /// The service load metrics is given as an array of ServiceLoadMetric objects.
  final List<ServiceLoadMetricResponse>? serviceLoadMetrics;
  /// The activation Mode of the service package
  final String? servicePackageActivationMode;
  /// A list that describes the correlation of the service with other services.
  final List<ServicePlacementInvalidDomainPolicyResponse>? servicePlacementPolicies;
  /// The name of the service type
  final String serviceTypeName;

  /// Creates a new [StatelessServicePropertiesResponse].
  /// [correlationScheme] A list that describes the correlation of the service with other services.
  /// [defaultMoveCost] Specifies the move cost for the service.
  /// [instanceCount] The instance count.
  /// [minInstanceCount] MinInstanceCount is the minimum number of instances that must be up to meet the EnsureAvailability safety check during operations like upgrade or deactivate node. The actual number that is used is max( MinInstanceCount, ceil( MinInstancePercentage/100.0 * InstanceCount) ). Note, if InstanceCount is set to -1, during MinInstanceCount computation -1 is first converted into the number of nodes on which the instances are allowed to be placed according to the placement constraints on the service.
  /// [minInstancePercentage] MinInstancePercentage is the minimum percentage of InstanceCount that must be up to meet the EnsureAvailability safety check during operations like upgrade or deactivate node. The actual number that is used is max( MinInstanceCount, ceil( MinInstancePercentage/100.0 * InstanceCount) ). Note, if InstanceCount is set to -1, during MinInstancePercentage computation, -1 is first converted into the number of nodes on which the instances are allowed to be placed according to the placement constraints on the service.
  /// [partitionDescription] Describes how the service is partitioned.
  /// [placementConstraints] The placement constraints as a string. Placement constraints are boolean expressions on node properties and allow for restricting a service to particular nodes based on the service requirements. For example, to place a service on nodes where NodeType is blue specify the following: "NodeColor == blue)".
  /// [provisioningState] The current deployment or provisioning state, which only appears in the response
  /// [scalingPolicies] Scaling policies for this service.
  /// [serviceDnsName] Dns name used for the service. If this is specified, then the DNS name can be used to return the IP addresses of service endpoints for application layer protocols (e.g., HTTP).
  /// [serviceKind] The kind of service (Stateless or Stateful).
  /// [serviceLoadMetrics] The service load metrics is given as an array of ServiceLoadMetric objects.
  /// [servicePackageActivationMode] The activation Mode of the service package
  /// [servicePlacementPolicies] A list that describes the correlation of the service with other services.
  /// [serviceTypeName] The name of the service type
  StatelessServicePropertiesResponse({
    this.correlationScheme,
    this.defaultMoveCost,
    required this.instanceCount,
    this.minInstanceCount,
    this.minInstancePercentage,
    required this.partitionDescription,
    this.placementConstraints,
    required this.provisioningState,
    this.scalingPolicies,
    this.serviceDnsName,
    required this.serviceKind,
    this.serviceLoadMetrics,
    this.servicePackageActivationMode,
    this.servicePlacementPolicies,
    required this.serviceTypeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'correlationScheme': ?correlationScheme == null ? null : pulumi.Input.encodeList<ServiceCorrelationResponse, Map<String, dynamic>>(correlationScheme!, (value) => value.toMap()),
      'defaultMoveCost': ?defaultMoveCost,
      'instanceCount': instanceCount,
      'minInstanceCount': ?minInstanceCount,
      'minInstancePercentage': ?minInstancePercentage,
      'partitionDescription': partitionDescription.toMap(),
      'placementConstraints': ?placementConstraints,
      'provisioningState': provisioningState,
      'scalingPolicies': ?scalingPolicies == null ? null : pulumi.Input.encodeList<ScalingPolicyResponse, Map<String, dynamic>>(scalingPolicies!, (value) => value.toMap()),
      'serviceDnsName': ?serviceDnsName,
      'serviceKind': serviceKind,
      'serviceLoadMetrics': ?serviceLoadMetrics == null ? null : pulumi.Input.encodeList<ServiceLoadMetricResponse, Map<String, dynamic>>(serviceLoadMetrics!, (value) => value.toMap()),
      'servicePackageActivationMode': ?servicePackageActivationMode,
      'servicePlacementPolicies': ?servicePlacementPolicies == null ? null : pulumi.Input.encodeList<ServicePlacementInvalidDomainPolicyResponse, Map<String, dynamic>>(servicePlacementPolicies!, (value) => value.toMap()),
      'serviceTypeName': serviceTypeName,
    };
  }

  factory StatelessServicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StatelessServicePropertiesResponse(
      correlationScheme: map['correlationScheme'] == null ? null : pulumi.Input.decodeList<ServiceCorrelationResponse>(map['correlationScheme'], (value) => ServiceCorrelationResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultMoveCost: map['defaultMoveCost'] == null ? null : map['defaultMoveCost'] as String,
      instanceCount: map['instanceCount'] as int,
      minInstanceCount: map['minInstanceCount'] == null ? null : map['minInstanceCount'] as int,
      minInstancePercentage: map['minInstancePercentage'] == null ? null : map['minInstancePercentage'] as int,
      partitionDescription: NamedPartitionSchemeResponse.fromMap((map['partitionDescription'] as Map).cast<String, dynamic>()),
      placementConstraints: map['placementConstraints'] == null ? null : map['placementConstraints'] as String,
      provisioningState: map['provisioningState'] as String,
      scalingPolicies: map['scalingPolicies'] == null ? null : pulumi.Input.decodeList<ScalingPolicyResponse>(map['scalingPolicies'], (value) => ScalingPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      serviceDnsName: map['serviceDnsName'] == null ? null : map['serviceDnsName'] as String,
      serviceKind: map['serviceKind'] as String,
      serviceLoadMetrics: map['serviceLoadMetrics'] == null ? null : pulumi.Input.decodeList<ServiceLoadMetricResponse>(map['serviceLoadMetrics'], (value) => ServiceLoadMetricResponse.fromMap((value as Map).cast<String, dynamic>())),
      servicePackageActivationMode: map['servicePackageActivationMode'] == null ? null : map['servicePackageActivationMode'] as String,
      servicePlacementPolicies: map['servicePlacementPolicies'] == null ? null : pulumi.Input.decodeList<ServicePlacementInvalidDomainPolicyResponse>(map['servicePlacementPolicies'], (value) => ServicePlacementInvalidDomainPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      serviceTypeName: map['serviceTypeName'] as String,
    );
  }
}

