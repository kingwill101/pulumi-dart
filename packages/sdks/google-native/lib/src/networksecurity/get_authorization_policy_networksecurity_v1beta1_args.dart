// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_authorization_policy_networksecurity_v1beta1_args_doc}
/// Arguments for getAuthorizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_authorization_policy_networksecurity_v1beta1_args_doc}
class GetAuthorizationPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> authorizationPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAuthorizationPolicyNetworksecurityV1beta1Args].
  /// [authorizationPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetAuthorizationPolicyNetworksecurityV1beta1Args({
    required this.authorizationPolicyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationPolicyId': authorizationPolicyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAuthorizationPolicyNetworksecurityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationPolicyNetworksecurityV1beta1Args(
      authorizationPolicyId: pulumi.Input.fromValue(map['authorizationPolicyId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
