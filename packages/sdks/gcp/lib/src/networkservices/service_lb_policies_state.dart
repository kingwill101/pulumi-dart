// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_lb_policies_auto_capacity_drain.dart';
import 'service_lb_policies_failover_config.dart';
import 'service_lb_policies_isolation_config.dart';

/// Input properties used for looking up and filtering ServiceLbPolicies resources.
class ServiceLbPoliciesState {
  /// Option to specify if an unhealthy MIG/NEG should be considered for global load balancing and traffic routing.
  /// Structure is documented below.
  final pulumi.Input<ServiceLbPoliciesAutoCapacityDrain>? autoCapacityDrain;

  /// Time the ServiceLbPolicy was created in UTC.
  final pulumi.Input<String>? createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// Option to specify health based failover behavior. This is not related to Network load balancer FailoverPolicy.
  /// Structure is documented below.
  final pulumi.Input<ServiceLbPoliciesFailoverConfig>? failoverConfig;

  /// Configuration to provide isolation support for the associated Backend Service.
  /// Structure is documented below.
  final pulumi.Input<ServiceLbPoliciesIsolationConfig>? isolationConfig;

  /// Set of label tags associated with the ServiceLbPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  /// Possible values are: `SPRAY_TO_REGION`, `SPRAY_TO_WORLD`, `WATERFALL_BY_REGION`, `WATERFALL_BY_ZONE`.
  final pulumi.Input<String>? loadBalancingAlgorithm;

  /// The location of the service lb policy.
  final pulumi.Input<String>? location;

  /// Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Time the ServiceLbPolicy was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ServiceLbPoliciesState].
  /// [autoCapacityDrain] Option to specify if an unhealthy MIG/NEG should be considered for global load balancing and traffic routing.
  /// [createTime] Time the ServiceLbPolicy was created in UTC.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [failoverConfig] Option to specify health based failover behavior. This is not related to Network load balancer FailoverPolicy.
  /// [isolationConfig] Configuration to provide isolation support for the associated Backend Service.
  /// [labels] Set of label tags associated with the ServiceLbPolicy resource.
  /// [loadBalancingAlgorithm] The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  /// [location] The location of the service lb policy.
  /// [name] Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] Time the ServiceLbPolicy was updated in UTC.
  ServiceLbPoliciesState({
    this.autoCapacityDrain,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.failoverConfig,
    this.isolationConfig,
    this.labels,
    this.loadBalancingAlgorithm,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCapacityDrain':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceLbPoliciesAutoCapacityDrain,
            Map<String, dynamic>
          >(autoCapacityDrain, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'failoverConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceLbPoliciesFailoverConfig,
            Map<String, dynamic>
          >(failoverConfig, (value) => value.toMap()),
      'isolationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceLbPoliciesIsolationConfig,
            Map<String, dynamic>
          >(isolationConfig, (value) => value.toMap()),
      'labels': ?labels,
      'loadBalancingAlgorithm': ?loadBalancingAlgorithm,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory ServiceLbPoliciesState.fromMap(Map<String, dynamic> map) {
    return ServiceLbPoliciesState(
      autoCapacityDrain: (() {
        final guardedValue = map['autoCapacityDrain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceLbPoliciesAutoCapacityDrain.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      failoverConfig: (() {
        final guardedValue = map['failoverConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceLbPoliciesFailoverConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      isolationConfig: (() {
        final guardedValue = map['isolationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceLbPoliciesIsolationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      loadBalancingAlgorithm: (() {
        final guardedValue = map['loadBalancingAlgorithm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
