// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_lb_policies_auto_capacity_drain.dart';
import 'service_lb_policies_failover_config.dart';
import 'service_lb_policies_isolation_config.dart';

/// {@template pulumi_networkservices_service_lb_policies_service_lb_policies_args_doc}
/// The set of arguments for ServiceLbPolicies.
/// {@endtemplate}
/// {@macro pulumi_networkservices_service_lb_policies_service_lb_policies_args_doc}
class ServiceLbPoliciesArgs {
  /// Option to specify if an unhealthy MIG/NEG should be considered for global load balancing and traffic routing.
  /// Structure is documented below.
  final pulumi.Input<ServiceLbPoliciesAutoCapacityDrain>? autoCapacityDrain;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Option to specify health based failover behavior. This is not related to Network load balancer FailoverPolicy.
  /// Structure is documented below.
  final pulumi.Input<ServiceLbPoliciesFailoverConfig>? failoverConfig;
  /// Configuration to provide isolation support for the associated Backend Service.
  /// Structure is documented below.
  final pulumi.Input<ServiceLbPoliciesIsolationConfig>? isolationConfig;
  /// Set of label tags associated with the ServiceLbPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  /// Possible values are: `SPRAY_TO_REGION`, `SPRAY_TO_WORLD`, `WATERFALL_BY_REGION`, `WATERFALL_BY_ZONE`.
  final pulumi.Input<String>? loadBalancingAlgorithm;
  /// The location of the service lb policy.
  final pulumi.Input<String> location;
  /// Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ServiceLbPoliciesArgs].
  /// [autoCapacityDrain] Option to specify if an unhealthy MIG/NEG should be considered for global load balancing and traffic routing.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [failoverConfig] Option to specify health based failover behavior. This is not related to Network load balancer FailoverPolicy.
  /// [isolationConfig] Configuration to provide isolation support for the associated Backend Service.
  /// [labels] Set of label tags associated with the ServiceLbPolicy resource.
  /// [loadBalancingAlgorithm] The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  /// [location] The location of the service lb policy.
  /// [name] Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  /// [project] The ID of the project in which the resource belongs.
  const ServiceLbPoliciesArgs({
    this.autoCapacityDrain,
    this.deletionPolicy,
    this.description,
    this.failoverConfig,
    this.isolationConfig,
    this.labels,
    this.loadBalancingAlgorithm,
    required this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCapacityDrain': ?pulumi.Input.mapOptionalInputValue<ServiceLbPoliciesAutoCapacityDrain, Map<String, dynamic>>(autoCapacityDrain, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'failoverConfig': ?pulumi.Input.mapOptionalInputValue<ServiceLbPoliciesFailoverConfig, Map<String, dynamic>>(failoverConfig, (value) => value.toMap()),
      'isolationConfig': ?pulumi.Input.mapOptionalInputValue<ServiceLbPoliciesIsolationConfig, Map<String, dynamic>>(isolationConfig, (value) => value.toMap()),
      'labels': ?labels,
      'loadBalancingAlgorithm': ?loadBalancingAlgorithm,
      'location': location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory ServiceLbPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return ServiceLbPoliciesArgs(
      autoCapacityDrain: (() { final guardedValue = map['autoCapacityDrain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceLbPoliciesAutoCapacityDrain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failoverConfig: (() { final guardedValue = map['failoverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceLbPoliciesFailoverConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isolationConfig: (() { final guardedValue = map['isolationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceLbPoliciesIsolationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      loadBalancingAlgorithm: (() { final guardedValue = map['loadBalancingAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
