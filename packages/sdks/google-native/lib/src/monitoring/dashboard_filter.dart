// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_filter_filter_type.dart';

/// A filter to reduce the amount of data charted in relevant widgets.
class DashboardFilter {
  /// The specified filter type
  final pulumi.Input<DashboardFilterFilterType>? filterType;
  /// The key for the label
  final pulumi.Input<String> labelKey;
  /// A variable-length string value.
  final pulumi.Input<String>? stringValue;
  /// The placeholder text that can be referenced in a filter string or MQL query. If omitted, the dashboard filter will be applied to all relevant widgets in the dashboard.
  final pulumi.Input<String>? templateVariable;

  /// Creates a new [DashboardFilter].
  /// [filterType] The specified filter type
  /// [labelKey] The key for the label
  /// [stringValue] A variable-length string value.
  /// [templateVariable] The placeholder text that can be referenced in a filter string or MQL query. If omitted, the dashboard filter will be applied to all relevant widgets in the dashboard.
  DashboardFilter({
    this.filterType,
    required this.labelKey,
    this.stringValue,
    this.templateVariable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterType': ?pulumi.Input.mapOptionalInputValue<DashboardFilterFilterType, String>(filterType, (value) => value.value),
      'labelKey': labelKey,
      'stringValue': ?stringValue,
      'templateVariable': ?templateVariable,
    };
  }

  factory DashboardFilter.fromMap(Map<String, dynamic> map) {
    return DashboardFilter(
      filterType: map['filterType'] == null ? null : (DashboardFilterFilterType.fromValue(map['filterType'] as String)).input(),
      labelKey: (map['labelKey'] as String).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue'] as String).input(),
      templateVariable: map['templateVariable'] == null ? null : (map['templateVariable'] as String).input(),
    );
  }
}

