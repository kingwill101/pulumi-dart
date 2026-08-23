// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorSourceVhostUserSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final pulumi.Input<String> channel;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostUserSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  const DomainDevicesDiskMirrorSourceVhostUserSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesDiskMirrorSourceVhostUserSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostUserSpicePort(
      channel: pulumi.Input.fromValue(map['channel'] as String),
    );
  }
}
