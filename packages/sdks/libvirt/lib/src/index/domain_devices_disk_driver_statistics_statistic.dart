// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskDriverStatisticsStatistic {
  final pulumi.Input<double> interval;

  /// Creates a new [DomainDevicesDiskDriverStatisticsStatistic].
  /// [interval] Required.
  const DomainDevicesDiskDriverStatisticsStatistic({
    required this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': interval,
    };
  }

  factory DomainDevicesDiskDriverStatisticsStatistic.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskDriverStatisticsStatistic(
      interval: pulumi.Input.fromValue((map['interval'] as num).toDouble()),
    );
  }
}
