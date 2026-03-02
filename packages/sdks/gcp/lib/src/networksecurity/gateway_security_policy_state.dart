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
    this.createTime,
    this.description,
    this.location,
    this.name,
    this.project,
    this.selfLink,
    this.tlsInspectionPolicy,
    this.updateTime,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      tlsInspectionPolicy: map['tlsInspectionPolicy'] == null ? null : (map['tlsInspectionPolicy']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

