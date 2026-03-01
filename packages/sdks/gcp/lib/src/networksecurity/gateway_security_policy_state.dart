// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewaySecurityPolicy resources.
class GatewaySecurityPolicyState {
  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final pulumi.Input<String>? createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// The location of the gateway security policy.
  /// The default value is `global`.
  final pulumi.Input<String>? location;
  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gatewaySecurityPolicy}
  /// gatewaySecurityPolicy should match the pattern:(^a-z?$).
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Server-defined URL of this resource.
  final pulumi.Input<String>? selfLink;
  /// Name of a TlsInspectionPolicy resource that defines how TLS inspection is performed for any rule that enables it.
  final pulumi.Input<String>? tlsInspectionPolicy;
  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GatewaySecurityPolicyState].
  /// [createTime] The timestamp when the resource was created.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [location] The location of the gateway security policy.
  /// [name] Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gatewaySecurityPolicy}
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] Server-defined URL of this resource.
  /// [tlsInspectionPolicy] Name of a TlsInspectionPolicy resource that defines how TLS inspection is performed for any rule that enables it.
  /// [updateTime] The timestamp when the resource was updated.
  GatewaySecurityPolicyState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? tlsInspectionPolicy,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      tlsInspectionPolicy = pulumi.Input.asOptionalInput<String>(tlsInspectionPolicy),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
      'tlsInspectionPolicy': ?tlsInspectionPolicy,
      'updateTime': ?updateTime,
    };
  }

  factory GatewaySecurityPolicyState.fromMap(Map<String, dynamic> map) {
    return GatewaySecurityPolicyState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      tlsInspectionPolicy: map['tlsInspectionPolicy'] == null ? null : pulumi.Output.create<String>(map['tlsInspectionPolicy'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

