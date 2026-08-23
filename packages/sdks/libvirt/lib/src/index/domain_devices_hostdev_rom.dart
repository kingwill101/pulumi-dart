// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevRom {
  /// Configures the BAR settings for the ROM attribute of the host device.
  final pulumi.Input<String>? bar;
  /// Sets whether the ROM of the host device is enabled or disabled.
  final pulumi.Input<String>? enabled;
  /// Specifies the path to the ROM file used by the host device for initialization.
  final pulumi.Input<String>? file;

  /// Creates a new [DomainDevicesHostdevRom].
  /// [bar] Configures the BAR settings for the ROM attribute of the host device.
  /// [enabled] Sets whether the ROM of the host device is enabled or disabled.
  /// [file] Specifies the path to the ROM file used by the host device for initialization.
  const DomainDevicesHostdevRom({
    this.bar,
    this.enabled,
    this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bar': ?bar,
      'enabled': ?enabled,
      'file': ?file,
    };
  }

  factory DomainDevicesHostdevRom.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevRom(
      bar: (() { final guardedValue = map['bar']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
