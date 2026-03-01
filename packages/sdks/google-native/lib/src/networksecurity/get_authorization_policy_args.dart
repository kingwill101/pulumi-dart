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
    required pulumi.Output<String> authorizationPolicyId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      authorizationPolicyId = pulumi.Input.asInput<String>(authorizationPolicyId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationPolicyId': authorizationPolicyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAuthorizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationPolicyArgs(
      authorizationPolicyId: pulumi.Output.create<String>(map['authorizationPolicyId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

