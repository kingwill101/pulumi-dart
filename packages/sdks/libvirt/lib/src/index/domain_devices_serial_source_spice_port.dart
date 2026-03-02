// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesSerialSourceSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final pulumi.Input<String> channel;

  /// Creates a new [DomainDevicesSerialSourceSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainDevicesSerialSourceSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesSerialSourceSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialSourceSpicePort(
      channel: (map['channel'] as String).input(),
    );
  }
}

