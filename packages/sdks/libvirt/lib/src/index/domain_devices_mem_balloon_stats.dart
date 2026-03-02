// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesMemBalloonStats {
  /// Specifies the period for gathering statistics from the memory balloon device.
  final pulumi.Input<double> period;

  /// Creates a new [DomainDevicesMemBalloonStats].
  /// [period] Specifies the period for gathering statistics from the memory balloon device.
  DomainDevicesMemBalloonStats({
    required this.period,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'period': period,
    };
  }

  factory DomainDevicesMemBalloonStats.fromMap(Map<String, dynamic> map) {
    return DomainDevicesMemBalloonStats(
      period: (map['period'] as double).input(),
    );
  }
}

