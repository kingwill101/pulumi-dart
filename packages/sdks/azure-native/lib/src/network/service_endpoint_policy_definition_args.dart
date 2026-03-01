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
    pulumi.Output<String>? description,
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? service,
    pulumi.Output<String>? serviceEndpointPolicyDefinitionName,
    required pulumi.Output<String> serviceEndpointPolicyName,
    pulumi.Output<List<String>>? serviceResources,
    pulumi.Output<String>? type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      service = pulumi.Input.asOptionalInput<String>(service),
      serviceEndpointPolicyDefinitionName = pulumi.Input.asOptionalInput<String>(serviceEndpointPolicyDefinitionName),
      serviceEndpointPolicyName = pulumi.Input.asInput<String>(serviceEndpointPolicyName),
      serviceResources = pulumi.Input.asOptionalInput<List<String>>(serviceResources),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      service: map['service'] == null ? null : pulumi.Output.create<String>(map['service'] as String),
      serviceEndpointPolicyDefinitionName: map['serviceEndpointPolicyDefinitionName'] == null ? null : pulumi.Output.create<String>(map['serviceEndpointPolicyDefinitionName'] as String),
      serviceEndpointPolicyName: pulumi.Output.create<String>(map['serviceEndpointPolicyName'] as String),
      serviceResources: map['serviceResources'] == null ? null : pulumi.Output.create<List<String>>((map['serviceResources'] as List).cast<String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

