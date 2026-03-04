// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_partition_scheme.dart';
import 'scaling_policy.dart';
import 'service_correlation.dart';
import 'service_load_metric.dart';
import 'service_placement_invalid_domain_policy.dart';

/// The properties of a stateless service resource.
class StatelessServiceProperties {
  /// A list that describes the correlation of the service with other services.
  final pulumi.Input<List<ServiceCorrelation>>? correlationScheme;

  /// Specifies the move cost for the service.
  final pulumi.Input<String>? defaultMoveCost;

  /// The instance count.
  final pulumi.Input<int> instanceCount;

  /// MinInstanceCount is the minimum number of instances that must be up to meet the EnsureAvailability safety check during operations like upgrade or deactivate node. The actual number that is used is max( MinInstanceCount, ceil( MinInstancePercentage/100.0 * InstanceCount) ). Note, if InstanceCount is set to -1, during MinInstanceCount computation -1 is first converted into the number of nodes on which the instances are allowed to be placed according to the placement constraints on the service.
  final pulumi.Input<int>? minInstanceCount;

  /// MinInstancePercentage is the minimum percentage of InstanceCount that must be up to meet the EnsureAvailability safety check during operations like upgrade or deactivate node. The actual number that is used is max( MinInstanceCount, ceil( MinInstancePercentage/100.0 * InstanceCount) ). Note, if InstanceCount is set to -1, during MinInstancePercentage computation, -1 is first converted into the number of nodes on which the instances are allowed to be placed according to the placement constraints on the service.
  final pulumi.Input<int>? minInstancePercentage;

  /// Describes how the service is partitioned.
  final pulumi.Input<NamedPartitionScheme> partitionDescription;

  /// The placement constraints as a string. Placement constraints are boolean expressions on node properties and allow for restricting a service to particular nodes based on the service requirements. For example, to place a service on nodes where NodeType is blue specify the following: "NodeColor == blue)".
  final pulumi.Input<String>? placementConstraints;

  /// Scaling policies for this service.
  final pulumi.Input<List<ScalingPolicy>>? scalingPolicies;

  /// Dns name used for the service. If this is specified, then the DNS name can be used to return the IP addresses of service endpoints for application layer protocols (e.g., HTTP).
  /// When updating serviceDnsName, old name may be temporarily resolvable. However, rely on new name.
  /// When removing serviceDnsName, removed name may temporarily be resolvable. Do not rely on the name being unresolvable.
  final pulumi.Input<String>? serviceDnsName;

  /// The kind of service (Stateless or Stateful).
  /// Expected value is 'Stateless'.
  final pulumi.Input<String> serviceKind;

  /// The service load metrics is given as an array of ServiceLoadMetric objects.
  final pulumi.Input<List<ServiceLoadMetric>>? serviceLoadMetrics;

  /// The activation Mode of the service package
  final pulumi.Input<String>? servicePackageActivationMode;

  /// A list that describes the correlation of the service with other services.
  final pulumi.Input<List<ServicePlacementInvalidDomainPolicy>>?
  servicePlacementPolicies;

  /// The name of the service type
  final pulumi.Input<String> serviceTypeName;

