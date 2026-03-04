// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A gauge chart shows where the current value sits within a pre-defined range. The upper and lower bounds should define the possible range of values for the scorecard's query (inclusive).
class GaugeViewResponse {
  /// The lower bound for this gauge chart. The value of the chart should always be greater than or equal to this.
  final pulumi.Input<double> lowerBound;

  /// The upper bound for this gauge chart. The value of the chart should always be less than or equal to this.
  final pulumi.Input<double> upperBound;

  /// Creates a new [GaugeViewResponse].
  /// [lowerBound] The lower bound for this gauge chart. The value of the chart should always be greater than or equal to this.
  /// [upperBound] The upper bound for this gauge chart. The value of the chart should always be less than or equal to this.
  GaugeViewResponse({required this.lowerBound, required this.upperBound});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lowerBound': lowerBound,
      'upperBound': upperBound,
    };
  }

  factory GaugeViewResponse.fromMap(Map<String, dynamic> map) {
    return GaugeViewResponse(
      lowerBound: pulumi.Input.fromValue(map['lowerBound'] as double),
      upperBound: pulumi.Input.fromValue(map['upperBound'] as double),
    );
  }
}
