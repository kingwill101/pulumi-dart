// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_workload_identity_pool_jwks_get_workload_identity_pool_jwks_args_doc}
/// Arguments for getWorkloadIdentityPoolJwks.
/// {@endtemplate}
/// {@macro pulumi_iam_get_workload_identity_pool_jwks_get_workload_identity_pool_jwks_args_doc}
class GetWorkloadIdentityPoolJwksArgs {
  /// The JWKS URI to retrieve the public keys from (e.g. from `google_iam_workload_identity_pool_openid_config.jwks_uri`).
  ///
  /// - - -
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetWorkloadIdentityPoolJwksArgs].
  /// [resourceName] The JWKS URI to retrieve the public keys from (e.g. from `google_iam_workload_identity_pool_openid_config.jwks_uri`).
  const GetWorkloadIdentityPoolJwksArgs({
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': resourceName,
    };
  }

  factory GetWorkloadIdentityPoolJwksArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolJwksArgs(
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
