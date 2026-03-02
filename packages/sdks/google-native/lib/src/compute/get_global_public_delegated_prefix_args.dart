// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_global_public_delegated_prefix_args_doc}
/// Arguments for getGlobalPublicDelegatedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_global_public_delegated_prefix_args_doc}
class GetGlobalPublicDelegatedPrefixArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicDelegatedPrefix;

  /// Creates a new [GetGlobalPublicDelegatedPrefixArgs].
  /// [project] Optional.
  /// [publicDelegatedPrefix] Required.
  GetGlobalPublicDelegatedPrefixArgs({
    this.project,
    required this.publicDelegatedPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'publicDelegatedPrefix': publicDelegatedPrefix,
    };
  }

  factory GetGlobalPublicDelegatedPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalPublicDelegatedPrefixArgs(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      publicDelegatedPrefix: (map['publicDelegatedPrefix'] as String).input(),
    );
  }
}

