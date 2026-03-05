// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_v1beta1_get_v1beta1_iam_policy_args_doc}
/// Arguments for getV1beta1IamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_v1beta1_get_v1beta1_iam_policy_args_doc}
class GetV1beta1IamPolicyArgs {
  final pulumi.Input<String> v1beta1Id;

  /// Creates a new [GetV1beta1IamPolicyArgs].
  /// [v1beta1Id] Required.
  GetV1beta1IamPolicyArgs({
    required this.v1beta1Id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'v1beta1Id': v1beta1Id,
    };
  }

  factory GetV1beta1IamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetV1beta1IamPolicyArgs(
      v1beta1Id: pulumi.Input.fromValue(map['v1beta1Id'] as String),
    );
  }
}

