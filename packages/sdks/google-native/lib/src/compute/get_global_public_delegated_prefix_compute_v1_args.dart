// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_global_public_delegated_prefix_compute_v1_args_doc}
/// Arguments for getGlobalPublicDelegatedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_global_public_delegated_prefix_compute_v1_args_doc}
class GetGlobalPublicDelegatedPrefixComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicDelegatedPrefix;

  /// Creates a new [GetGlobalPublicDelegatedPrefixComputeV1Args].
  /// [project] Optional.
  /// [publicDelegatedPrefix] Required.
  const GetGlobalPublicDelegatedPrefixComputeV1Args({
    this.project,
    required this.publicDelegatedPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'publicDelegatedPrefix': publicDelegatedPrefix,
    };
  }

  factory GetGlobalPublicDelegatedPrefixComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetGlobalPublicDelegatedPrefixComputeV1Args(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicDelegatedPrefix: pulumi.Input.fromValue(map['publicDelegatedPrefix'] as String),
    );
  }
}
