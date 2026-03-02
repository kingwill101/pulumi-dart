// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceVhostUserSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final pulumi.Input<String> channel;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceVhostUserSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainDevicesDiskBackingStoreSourceVhostUserSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceVhostUserSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceVhostUserSpicePort(
      channel: (map['channel'] as String).input(),
    );
  }
}

