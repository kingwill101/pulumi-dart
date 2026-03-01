// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_global_public_delegated_prefix_compute_beta_args_doc}
/// Arguments for getGlobalPublicDelegatedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_global_public_delegated_prefix_compute_beta_args_doc}
class GetGlobalPublicDelegatedPrefixComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicDelegatedPrefix;

  /// Creates a new [GetGlobalPublicDelegatedPrefixComputeBetaArgs].
  /// [project] Optional.
  /// [publicDelegatedPrefix] Required.
  GetGlobalPublicDelegatedPrefixComputeBetaArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> publicDelegatedPrefix,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      publicDelegatedPrefix = pulumi.Input.asInput<String>(publicDelegatedPrefix);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'publicDelegatedPrefix': publicDelegatedPrefix,
    };
  }

  factory GetGlobalPublicDelegatedPrefixComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalPublicDelegatedPrefixComputeBetaArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      publicDelegatedPrefix: pulumi.Output.create<String>(map['publicDelegatedPrefix'] as String),
    );
  }
}

