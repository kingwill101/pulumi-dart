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
  const DashboardFilter({
    this.filterType,
    required this.labelKey,
    this.stringValue,
    this.templateVariable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterType': ?pulumi.Input.mapOptionalInputValue<DashboardFilterFilterType, String>(filterType, (value) => value.wireValue),
      'labelKey': labelKey,
      'stringValue': ?stringValue,
      'templateVariable': ?templateVariable,
    };
  }

  factory DashboardFilter.fromMap(Map<String, dynamic> map) {
    return DashboardFilter(
      filterType: (() { final guardedValue = map['filterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardFilterFilterType.fromValue(guardedValue as String)); })(),
      labelKey: pulumi.Input.fromValue(map['labelKey'] as String),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateVariable: (() { final guardedValue = map['templateVariable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

