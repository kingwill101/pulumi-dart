// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkEdgeSecurityService resources.
class NetworkEdgeSecurityServiceState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// Free-text description of the resource.
  final pulumi.Input<String>? description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a NetworkEdgeSecurityService.
  /// An up-to-date fingerprint must be provided in order to update the NetworkEdgeSecurityService, otherwise the request will fail with error 412 conditionNotMet.
  final pulumi.Input<String>? fingerprint;
  /// Name of the resource. Provided by the client when the resource is created.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the gateway security policy.
  final pulumi.Input<String>? region;
  /// The resource URL for the network edge security service associated with this network edge security service.
  final pulumi.Input<String>? securityPolicy;
  /// Server-defined URL for the resource.
  final pulumi.Input<String>? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final pulumi.Input<String>? selfLinkWithServiceId;
  /// The unique identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<String>? serviceId;

  /// Creates a new [NetworkEdgeSecurityServiceState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] Free-text description of the resource.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a NetworkEdgeSecurityService.
  /// [name] Name of the resource. Provided by the client when the resource is created.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the gateway security policy.
  /// [securityPolicy] The resource URL for the network edge security service associated with this network edge security service.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithServiceId] Server-defined URL for this resource with the resource id.
  /// [serviceId] The unique identifier for the resource. This identifier is defined by the server.
  NetworkEdgeSecurityServiceState({
    this.creationTimestamp,
    this.description,
    this.fingerprint,
    this.name,
    this.project,
    this.region,
    this.securityPolicy,
    this.selfLink,
    this.selfLinkWithServiceId,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'securityPolicy': ?securityPolicy,
      'selfLink': ?selfLink,
      'selfLinkWithServiceId': ?selfLinkWithServiceId,
      'serviceId': ?serviceId,
    };
  }

  factory NetworkEdgeSecurityServiceState.fromMap(Map<String, dynamic> map) {
    return NetworkEdgeSecurityServiceState(
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      securityPolicy: map['securityPolicy'] == null ? null : (map['securityPolicy'] as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      selfLinkWithServiceId: map['selfLinkWithServiceId'] == null ? null : (map['selfLinkWithServiceId'] as String).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId'] as String).input(),
    );
  }
}

