// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha2_get_membership_iam_policy_gkehub_v1alpha2_args_doc}
/// Arguments for getMembershipIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha2_get_membership_iam_policy_gkehub_v1alpha2_args_doc}
class GetMembershipIamPolicyGkehubV1alpha2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMembershipIamPolicyGkehubV1alpha2Args].
  /// [location] Required.
  /// [membershipId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetMembershipIamPolicyGkehubV1alpha2Args({
    required this.location,
    required this.membershipId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'membershipId': membershipId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetMembershipIamPolicyGkehubV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return GetMembershipIamPolicyGkehubV1alpha2Args(
      location: (map['location'] as String).input(),
      membershipId: (map['membershipId'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

