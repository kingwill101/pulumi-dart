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
    pulumi.Output<String>? project,
    required pulumi.Output<String> targetGrpcProxy,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      targetGrpcProxy = pulumi.Input.asInput<String>(targetGrpcProxy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetGrpcProxy': targetGrpcProxy,
    };
  }

  factory GetTargetGrpcProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetGrpcProxyComputeBetaArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      targetGrpcProxy: pulumi.Output.create<String>(map['targetGrpcProxy'] as String),
    );
  }
}

