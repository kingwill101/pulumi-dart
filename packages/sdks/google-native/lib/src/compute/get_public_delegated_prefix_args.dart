// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_public_delegated_prefix_args_doc}
/// Arguments for getPublicDelegatedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_public_delegated_prefix_args_doc}
class GetPublicDelegatedPrefixArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicDelegatedPrefix;
  final pulumi.Input<String> region;

  /// Creates a new [GetPublicDelegatedPrefixArgs].
  /// [project] Optional.
  /// [publicDelegatedPrefix] Required.
  /// [region] Required.
  GetPublicDelegatedPrefixArgs({
    this.project,
    required this.publicDelegatedPrefix,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'publicDelegatedPrefix': publicDelegatedPrefix,
      'region': region,
    };
  }

  factory GetPublicDelegatedPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicDelegatedPrefixArgs(
      project: map['project'] == null ? null : (map['project'] as String).input(),
      publicDelegatedPrefix: (map['publicDelegatedPrefix'] as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

