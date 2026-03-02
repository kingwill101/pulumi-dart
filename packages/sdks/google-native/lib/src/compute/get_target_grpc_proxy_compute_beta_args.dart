// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_target_grpc_proxy_compute_beta_args_doc}
/// Arguments for getTargetGrpcProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_target_grpc_proxy_compute_beta_args_doc}
class GetTargetGrpcProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetGrpcProxy;

  /// Creates a new [GetTargetGrpcProxyComputeBetaArgs].
  /// [project] Optional.
  /// [targetGrpcProxy] Required.
  GetTargetGrpcProxyComputeBetaArgs({
    this.project,
    required this.targetGrpcProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetGrpcProxy': targetGrpcProxy,
    };
  }

  factory GetTargetGrpcProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetGrpcProxyComputeBetaArgs(
      project: map['project'] == null ? null : (map['project'] as String).input(),
      targetGrpcProxy: (map['targetGrpcProxy'] as String).input(),
    );
  }
}

