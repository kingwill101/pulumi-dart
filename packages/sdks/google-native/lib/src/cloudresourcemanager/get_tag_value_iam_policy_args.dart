// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v3_get_tag_value_iam_policy_args_doc}
/// Arguments for getTagValueIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_get_tag_value_iam_policy_args_doc}
class GetTagValueIamPolicyArgs {
  final pulumi.Input<String> tagValueId;

  /// Creates a new [GetTagValueIamPolicyArgs].
  /// [tagValueId] Required.
  GetTagValueIamPolicyArgs({
    required this.tagValueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagValueId': tagValueId,
    };
  }

  factory GetTagValueIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTagValueIamPolicyArgs(
      tagValueId: (map['tagValueId'] as String).input(),
    );
  }
}

