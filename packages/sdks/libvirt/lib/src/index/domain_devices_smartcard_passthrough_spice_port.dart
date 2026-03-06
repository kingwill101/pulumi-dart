// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesSmartcardPassthroughSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final pulumi.Input<String> channel;

  /// Creates a new [DomainDevicesSmartcardPassthroughSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  const DomainDevicesSmartcardPassthroughSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesSmartcardPassthroughSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardPassthroughSpicePort(
      channel: pulumi.Input.fromValue(map['channel'] as String),
    );
  }
}

