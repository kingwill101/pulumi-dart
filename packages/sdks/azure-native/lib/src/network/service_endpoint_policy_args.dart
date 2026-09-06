// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_endpoint_policy_definition.dart';

/// {@template pulumi_network_service_endpoint_policy_args_doc}
/// The set of arguments for ServiceEndpointPolicy.
/// {@endtemplate}
/// {@macro pulumi_network_service_endpoint_policy_args_doc}
class ServiceEndpointPolicyArgs {
  /// A collection of contextual service endpoint policy.
  final pulumi.Input<List<String>?>? contextualServiceEndpointPolicies;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The alias indicating if the policy belongs to a service
  final pulumi.Input<String?>? serviceAlias;
  /// A collection of service endpoint policy definitions of the service endpoint policy.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<ServiceEndpointPolicyDefinition>?>? serviceEndpointPolicyDefinitions;
  /// The name of the service endpoint policy.
  final pulumi.Input<String?>? serviceEndpointPolicyName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ServiceEndpointPolicyArgs].
  /// [contextualServiceEndpointPolicies] A collection of contextual service endpoint policy.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceAlias] The alias indicating if the policy belongs to a service
  /// [serviceEndpointPolicyDefinitions] A collection of service endpoint policy definitions of the service endpoint policy.
  /// [serviceEndpointPolicyName] The name of the service endpoint policy.
  /// [tags] Resource tags.
  const ServiceEndpointPolicyArgs({
    this.contextualServiceEndpointPolicies,
    this.id,
    this.location,
    required this.resourceGroupName,
    this.serviceAlias,
    this.serviceEndpointPolicyDefinitions,
    this.serviceEndpointPolicyName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextualServiceEndpointPolicies': ?contextualServiceEndpointPolicies,
      'id': ?id,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'serviceAlias': ?serviceAlias,
      'serviceEndpointPolicyDefinitions': ?pulumi.Input.mapOptionalInputValue<List<ServiceEndpointPolicyDefinition>, List<Map<String, dynamic>>>(serviceEndpointPolicyDefinitions, (value) => pulumi.Input.encodeList<ServiceEndpointPolicyDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceEndpointPolicyName': ?serviceEndpointPolicyName,
      'tags': ?tags,
    };
  }

  factory ServiceEndpointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPolicyArgs(
      contextualServiceEndpointPolicies: (() { final guardedValue = map['contextualServiceEndpointPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceAlias: (() { final guardedValue = map['serviceAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceEndpointPolicyDefinitions: (() { final guardedValue = map['serviceEndpointPolicyDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceEndpointPolicyDefinition>(guardedValue, (value) => ServiceEndpointPolicyDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceEndpointPolicyName: (() { final guardedValue = map['serviceEndpointPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
