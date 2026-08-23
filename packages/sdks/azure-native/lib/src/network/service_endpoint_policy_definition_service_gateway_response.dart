// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Endpoint policy definitions.
class ServiceEndpointPolicyDefinitionServiceGatewayResponse {
  /// A description for this rule. Restricted to 140 chars.
  final pulumi.Input<String>? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the service endpoint policy definition resource.
  final pulumi.Input<String> provisioningState;
  /// Service endpoint name.
  final pulumi.Input<String>? service;
  /// A list of service resources.
  final pulumi.Input<List<String>>? serviceResources;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceEndpointPolicyDefinitionServiceGatewayResponse].
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the resource.
  /// [provisioningState] The provisioning state of the service endpoint policy definition resource.
  /// [service] Service endpoint name.
  /// [serviceResources] A list of service resources.
  /// [type] Resource type.
  const ServiceEndpointPolicyDefinitionServiceGatewayResponse({
    this.description,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.service,
    this.serviceResources,
    required this.type,
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
      'type': type,
    };
  }

  factory ServiceEndpointPolicyDefinitionServiceGatewayResponse.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPolicyDefinitionServiceGatewayResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceResources: (() { final guardedValue = map['serviceResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
