// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudkms_v1_get_key_ring_args_doc}
/// Arguments for getKeyRing.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_get_key_ring_args_doc}
class GetKeyRingArgs {
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetKeyRingArgs].
  /// [keyRingId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetKeyRingArgs({
    required this.keyRingId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyRingId': keyRingId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetKeyRingArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyRingArgs(
      keyRingId: (map['keyRingId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

