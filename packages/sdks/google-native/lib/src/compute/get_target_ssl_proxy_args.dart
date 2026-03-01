// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_target_ssl_proxy_args_doc}
/// Arguments for getTargetSslProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_target_ssl_proxy_args_doc}
class GetTargetSslProxyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetSslProxy;

  /// Creates a new [GetTargetSslProxyArgs].
  /// [project] Optional.
  /// [targetSslProxy] Required.
  GetTargetSslProxyArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> targetSslProxy,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      targetSslProxy = pulumi.Input.asInput<String>(targetSslProxy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetSslProxy': targetSslProxy,
    };
  }

  factory GetTargetSslProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetSslProxyArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      targetSslProxy: pulumi.Output.create<String>(map['targetSslProxy'] as String),
    );
  }
}

