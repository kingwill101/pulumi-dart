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
  EnterpriseCrmEventbusStats({
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
      dimensions: map['dimensions'] == null ? null : (EnterpriseCrmEventbusStatsDimensions.fromMap((map['dimensions'] as Map).cast<String, dynamic>())).input(),
      durationInSeconds: map['durationInSeconds'] == null ? null : (map['durationInSeconds'] as double).input(),
      errorRate: map['errorRate'] == null ? null : (map['errorRate'] as double).input(),
      qps: map['qps'] == null ? null : (map['qps'] as double).input(),
      warningRate: map['warningRate'] == null ? null : (map['warningRate'] as double).input(),
    );
  }
}

