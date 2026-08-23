// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_stats_dimensions.dart';

/// Stats for the requested dimensions: QPS, duration, and error/warning rate
class EnterpriseCrmEventbusStats {
  /// Dimensions that these stats have been aggregated on.
  final pulumi.Input<EnterpriseCrmEventbusStatsDimensions>? dimensions;
  /// Average duration in seconds.
  final pulumi.Input<double>? durationInSeconds;
  /// Average error rate.
  final pulumi.Input<double>? errorRate;
  /// Queries per second.
  final pulumi.Input<double>? qps;
  /// Average warning rate.
  final pulumi.Input<double>? warningRate;

  /// Creates a new [EnterpriseCrmEventbusStats].
  /// [dimensions] Dimensions that these stats have been aggregated on.
  /// [durationInSeconds] Average duration in seconds.
  /// [errorRate] Average error rate.
  /// [qps] Queries per second.
  /// [warningRate] Average warning rate.
  const EnterpriseCrmEventbusStats({
    this.dimensions,
    this.durationInSeconds,
    this.errorRate,
    this.qps,
    this.warningRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusStatsDimensions, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'durationInSeconds': ?durationInSeconds,
      'errorRate': ?errorRate,
      'qps': ?qps,
      'warningRate': ?warningRate,
    };
  }

  factory EnterpriseCrmEventbusStats.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusStats(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusStatsDimensions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      durationInSeconds: (() { final guardedValue = map['durationInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      errorRate: (() { final guardedValue = map['errorRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      qps: (() { final guardedValue = map['qps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      warningRate: (() { final guardedValue = map['warningRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
