// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_public_advertised_prefix_compute_v1_args_doc}
/// Arguments for getPublicAdvertisedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_public_advertised_prefix_compute_v1_args_doc}
class GetPublicAdvertisedPrefixComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicAdvertisedPrefix;

  /// Creates a new [GetPublicAdvertisedPrefixComputeV1Args].
  /// [project] Optional.
  /// [publicAdvertisedPrefix] Required.
  const GetPublicAdvertisedPrefixComputeV1Args({
    this.project,
    required this.publicAdvertisedPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'publicAdvertisedPrefix': publicAdvertisedPrefix,
    };
  }

  factory GetPublicAdvertisedPrefixComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetPublicAdvertisedPrefixComputeV1Args(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicAdvertisedPrefix: pulumi.Input.fromValue(map['publicAdvertisedPrefix'] as String),
    );
  }
}

