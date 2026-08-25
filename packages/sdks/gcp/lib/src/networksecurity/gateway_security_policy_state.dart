// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewaySecurityPolicy resources.
class GatewaySecurityPolicyState {
  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String?>? description;
  /// The location of the gateway security policy.
  /// The default value is `global`.
  final pulumi.Input<String?>? location;
  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gatewaySecurityPolicy}
  /// gatewaySecurityPolicy should match the pattern:(^a-z?$).
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Server-defined URL of this resource.
  final pulumi.Input<String?>? selfLink;
  /// Name of a TlsInspectionPolicy resource that defines how TLS inspection is performed for any rule that enables it.
  final pulumi.Input<String?>? tlsInspectionPolicy;
  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [GatewaySecurityPolicyState].
  /// [createTime] The timestamp when the resource was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [location] The location of the gateway security policy.
  /// [name] Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gatewaySecurityPolicy}
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] Server-defined URL of this resource.
  /// [tlsInspectionPolicy] Name of a TlsInspectionPolicy resource that defines how TLS inspection is performed for any rule that enables it.
  /// [updateTime] The timestamp when the resource was updated.
  const GatewaySecurityPolicyState({
    this.createTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsInspectionPolicy: (() { final guardedValue = map['tlsInspectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
