// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicSpiceChannel {
  /// Configures the mode of the Spice channel, allowing control over the type of communication used.
  final pulumi.Input<String> mode;
  /// Sets the name for the Spice channel, which identifies the channel in the configuration.
  final pulumi.Input<String> name;

  /// Creates a new [DomainDevicesGraphicSpiceChannel].
  /// [mode] Configures the mode of the Spice channel, allowing control over the type of communication used.
  /// [name] Sets the name for the Spice channel, which identifies the channel in the configuration.
  DomainDevicesGraphicSpiceChannel({
    required this.mode,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'name': name,
    };
  }

  factory DomainDevicesGraphicSpiceChannel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceChannel(
      mode: (map['mode'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

