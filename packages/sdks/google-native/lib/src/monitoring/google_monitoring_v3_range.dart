// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Range of numerical values within min and max.
class GoogleMonitoringV3Range {
  /// Range maximum.
  final pulumi.Input<double>? max;

  /// Range minimum.
  final pulumi.Input<double>? min;

  /// Creates a new [GoogleMonitoringV3Range].
  /// [max] Range maximum.
  /// [min] Range minimum.
  GoogleMonitoringV3Range({this.max, this.min});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory GoogleMonitoringV3Range.fromMap(Map<String, dynamic> map) {
    return GoogleMonitoringV3Range(
      max: (() {
        final guardedValue = map['max'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      min: (() {
        final guardedValue = map['min'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
