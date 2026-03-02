// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tags_get_tag_key_iam_policy_get_tag_key_iam_policy_args_doc}
/// Arguments for getTagKeyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_tags_get_tag_key_iam_policy_get_tag_key_iam_policy_args_doc}
class GetTagKeyIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> tagKey;

  /// Creates a new [GetTagKeyIamPolicyArgs].
  /// [tagKey] Used to find the parent resource to bind the IAM policy to
  GetTagKeyIamPolicyArgs({
    required this.tagKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagKey': tagKey,
    };
  }

  factory GetTagKeyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTagKeyIamPolicyArgs(
      tagKey: (map['tagKey'] as String).input(),
    );
  }
}

