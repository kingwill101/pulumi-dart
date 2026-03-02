// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_endpoint_policy_definition_network.dart';

/// {@template pulumi_network_service_endpoint_policy_args_doc}
/// The set of arguments for ServiceEndpointPolicy.
/// {@endtemplate}
/// {@macro pulumi_network_service_endpoint_policy_args_doc}
class ServiceEndpointPolicyArgs {
  /// A collection of contextual service endpoint policy.
  final pulumi.Input<List<String>>? contextualServiceEndpointPolicies;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The alias indicating if the policy belongs to a service
  final pulumi.Input<String>? serviceAlias;
  /// A collection of service endpoint policy definitions of the service endpoint policy.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<ServiceEndpointPolicyDefinitionNetwork>>? serviceEndpointPolicyDefinitions;
  /// The name of the service endpoint policy.
  final pulumi.Input<String>? serviceEndpointPolicyName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceEndpointPolicyArgs].
  /// [contextualServiceEndpointPolicies] A collection of contextual service endpoint policy.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceAlias] The alias indicating if the policy belongs to a service
  /// [serviceEndpointPolicyDefinitions] A collection of service endpoint policy definitions of the service endpoint policy.
  /// [serviceEndpointPolicyName] The name of the service endpoint policy.
  /// [tags] Resource tags.
  ServiceEndpointPolicyArgs({
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
      'serviceEndpointPolicyDefinitions': ?serviceEndpointPolicyDefinitions,
      'serviceEndpointPolicyName': ?serviceEndpointPolicyName,
      'tags': ?tags,
    };
  }

  factory ServiceEndpointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPolicyArgs(
      contextualServiceEndpointPolicies: map['contextualServiceEndpointPolicies'] == null ? null : ((map['contextualServiceEndpointPolicies']! as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceAlias: map['serviceAlias'] == null ? null : (map['serviceAlias']! as String).input(),
      serviceEndpointPolicyDefinitions: map['serviceEndpointPolicyDefinitions'] == null ? null : ((map['serviceEndpointPolicyDefinitions']! as List).cast<ServiceEndpointPolicyDefinitionNetwork>()).input(),
      serviceEndpointPolicyName: map['serviceEndpointPolicyName'] == null ? null : (map['serviceEndpointPolicyName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

