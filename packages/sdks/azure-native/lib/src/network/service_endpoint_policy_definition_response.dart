// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Endpoint policy definitions.
class ServiceEndpointPolicyDefinitionResponse {
  /// A description for this rule. Restricted to 140 chars.
  final pulumi.Input<String?>? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// The provisioning state of the service endpoint policy definition resource.
  final pulumi.Input<String> provisioningState;
  /// Service endpoint name.
  final pulumi.Input<String?>? service;
  /// A list of service resources.
  final pulumi.Input<List<String>?>? serviceResources;
  /// The type of the resource.
  final pulumi.Input<String?>? type;

  /// Creates a new [ServiceEndpointPolicyDefinitionResponse].
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the service endpoint policy definition resource.
  /// [service] Service endpoint name.
  /// [serviceResources] A list of service resources.
  /// [type] The type of the resource.
  const ServiceEndpointPolicyDefinitionResponse({
    this.description,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.service,
    this.serviceResources,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'service': ?service,
      'serviceResources': ?serviceResources,
      'type': ?type,
    };
  }

  factory ServiceEndpointPolicyDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPolicyDefinitionResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceResources: (() { final guardedValue = map['serviceResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
