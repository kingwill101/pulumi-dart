// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicSpiceStreaming {
  /// Sets the operational mode for streaming data in the Spice graphical session.
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesGraphicSpiceStreaming].
  /// [mode] Sets the operational mode for streaming data in the Spice graphical session.
  DomainDevicesGraphicSpiceStreaming({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesGraphicSpiceStreaming.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceStreaming(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

