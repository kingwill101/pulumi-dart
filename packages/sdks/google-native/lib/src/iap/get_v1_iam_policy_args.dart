// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_v1_get_v1_iam_policy_args_doc}
/// Arguments for getV1IamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_v1_get_v1_iam_policy_args_doc}
class GetV1IamPolicyArgs {
  final pulumi.Input<String> v1Id;

  /// Creates a new [GetV1IamPolicyArgs].
  /// [v1Id] Required.
  GetV1IamPolicyArgs({
    required this.v1Id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'v1Id': v1Id,
    };
  }

  factory GetV1IamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetV1IamPolicyArgs(
      v1Id: (map['v1Id'] as String).input(),
    );
  }
}

