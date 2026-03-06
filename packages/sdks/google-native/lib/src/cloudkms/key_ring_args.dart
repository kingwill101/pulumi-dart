// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudkms_v1_key_ring_args_doc}
/// The set of arguments for KeyRing.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_key_ring_args_doc}
class KeyRingArgs {
  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String>? keyRingId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [KeyRingArgs].
  /// [keyRingId] Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  /// [location] Optional.
  /// [project] Optional.
  const KeyRingArgs({
    this.keyRingId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyRingId': ?keyRingId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory KeyRingArgs.fromMap(Map<String, dynamic> map) {
    return KeyRingArgs(
      keyRingId: (() { final guardedValue = map['keyRingId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

