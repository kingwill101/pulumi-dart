// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_v1_get_access_policy_args_doc}
/// Arguments for getAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1_get_access_policy_args_doc}
class GetAccessPolicyArgs {
  final pulumi.Input<String> accessPolicyId;

  /// Creates a new [GetAccessPolicyArgs].
  /// [accessPolicyId] Required.
  const GetAccessPolicyArgs({
    required this.accessPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': accessPolicyId,
    };
  }

  factory GetAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyArgs(
      accessPolicyId: pulumi.Input.fromValue(map['accessPolicyId'] as String),
    );
  }
}

