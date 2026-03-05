// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A filter to reduce the amount of data charted in relevant widgets.
class DashboardFilterResponse {
  /// The specified filter type
  final pulumi.Input<String> filterType;
  /// The key for the label
  final pulumi.Input<String> labelKey;
  /// A variable-length string value.
  final pulumi.Input<String> stringValue;
  /// The placeholder text that can be referenced in a filter string or MQL query. If omitted, the dashboard filter will be applied to all relevant widgets in the dashboard.
  final pulumi.Input<String> templateVariable;

  /// Creates a new [DashboardFilterResponse].
  /// [filterType] The specified filter type
  /// [labelKey] The key for the label
  /// [stringValue] A variable-length string value.
  /// [templateVariable] The placeholder text that can be referenced in a filter string or MQL query. If omitted, the dashboard filter will be applied to all relevant widgets in the dashboard.
  DashboardFilterResponse({
    required this.filterType,
    required this.labelKey,
    required this.stringValue,
    required this.templateVariable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterType': filterType,
      'labelKey': labelKey,
      'stringValue': stringValue,
      'templateVariable': templateVariable,
    };
  }

  factory DashboardFilterResponse.fromMap(Map<String, dynamic> map) {
    return DashboardFilterResponse(
      filterType: pulumi.Input.fromValue(map['filterType'] as String),
      labelKey: pulumi.Input.fromValue(map['labelKey'] as String),
      stringValue: pulumi.Input.fromValue(map['stringValue'] as String),
      templateVariable: pulumi.Input.fromValue(map['templateVariable'] as String),
    );
  }
}

