// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options used when forecasting the time series and testing the predicted value against the threshold.
class ForecastOptionsResponse {
  /// The length of time into the future to forecast whether a time series will violate the threshold. If the predicted value is found to violate the threshold, and the violation is observed in all forecasts made for the configured duration, then the time series is considered to be failing. The forecast horizon can range from 1 hour to 60 hours.
  final pulumi.Input<String> forecastHorizon;

  /// Creates a new [ForecastOptionsResponse].
  /// [forecastHorizon] The length of time into the future to forecast whether a time series will violate the threshold. If the predicted value is found to violate the threshold, and the violation is observed in all forecasts made for the configured duration, then the time series is considered to be failing. The forecast horizon can range from 1 hour to 60 hours.
  ForecastOptionsResponse({required this.forecastHorizon});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'forecastHorizon': forecastHorizon};
  }

  factory ForecastOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ForecastOptionsResponse(
      forecastHorizon: pulumi.Input.fromValue(map['forecastHorizon'] as String),
    );
  }
}
