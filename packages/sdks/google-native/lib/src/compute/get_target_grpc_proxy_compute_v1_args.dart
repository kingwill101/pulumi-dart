// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_target_grpc_proxy_compute_v1_args_doc}
/// Arguments for getTargetGrpcProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_target_grpc_proxy_compute_v1_args_doc}
class GetTargetGrpcProxyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetGrpcProxy;

  /// Creates a new [GetTargetGrpcProxyComputeV1Args].
  /// [project] Optional.
  /// [targetGrpcProxy] Required.
  GetTargetGrpcProxyComputeV1Args({
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

  factory GetTargetGrpcProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetGrpcProxyComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      targetGrpcProxy: pulumi.Output.create<String>(map['targetGrpcProxy'] as String),
    );
  }
}

