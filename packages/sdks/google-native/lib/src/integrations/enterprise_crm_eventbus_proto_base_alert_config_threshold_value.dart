// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The threshold value of the metric, above or below which the alert should be triggered. See EventAlertConfig or TaskAlertConfig for the different alert metric types in each case. For the *RATE metrics, one or both of these fields may be set. Zero is the default value and can be left at that. For *PERCENTILE_DURATION metrics, one or both of these fields may be set, and also, the duration threshold value should be specified in the threshold_duration_ms member below. For *AVERAGE_DURATION metrics, these fields should not be set at all. A different member, threshold_duration_ms, must be set in the EventAlertConfig or the TaskAlertConfig.
class EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue {
  final pulumi.Input<String>? absolute;
  final pulumi.Input<int>? percentage;

  /// Creates a new [EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue].
  /// [absolute] Optional.
  /// [percentage] Optional.
  const EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue({
    this.absolute,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absolute': ?absolute,
      'percentage': ?percentage,
    };
  }

  factory EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue(
      absolute: (() { final guardedValue = map['absolute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

