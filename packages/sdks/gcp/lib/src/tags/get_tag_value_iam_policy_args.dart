// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tags_get_tag_value_iam_policy_get_tag_value_iam_policy_args_doc}
/// Arguments for getTagValueIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_tags_get_tag_value_iam_policy_get_tag_value_iam_policy_args_doc}
class GetTagValueIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> tagValue;

  /// Creates a new [GetTagValueIamPolicyArgs].
  /// [tagValue] Used to find the parent resource to bind the IAM policy to
  GetTagValueIamPolicyArgs({required this.tagValue});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tagValue': tagValue};
  }

  factory GetTagValueIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTagValueIamPolicyArgs(
      tagValue: pulumi.Input.fromValue(map['tagValue'] as String),
    );
  }
}
