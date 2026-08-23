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
  const ServiceEndpointPolicyDefinitionArgs({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceEndpointPolicyDefinitionName: (() { final guardedValue = map['serviceEndpointPolicyDefinitionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceEndpointPolicyName: pulumi.Input.fromValue(map['serviceEndpointPolicyName'] as String),
      serviceResources: (() { final guardedValue = map['serviceResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
