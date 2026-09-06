// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Endpoint policy definitions.
class ServiceEndpointPolicyDefinitionInterfaceEndpointResponse {
  /// A description for this rule. Restricted to 140 chars.
  final pulumi.Input<String?>? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String?>? etag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// The provisioning state of the service end point policy definition. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String> provisioningState;
  /// Service endpoint name.
  final pulumi.Input<String?>? service;
  /// A list of service resources.
  final pulumi.Input<List<String>?>? serviceResources;

  /// Creates a new [ServiceEndpointPolicyDefinitionInterfaceEndpointResponse].
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the service end point policy definition. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [service] Service endpoint name.
  /// [serviceResources] A list of service resources.
  const ServiceEndpointPolicyDefinitionInterfaceEndpointResponse({
    this.description,
    this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.service,
    this.serviceResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'service': ?service,
      'serviceResources': ?serviceResources,
    };
  }

  factory ServiceEndpointPolicyDefinitionInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPolicyDefinitionInterfaceEndpointResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceResources: (() { final guardedValue = map['serviceResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
