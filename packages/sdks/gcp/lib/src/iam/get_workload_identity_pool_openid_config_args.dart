// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_workload_identity_pool_openid_config_get_workload_identity_pool_openid_config_args_doc}
/// Arguments for getWorkloadIdentityPoolOpenidConfig.
/// {@endtemplate}
/// {@macro pulumi_iam_get_workload_identity_pool_openid_config_get_workload_identity_pool_openid_config_args_doc}
class GetWorkloadIdentityPoolOpenidConfigArgs {
  /// The OIDC discovery URI.
  ///
  /// - - -
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetWorkloadIdentityPoolOpenidConfigArgs].
  /// [resourceName] The OIDC discovery URI.
  const GetWorkloadIdentityPoolOpenidConfigArgs({
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': resourceName,
    };
  }

  factory GetWorkloadIdentityPoolOpenidConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolOpenidConfigArgs(
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
