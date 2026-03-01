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
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityPolicy,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? selfLinkWithServiceId,
    pulumi.Output<String>? serviceId,
  }) :
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityPolicy = pulumi.Input.asOptionalInput<String>(securityPolicy),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      selfLinkWithServiceId = pulumi.Input.asOptionalInput<String>(selfLinkWithServiceId),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId);

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
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityPolicy: map['securityPolicy'] == null ? null : pulumi.Output.create<String>(map['securityPolicy'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      selfLinkWithServiceId: map['selfLinkWithServiceId'] == null ? null : pulumi.Output.create<String>(map['selfLinkWithServiceId'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

