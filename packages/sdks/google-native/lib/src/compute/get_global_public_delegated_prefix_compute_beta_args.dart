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
    this.project,
    required this.publicDelegatedPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'publicDelegatedPrefix': publicDelegatedPrefix,
    };
  }

  factory GetGlobalPublicDelegatedPrefixComputeBetaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGlobalPublicDelegatedPrefixComputeBetaArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicDelegatedPrefix: pulumi.Input.fromValue(
        map['publicDelegatedPrefix'] as String,
      ),
    );
  }
}
