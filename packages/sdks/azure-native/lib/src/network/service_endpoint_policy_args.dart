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
    pulumi.Output<List<String>>? contextualServiceEndpointPolicies,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? serviceAlias,
    pulumi.Output<List<ServiceEndpointPolicyDefinitionNetwork>>? serviceEndpointPolicyDefinitions,
    pulumi.Output<String>? serviceEndpointPolicyName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      contextualServiceEndpointPolicies = pulumi.Input.asOptionalInput<List<String>>(contextualServiceEndpointPolicies),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceAlias = pulumi.Input.asOptionalInput<String>(serviceAlias),
      serviceEndpointPolicyDefinitions = pulumi.Input.asOptionalInput<List<ServiceEndpointPolicyDefinitionNetwork>>(serviceEndpointPolicyDefinitions),
      serviceEndpointPolicyName = pulumi.Input.asOptionalInput<String>(serviceEndpointPolicyName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      contextualServiceEndpointPolicies: map['contextualServiceEndpointPolicies'] == null ? null : pulumi.Output.create<List<String>>((map['contextualServiceEndpointPolicies'] as List).cast<String>()),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceAlias: map['serviceAlias'] == null ? null : pulumi.Output.create<String>(map['serviceAlias'] as String),
      serviceEndpointPolicyDefinitions: map['serviceEndpointPolicyDefinitions'] == null ? null : pulumi.Output.create<List<ServiceEndpointPolicyDefinitionNetwork>>((map['serviceEndpointPolicyDefinitions'] as List).cast<ServiceEndpointPolicyDefinitionNetwork>()),
      serviceEndpointPolicyName: map['serviceEndpointPolicyName'] == null ? null : pulumi.Output.create<String>(map['serviceEndpointPolicyName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

