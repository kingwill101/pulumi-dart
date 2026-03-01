// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesGraphicSpiceMouse {
  /// Sets the mode for mouse input handling within the Spice graphical environment.
  final String mode;

  /// Creates a new [DomainDevicesGraphicSpiceMouse].
  /// [mode] Sets the mode for mouse input handling within the Spice graphical environment.
  DomainDevicesGraphicSpiceMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesGraphicSpiceMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceMouse(
      mode: map['mode'] as String,
    );
  }
}

