// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_v1beta1_get_membership_cloudidentity_v1beta1_args_doc}
/// Arguments for getMembership.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1beta1_get_membership_cloudidentity_v1beta1_args_doc}
class GetMembershipCloudidentityV1beta1Args {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> membershipId;

  /// Creates a new [GetMembershipCloudidentityV1beta1Args].
  /// [groupId] Required.
  /// [membershipId] Required.
  GetMembershipCloudidentityV1beta1Args({
    required pulumi.Output<String> groupId,
    required pulumi.Output<String> membershipId,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      membershipId = pulumi.Input.asInput<String>(membershipId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'membershipId': membershipId,
    };
  }

  factory GetMembershipCloudidentityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetMembershipCloudidentityV1beta1Args(
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      membershipId: pulumi.Output.create<String>(map['membershipId'] as String),
    );
  }
}

