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
  KeyRingArgs({
    pulumi.Output<String>? keyRingId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
  }) :
      keyRingId = pulumi.Input.asOptionalInput<String>(keyRingId),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyRingId': ?keyRingId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory KeyRingArgs.fromMap(Map<String, dynamic> map) {
    return KeyRingArgs(
      keyRingId: map['keyRingId'] == null ? null : pulumi.Output.create<String>(map['keyRingId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

