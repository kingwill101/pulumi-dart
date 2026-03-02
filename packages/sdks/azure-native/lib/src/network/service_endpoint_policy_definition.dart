// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Endpoint policy definitions.
class ServiceEndpointPolicyDefinition {
  /// A description for this rule. Restricted to 140 chars.
  final pulumi.Input<String>? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Service endpoint name.
  final pulumi.Input<String>? service;
  /// A list of service resources.
  final pulumi.Input<List<String>>? serviceResources;
  /// The type of the resource.
  final pulumi.Input<String>? type;

  /// Creates a new [ServiceEndpointPolicyDefinition].
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [service] Service endpoint name.
  /// [serviceResources] A list of service resources.
  /// [type] The type of the resource.
  ServiceEndpointPolicyDefinition({
    this.description,
    this.etag,
    this.id,
    this.name,
    this.service,
    this.serviceResources,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'service': ?service,
      'serviceResources': ?serviceResources,
      'type': ?type,
    };
  }

  factory ServiceEndpointPolicyDefinition.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPolicyDefinition(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
      serviceResources: map['serviceResources'] == null ? null : ((map['serviceResources']! as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

