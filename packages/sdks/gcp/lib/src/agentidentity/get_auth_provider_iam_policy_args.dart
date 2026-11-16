// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_agentidentity_get_auth_provider_iam_policy_get_auth_provider_iam_policy_args_doc}
/// Arguments for getAuthProviderIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_agentidentity_get_auth_provider_iam_policy_get_auth_provider_iam_policy_args_doc}
class GetAuthProviderIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> authProviderId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetAuthProviderIamPolicyArgs].
  /// [authProviderId] Used to find the parent resource to bind the IAM policy to
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  const GetAuthProviderIamPolicyArgs({
    required this.authProviderId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authProviderId': authProviderId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetAuthProviderIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthProviderIamPolicyArgs(
      authProviderId: pulumi.Input.fromValue(map['authProviderId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
