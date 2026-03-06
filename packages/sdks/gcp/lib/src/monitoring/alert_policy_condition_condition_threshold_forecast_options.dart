// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyConditionConditionThresholdForecastOptions {
  /// The length of time into the future to forecast
  /// whether a timeseries will violate the threshold.
  /// If the predicted value is found to violate the
  /// threshold, and the violation is observed in all
  /// forecasts made for the Configured `duration`,
  /// then the timeseries is considered to be failing.
  final pulumi.Input<String> forecastHorizon;

  /// Creates a new [AlertPolicyConditionConditionThresholdForecastOptions].
  /// [forecastHorizon] The length of time into the future to forecast
  const AlertPolicyConditionConditionThresholdForecastOptions({
    required this.forecastHorizon,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forecastHorizon': forecastHorizon,
    };
  }

  factory AlertPolicyConditionConditionThresholdForecastOptions.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConditionConditionThresholdForecastOptions(
      forecastHorizon: pulumi.Input.fromValue(map['forecastHorizon'] as String),
    );
  }
}

