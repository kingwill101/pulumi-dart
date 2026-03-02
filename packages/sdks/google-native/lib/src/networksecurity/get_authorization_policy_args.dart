// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_authorization_policy_args_doc}
/// Arguments for getAuthorizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_authorization_policy_args_doc}
class GetAuthorizationPolicyArgs {
  final pulumi.Input<String> authorizationPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAuthorizationPolicyArgs].
  /// [authorizationPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAuthorizationPolicyArgs({
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

  factory GetAuthorizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationPolicyArgs(
      authorizationPolicyId: (map['authorizationPolicyId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

