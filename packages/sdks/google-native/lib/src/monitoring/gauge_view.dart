// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A gauge chart shows where the current value sits within a pre-defined range. The upper and lower bounds should define the possible range of values for the scorecard's query (inclusive).
class GaugeView {
  /// The lower bound for this gauge chart. The value of the chart should always be greater than or equal to this.
  final pulumi.Input<double>? lowerBound;

  /// The upper bound for this gauge chart. The value of the chart should always be less than or equal to this.
  final pulumi.Input<double>? upperBound;

  /// Creates a new [GaugeView].
  /// [lowerBound] The lower bound for this gauge chart. The value of the chart should always be greater than or equal to this.
  /// [upperBound] The upper bound for this gauge chart. The value of the chart should always be less than or equal to this.
  GaugeView({this.lowerBound, this.upperBound});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lowerBound': ?lowerBound,
      'upperBound': ?upperBound,
    };
  }

  factory GaugeView.fromMap(Map<String, dynamic> map) {
    return GaugeView(
      lowerBound: (() {
        final guardedValue = map['lowerBound'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      upperBound: (() {
        final guardedValue = map['upperBound'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
