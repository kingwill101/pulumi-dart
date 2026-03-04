// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_gateway_security_policy_networksecurity_v1beta1_args_doc}
/// The set of arguments for GatewaySecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_gateway_security_policy_networksecurity_v1beta1_args_doc}
class GatewaySecurityPolicyNetworksecurityV1beta1Args {
  /// Optional. Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// Required. Short name of the GatewaySecurityPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "gateway_security_policy1".
  final pulumi.Input<String> gatewaySecurityPolicyId;
  final pulumi.Input<String>? location;

  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy} gateway_security_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. Name of a TLS Inspection Policy resource that defines how TLS inspection will be performed for any rule(s) which enables it.
  final pulumi.Input<String>? tlsInspectionPolicy;

  /// Creates a new [GatewaySecurityPolicyNetworksecurityV1beta1Args].
  /// [description] Optional. Free-text description of the resource.
  /// [gatewaySecurityPolicyId] Required. Short name of the GatewaySecurityPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "gateway_security_policy1".
  /// [location] Optional.
  /// [name] Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy} gateway_security_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  /// [project] Optional.
  /// [tlsInspectionPolicy] Optional. Name of a TLS Inspection Policy resource that defines how TLS inspection will be performed for any rule(s) which enables it.
  GatewaySecurityPolicyNetworksecurityV1beta1Args({
    this.description,
    required this.gatewaySecurityPolicyId,
    this.location,
    this.name,
    this.project,
    this.tlsInspectionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gatewaySecurityPolicyId': gatewaySecurityPolicyId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'tlsInspectionPolicy': ?tlsInspectionPolicy,
    };
  }

  factory GatewaySecurityPolicyNetworksecurityV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GatewaySecurityPolicyNetworksecurityV1beta1Args(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewaySecurityPolicyId: pulumi.Input.fromValue(
        map['gatewaySecurityPolicyId'] as String,
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tlsInspectionPolicy: (() {
        final guardedValue = map['tlsInspectionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
