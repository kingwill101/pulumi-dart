// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_service_endpoint_policy_definition_args_doc}
/// The set of arguments for ServiceEndpointPolicyDefinition.
/// {@endtemplate}
/// {@macro pulumi_network_service_endpoint_policy_definition_args_doc}
class ServiceEndpointPolicyDefinitionArgs {
  /// A description for this rule. Restricted to 140 chars.
  final pulumi.Input<String>? description;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Service endpoint name.
  final pulumi.Input<String>? service;
  /// The name of the service endpoint policy definition name.
  final pulumi.Input<String>? serviceEndpointPolicyDefinitionName;
  /// The name of the service endpoint policy.
  final pulumi.Input<String> serviceEndpointPolicyName;
  /// A list of service resources.
  final pulumi.Input<List<String>>? serviceResources;
  /// The type of the resource.
  final pulumi.Input<String>? type;

  /// Creates a new [ServiceEndpointPolicyDefinitionArgs].
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [resourceGroupName] The name of the resource group.
  /// [service] Service endpoint name.
  /// [serviceEndpointPolicyDefinitionName] The name of the service endpoint policy definition name.
  /// [serviceEndpointPolicyName] The name of the service endpoint policy.
  /// [serviceResources] A list of service resources.
  /// [type] The type of the resource.
  ServiceEndpointPolicyDefinitionArgs({
    this.description,
    this.id,
    this.name,
    required this.resourceGroupName,
    this.service,
    this.serviceEndpointPolicyDefinitionName,
    required this.serviceEndpointPolicyName,
    this.serviceResources,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'service': ?service,
      'serviceEndpointPolicyDefinitionName': ?serviceEndpointPolicyDefinitionName,
      'serviceEndpointPolicyName': serviceEndpointPolicyName,
      'serviceResources': ?serviceResources,
      'type': ?type,
    };
  }

  factory ServiceEndpointPolicyDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPolicyDefinitionArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      service: map['service'] == null ? null : (map['service'] as String).input(),
      serviceEndpointPolicyDefinitionName: map['serviceEndpointPolicyDefinitionName'] == null ? null : (map['serviceEndpointPolicyDefinitionName'] as String).input(),
      serviceEndpointPolicyName: (map['serviceEndpointPolicyName'] as String).input(),
      serviceResources: map['serviceResources'] == null ? null : ((map['serviceResources'] as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

