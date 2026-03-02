// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesRngRate {
  /// Sets the rate of bytes per time unit for the random number generator.
  final pulumi.Input<double> bytes;
  /// Defines the period duration for the rate settings of the random number generator.
  final pulumi.Input<double>? period;

  /// Creates a new [DomainDevicesRngRate].
  /// [bytes] Sets the rate of bytes per time unit for the random number generator.
  /// [period] Defines the period duration for the rate settings of the random number generator.
  DomainDevicesRngRate({
    required this.bytes,
    this.period,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytes': bytes,
      'period': ?period,
    };
  }

  factory DomainDevicesRngRate.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngRate(
      bytes: (map['bytes'] as double).input(),
      period: map['period'] == null ? null : (map['period'] as double).input(),
    );
  }
}

