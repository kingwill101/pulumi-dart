// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesRedirDevSourceSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final pulumi.Input<String> channel;

  /// Creates a new [DomainDevicesRedirDevSourceSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  const DomainDevicesRedirDevSourceSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesRedirDevSourceSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevSourceSpicePort(
      channel: pulumi.Input.fromValue(map['channel'] as String),
    );
  }
}

