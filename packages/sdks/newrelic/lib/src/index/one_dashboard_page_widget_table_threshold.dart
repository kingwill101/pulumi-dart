// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetTableThreshold {
  /// The name of the column in the table, to which the threshold would need to be applied.
  final pulumi.Input<String>? columnName;
  /// The value 'from' which the threshold would need to be applied.
  final pulumi.Input<String>? from;
  /// The severity of the threshold, which would affect the visual appearance of the threshold (such as its color) accordingly. The value of this attribute would need to be one of the following - `warning`, `severe`, `critical`, `success`, `unavailable` which correspond to the severity labels _Warning_, _Approaching critical_, _Critical_, _Good_, _Neutral_ in the dropdown that helps specify the severity of thresholds in table widgets in the UI, respectively.
  final pulumi.Input<String>? severity;
  /// The value until which the threshold would need to be applied.
  final pulumi.Input<String>? to;

  /// Creates a new [OneDashboardPageWidgetTableThreshold].
  /// [columnName] The name of the column in the table, to which the threshold would need to be applied.
  /// [from] The value 'from' which the threshold would need to be applied.
  /// [severity] The severity of the threshold, which would affect the visual appearance of the threshold (such as its color) accordingly. The value of this attribute would need to be one of the following - `warning`, `severe`, `critical`, `success`, `unavailable` which correspond to the severity labels _Warning_, _Approaching critical_, _Critical_, _Good_, _Neutral_ in the dropdown that helps specify the severity of thresholds in table widgets in the UI, respectively.
  /// [to] The value until which the threshold would need to be applied.
  const OneDashboardPageWidgetTableThreshold({
    this.columnName,
    this.from,
    this.severity,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': ?columnName,
      'from': ?from,
      'severity': ?severity,
      'to': ?to,
    };
  }

  factory OneDashboardPageWidgetTableThreshold.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetTableThreshold(
      columnName: (() { final guardedValue = map['columnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

