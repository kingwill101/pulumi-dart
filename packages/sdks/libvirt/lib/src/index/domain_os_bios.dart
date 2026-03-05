// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsBios {
  /// Defines the timeout duration for rebooting the domain, controlling wait time before action is taken.
  final pulumi.Input<double>? rebootTimeout;
  /// Configures whether the BIOS should use the serial console for output.
  final pulumi.Input<String>? useSerial;

  /// Creates a new [DomainOsBios].
  /// [rebootTimeout] Defines the timeout duration for rebooting the domain, controlling wait time before action is taken.
  /// [useSerial] Configures whether the BIOS should use the serial console for output.
  DomainOsBios({
    this.rebootTimeout,
    this.useSerial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rebootTimeout': ?rebootTimeout,
      'useSerial': ?useSerial,
    };
  }

  factory DomainOsBios.fromMap(Map<String, dynamic> map) {
    return DomainOsBios(
      rebootTimeout: (() { final guardedValue = map['rebootTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      useSerial: (() { final guardedValue = map['useSerial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

