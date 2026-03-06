// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceGuest {
  /// Indicates the actual guest device identifier.
  final pulumi.Input<String>? actual;
  /// Sets the device identifier for the guest network interface.
  final pulumi.Input<String>? dev;

  /// Creates a new [DomainDevicesInterfaceGuest].
  /// [actual] Indicates the actual guest device identifier.
  /// [dev] Sets the device identifier for the guest network interface.
  const DomainDevicesInterfaceGuest({
    this.actual,
    this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actual': ?actual,
      'dev': ?dev,
    };
  }

  factory DomainDevicesInterfaceGuest.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceGuest(
      actual: (() { final guardedValue = map['actual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