  /// Creates a new [StatelessServiceProperties].
  /// [correlationScheme] A list that describes the correlation of the service with other services.
  /// [defaultMoveCost] Specifies the move cost for the service.
  /// [instanceCount] The instance count.
  /// [minInstanceCount] MinInstanceCount is the minimum number of instances that must be up to meet the EnsureAvailability safety check during operations like upgrade or deactivate node. The actual number that is used is max( MinInstanceCount, ceil( MinInstancePercentage/100.0 * InstanceCount) ). Note, if InstanceCount is set to -1, during MinInstanceCount computation -1 is first converted into the number of nodes on which the instances are allowed to be placed according to the placement constraints on the service.
  /// [minInstancePercentage] MinInstancePercentage is the minimum percentage of InstanceCount that must be up to meet the EnsureAvailability safety check during operations like upgrade or deactivate node. The actual number that is used is max( MinInstanceCount, ceil( MinInstancePercentage/100.0 * InstanceCount) ). Note, if InstanceCount is set to -1, during MinInstancePercentage computation, -1 is first converted into the number of nodes on which the instances are allowed to be placed according to the placement constraints on the service.
  /// [partitionDescription] Describes how the service is partitioned.
  /// [placementConstraints] The placement constraints as a string. Placement constraints are boolean expressions on node properties and allow for restricting a service to particular nodes based on the service requirements. For example, to place a service on nodes where NodeType is blue specify the following: "NodeColor == blue)".
  /// [scalingPolicies] Scaling policies for this service.
  /// [serviceDnsName] Dns name used for the service. If this is specified, then the DNS name can be used to return the IP addresses of service endpoints for application layer protocols (e.g., HTTP).
  /// [serviceKind] The kind of service (Stateless or Stateful).
  /// [serviceLoadMetrics] The service load metrics is given as an array of ServiceLoadMetric objects.
  /// [servicePackageActivationMode] The activation Mode of the service package
  /// [servicePlacementPolicies] A list that describes the correlation of the service with other services.
  /// [serviceTypeName] The name of the service type
  StatelessServiceProperties({
    this.correlationScheme,
    this.defaultMoveCost,
    required this.instanceCount,
    this.minInstanceCount,
    this.minInstancePercentage,
    required this.partitionDescription,
    this.placementConstraints,
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
      'correlationScheme':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceCorrelation>,
            List<Map<String, dynamic>>
          >(
            correlationScheme,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceCorrelation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'defaultMoveCost': ?defaultMoveCost,
      'instanceCount': instanceCount,
      'minInstanceCount': ?minInstanceCount,
      'minInstancePercentage': ?minInstancePercentage,
      'partitionDescription':
          pulumi.Input.mapInputValue<
            NamedPartitionScheme,
            Map<String, dynamic>
          >(partitionDescription, (value) => value.toMap()),
      'placementConstraints': ?placementConstraints,
      'scalingPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<ScalingPolicy>,
            List<Map<String, dynamic>>
          >(
            scalingPolicies,
            (value) =>
                pulumi.Input.encodeList<ScalingPolicy, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'serviceDnsName': ?serviceDnsName,
      'serviceKind': serviceKind,
      'serviceLoadMetrics':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceLoadMetric>,
            List<Map<String, dynamic>>
          >(
            serviceLoadMetrics,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceLoadMetric,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'servicePackageActivationMode': ?servicePackageActivationMode,
      'servicePlacementPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServicePlacementInvalidDomainPolicy>,
            List<Map<String, dynamic>>
          >(
            servicePlacementPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  ServicePlacementInvalidDomainPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'serviceTypeName': serviceTypeName,
    };
  }

  factory StatelessServiceProperties.fromMap(Map<String, dynamic> map) {
    return StatelessServiceProperties(
      correlationScheme: (() {
        final guardedValue = map['correlationScheme'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ServiceCorrelation>(
            guardedValue,
            (value) => ServiceCorrelation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      defaultMoveCost: (() {
        final guardedValue = map['defaultMoveCost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceCount: pulumi.Input.fromValue(map['instanceCount'] as int),
      minInstanceCount: (() {
        final guardedValue = map['minInstanceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minInstancePercentage: (() {
        final guardedValue = map['minInstancePercentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      partitionDescription: pulumi.Input.fromValue(
        NamedPartitionScheme.fromMap(
          (map['partitionDescription']! as Map).cast<String, dynamic>(),
        ),
      ),
      placementConstraints: (() {
        final guardedValue = map['placementConstraints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scalingPolicies: (() {
        final guardedValue = map['scalingPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ScalingPolicy>(
            guardedValue,
            (value) =>
                ScalingPolicy.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      serviceDnsName: (() {
        final guardedValue = map['serviceDnsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceKind: pulumi.Input.fromValue(map['serviceKind'] as String),
      serviceLoadMetrics: (() {
        final guardedValue = map['serviceLoadMetrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ServiceLoadMetric>(
            guardedValue,
            (value) => ServiceLoadMetric.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      servicePackageActivationMode: (() {
        final guardedValue = map['servicePackageActivationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      servicePlacementPolicies: (() {
        final guardedValue = map['servicePlacementPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ServicePlacementInvalidDomainPolicy>(
            guardedValue,
            (value) => ServicePlacementInvalidDomainPolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      serviceTypeName: pulumi.Input.fromValue(map['serviceTypeName'] as String),
    );
  }
}
