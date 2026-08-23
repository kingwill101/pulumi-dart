// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicSpicePlayback {
  /// Sets compression options for audio and video playback over the Spice connection.
  final pulumi.Input<String> compression;

  /// Creates a new [DomainDevicesGraphicSpicePlayback].
  /// [compression] Sets compression options for audio and video playback over the Spice connection.
  const DomainDevicesGraphicSpicePlayback({
    required this.compression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': compression,
    };
  }

  factory DomainDevicesGraphicSpicePlayback.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpicePlayback(
      compression: pulumi.Input.fromValue(map['compression'] as String),
    );
  }
}
