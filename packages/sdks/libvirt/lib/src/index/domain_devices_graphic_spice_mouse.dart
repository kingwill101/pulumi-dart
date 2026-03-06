// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicSpiceMouse {
  /// Sets the mode for mouse input handling within the Spice graphical environment.
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesGraphicSpiceMouse].
  /// [mode] Sets the mode for mouse input handling within the Spice graphical environment.
  const DomainDevicesGraphicSpiceMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesGraphicSpiceMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

