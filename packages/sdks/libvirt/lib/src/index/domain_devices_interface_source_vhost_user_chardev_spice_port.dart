// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceVhostUserChardevSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final pulumi.Input<String> channel;

  /// Creates a new [DomainDevicesInterfaceSourceVhostUserChardevSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  const DomainDevicesInterfaceSourceVhostUserChardevSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesInterfaceSourceVhostUserChardevSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVhostUserChardevSpicePort(
      channel: pulumi.Input.fromValue(map['channel'] as String),
    );
  }
}
