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
    required pulumi.Output<String> location,
    required pulumi.Output<String> membershipId,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      membershipId = pulumi.Input.asInput<String>(membershipId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      membershipId: pulumi.Output.create<String>(map['membershipId'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

