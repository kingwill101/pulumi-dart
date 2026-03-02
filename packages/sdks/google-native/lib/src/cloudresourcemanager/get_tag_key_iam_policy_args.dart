// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v3_get_tag_key_iam_policy_args_doc}
/// Arguments for getTagKeyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_get_tag_key_iam_policy_args_doc}
class GetTagKeyIamPolicyArgs {
  final pulumi.Input<String> tagKeyId;

  /// Creates a new [GetTagKeyIamPolicyArgs].
  /// [tagKeyId] Required.
  GetTagKeyIamPolicyArgs({
    required this.tagKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagKeyId': tagKeyId,
    };
  }

  factory GetTagKeyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTagKeyIamPolicyArgs(
      tagKeyId: (map['tagKeyId'] as String).input(),
    );
  }
}

