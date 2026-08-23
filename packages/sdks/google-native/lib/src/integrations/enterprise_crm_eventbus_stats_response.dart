// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_stats_dimensions_response.dart';

/// Stats for the requested dimensions: QPS, duration, and error/warning rate
class EnterpriseCrmEventbusStatsResponse {
  /// Dimensions that these stats have been aggregated on.
  final pulumi.Input<EnterpriseCrmEventbusStatsDimensionsResponse> dimensions;
  /// Average duration in seconds.
  final pulumi.Input<double> durationInSeconds;
  /// Average error rate.
  final pulumi.Input<double> errorRate;
  /// Queries per second.
  final pulumi.Input<double> qps;
  /// Average warning rate.
  final pulumi.Input<double> warningRate;

  /// Creates a new [EnterpriseCrmEventbusStatsResponse].
  /// [dimensions] Dimensions that these stats have been aggregated on.
  /// [durationInSeconds] Average duration in seconds.
  /// [errorRate] Average error rate.
  /// [qps] Queries per second.
  /// [warningRate] Average warning rate.
  const EnterpriseCrmEventbusStatsResponse({
    required this.dimensions,
    required this.durationInSeconds,
    required this.errorRate,
    required this.qps,
    required this.warningRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': pulumi.Input.mapInputValue<EnterpriseCrmEventbusStatsDimensionsResponse, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'durationInSeconds': durationInSeconds,
      'errorRate': errorRate,
      'qps': qps,
      'warningRate': warningRate,
    };
  }

  factory EnterpriseCrmEventbusStatsResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusStatsResponse(
      dimensions: pulumi.Input.fromValue(EnterpriseCrmEventbusStatsDimensionsResponse.fromMap((map['dimensions']! as Map).cast<String, dynamic>())),
      durationInSeconds: pulumi.Input.fromValue(map['durationInSeconds'] as double),
      errorRate: pulumi.Input.fromValue(map['errorRate'] as double),
      qps: pulumi.Input.fromValue(map['qps'] as double),
      warningRate: pulumi.Input.fromValue(map['warningRate'] as double),
    );
  }
}
