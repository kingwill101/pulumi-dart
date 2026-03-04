// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_public_advertised_prefix_args_doc}
/// Arguments for getPublicAdvertisedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_public_advertised_prefix_args_doc}
class GetPublicAdvertisedPrefixArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicAdvertisedPrefix;

  /// Creates a new [GetPublicAdvertisedPrefixArgs].
  /// [project] Optional.
  /// [publicAdvertisedPrefix] Required.
  GetPublicAdvertisedPrefixArgs({
    this.project,
    required this.publicAdvertisedPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'publicAdvertisedPrefix': publicAdvertisedPrefix,
    };
  }

  factory GetPublicAdvertisedPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicAdvertisedPrefixArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicAdvertisedPrefix: pulumi.Input.fromValue(
        map['publicAdvertisedPrefix'] as String,
      ),
    );
  }
}
