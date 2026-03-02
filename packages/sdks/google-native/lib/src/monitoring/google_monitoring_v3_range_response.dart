// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Range of numerical values within min and max.
class GoogleMonitoringV3RangeResponse {
  /// Range maximum.
  final pulumi.Input<double> max;
  /// Range minimum.
  final pulumi.Input<double> min;

  /// Creates a new [GoogleMonitoringV3RangeResponse].
  /// [max] Range maximum.
  /// [min] Range minimum.
  GoogleMonitoringV3RangeResponse({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GoogleMonitoringV3RangeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleMonitoringV3RangeResponse(
      max: (map['max'] as double).input(),
      min: (map['min'] as double).input(),
    );
  }
}

