// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_gateway_security_policy_gateway_security_policy_args_doc}
/// The set of arguments for GatewaySecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_gateway_security_policy_gateway_security_policy_args_doc}
class GatewaySecurityPolicyArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// Name of a TlsInspectionPolicy resource that defines how TLS inspection is performed for any rule that enables it.
  final pulumi.Input<String>? tlsInspectionPolicy;

  /// Creates a new [GatewaySecurityPolicyArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [location] The location of the gateway security policy.
  /// [name] Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gatewaySecurityPolicy}
  /// [project] The ID of the project in which the resource belongs.
  /// [tlsInspectionPolicy] Name of a TlsInspectionPolicy resource that defines how TLS inspection is performed for any rule that enables it.
  const GatewaySecurityPolicyArgs({
    this.deletionPolicy,
    this.description,
    this.location,
    this.name,
    this.project,
    this.tlsInspectionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'tlsInspectionPolicy': ?tlsInspectionPolicy,
    };
  }

  factory GatewaySecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GatewaySecurityPolicyArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsInspectionPolicy: (() { final guardedValue = map['tlsInspectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
