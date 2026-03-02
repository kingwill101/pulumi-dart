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
  final pulumi.Input<List<ServiceCorrelationResponse>>? correlationScheme;
  /// Specifies the move cost for the service.
  final pulumi.Input<String>? defaultMoveCost;
  /// The instance count.
  final pulumi.Input<int> instanceCount;
  /// MinInstanceCount is the minimum number of instances that must be up to meet the EnsureAvailability safety check during operations like upgrade or deactivate node. The actual number that is used is max( MinInstanceCount, ceil( MinInstancePercentage/100.0 * InstanceCount) ). Note, if InstanceCount is set to -1, during MinInstanceCount computation -1 is first converted into the number of nodes on which the instances are allowed to be placed according to the placement constraints on the service.
  final pulumi.Input<int>? minInstanceCount;
  /// MinInstancePercentage is the minimum percentage of InstanceCount that must be up to meet the EnsureAvailability safety check during operations like upgrade or deactivate node. The actual number that is used is max( MinInstanceCount, ceil( MinInstancePercentage/100.0 * InstanceCount) ). Note, if InstanceCount is set to -1, during MinInstancePercentage computation, -1 is first converted into the number of nodes on which the instances are allowed to be placed according to the placement constraints on the service.
  final pulumi.Input<int>? minInstancePercentage;
  /// Describes how the service is partitioned.
  final pulumi.Input<NamedPartitionSchemeResponse> partitionDescription;
  /// The placement constraints as a string. Placement constraints are boolean expressions on node properties and allow for restricting a service to particular nodes based on the service requirements. For example, to place a service on nodes where NodeType is blue specify the following: "NodeColor == blue)".
  final pulumi.Input<String>? placementConstraints;
  /// The current deployment or provisioning state, which only appears in the response
  final pulumi.Input<String> provisioningState;
  /// Scaling policies for this service.
  final pulumi.Input<List<ScalingPolicyResponse>>? scalingPolicies;
  /// Dns name used for the service. If this is specified, then the DNS name can be used to return the IP addresses of service endpoints for application layer protocols (e.g., HTTP).
  /// When updating serviceDnsName, old name may be temporarily resolvable. However, rely on new name.
  /// When removing serviceDnsName, removed name may temporarily be resolvable. Do not rely on the name being unresolvable.
  final pulumi.Input<String>? serviceDnsName;
  /// The kind of service (Stateless or Stateful).
  /// Expected value is 'Stateless'.
  final pulumi.Input<String> serviceKind;
  /// The service load metrics is given as an array of ServiceLoadMetric objects.
  final pulumi.Input<List<ServiceLoadMetricResponse>>? serviceLoadMetrics;
  /// The activation Mode of the service package
  final pulumi.Input<String>? servicePackageActivationMode;
  /// A list that describes the correlation of the service with other services.
  final pulumi.Input<List<ServicePlacementInvalidDomainPolicyResponse>>? servicePlacementPolicies;
  /// The name of the service type
  final pulumi.Input<String> serviceTypeName;

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
      'correlationScheme': ?pulumi.Input.mapOptionalInputValue<List<ServiceCorrelationResponse>, List<Map<String, dynamic>>>(correlationScheme, (value) => pulumi.Input.encodeList<ServiceCorrelationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultMoveCost': ?defaultMoveCost,
      'instanceCount': instanceCount,
      'minInstanceCount': ?minInstanceCount,
      'minInstancePercentage': ?minInstancePercentage,
      'partitionDescription': pulumi.Input.mapInputValue<NamedPartitionSchemeResponse, Map<String, dynamic>>(partitionDescription, (value) => value.toMap()),
      'placementConstraints': ?placementConstraints,
      'provisioningState': provisioningState,
      'scalingPolicies': ?pulumi.Input.mapOptionalInputValue<List<ScalingPolicyResponse>, List<Map<String, dynamic>>>(scalingPolicies, (value) => pulumi.Input.encodeList<ScalingPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceDnsName': ?serviceDnsName,
      'serviceKind': serviceKind,
      'serviceLoadMetrics': ?pulumi.Input.mapOptionalInputValue<List<ServiceLoadMetricResponse>, List<Map<String, dynamic>>>(serviceLoadMetrics, (value) => pulumi.Input.encodeList<ServiceLoadMetricResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePackageActivationMode': ?servicePackageActivationMode,
      'servicePlacementPolicies': ?pulumi.Input.mapOptionalInputValue<List<ServicePlacementInvalidDomainPolicyResponse>, List<Map<String, dynamic>>>(servicePlacementPolicies, (value) => pulumi.Input.encodeList<ServicePlacementInvalidDomainPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceTypeName': serviceTypeName,
    };
  }

  factory StatelessServicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StatelessServicePropertiesResponse(
      correlationScheme: map['correlationScheme'] == null ? null : (pulumi.Input.decodeList<ServiceCorrelationResponse>(map['correlationScheme']!, (value) => ServiceCorrelationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultMoveCost: map['defaultMoveCost'] == null ? null : (map['defaultMoveCost']! as String).input(),
      instanceCount: (map['instanceCount'] as int).input(),
      minInstanceCount: map['minInstanceCount'] == null ? null : (map['minInstanceCount']! as int).input(),
      minInstancePercentage: map['minInstancePercentage'] == null ? null : (map['minInstancePercentage']! as int).input(),
      partitionDescription: (NamedPartitionSchemeResponse.fromMap((map['partitionDescription'] as Map).cast<String, dynamic>())).input(),
      placementConstraints: map['placementConstraints'] == null ? null : (map['placementConstraints']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      scalingPolicies: map['scalingPolicies'] == null ? null : (pulumi.Input.decodeList<ScalingPolicyResponse>(map['scalingPolicies']!, (value) => ScalingPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceDnsName: map['serviceDnsName'] == null ? null : (map['serviceDnsName']! as String).input(),
      serviceKind: (map['serviceKind'] as String).input(),
      serviceLoadMetrics: map['serviceLoadMetrics'] == null ? null : (pulumi.Input.decodeList<ServiceLoadMetricResponse>(map['serviceLoadMetrics']!, (value) => ServiceLoadMetricResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      servicePackageActivationMode: map['servicePackageActivationMode'] == null ? null : (map['servicePackageActivationMode']! as String).input(),
      servicePlacementPolicies: map['servicePlacementPolicies'] == null ? null : (pulumi.Input.decodeList<ServicePlacementInvalidDomainPolicyResponse>(map['servicePlacementPolicies']!, (value) => ServicePlacementInvalidDomainPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceTypeName: (map['serviceTypeName'] as String).input(),
    );
  }
}

