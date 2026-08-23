// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_get_membership_iam_policy_get_membership_iam_policy_args_doc}
/// Arguments for getMembershipIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkehub_get_membership_iam_policy_get_membership_iam_policy_args_doc}
class GetMembershipIamPolicyArgs {
  /// Location of the membership.
  /// The default value is `global`.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> membershipId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetMembershipIamPolicyArgs].
  /// [location] Location of the membership.
  /// [membershipId] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  const GetMembershipIamPolicyArgs({
    this.location,
    required this.membershipId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'membershipId': membershipId,
      'project': ?project,
    };
  }

  factory GetMembershipIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetMembershipIamPolicyArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      membershipId: pulumi.Input.fromValue(map['membershipId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
