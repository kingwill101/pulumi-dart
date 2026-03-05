// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The threshold value of the metric, above or below which the alert should be triggered. See EventAlertConfig or TaskAlertConfig for the different alert metric types in each case. For the *RATE metrics, one or both of these fields may be set. Zero is the default value and can be left at that. For *PERCENTILE_DURATION metrics, one or both of these fields may be set, and also, the duration threshold value should be specified in the threshold_duration_ms member below. For *AVERAGE_DURATION metrics, these fields should not be set at all. A different member, threshold_duration_ms, must be set in the EventAlertConfig or the TaskAlertConfig.
class EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValueResponse {
  final pulumi.Input<String> absolute;
  final pulumi.Input<int> percentage;

  /// Creates a new [EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValueResponse].
  /// [absolute] Required.
  /// [percentage] Required.
  EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValueResponse({
    required this.absolute,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absolute': absolute,
      'percentage': percentage,
    };
  }

  factory EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValueResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValueResponse(
      absolute: pulumi.Input.fromValue(map['absolute'] as String),
      percentage: pulumi.Input.fromValue(map['percentage'] as int),
    );
  }
}

