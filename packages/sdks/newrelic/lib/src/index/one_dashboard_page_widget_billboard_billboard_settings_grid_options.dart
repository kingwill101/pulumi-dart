// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetBillboardBillboardSettingsGridOptions {
  /// (Optional) Number of columns to use for the grid layout.
  final pulumi.Input<int>? columns;
  /// (Optional) Grid configuration for label.
  final pulumi.Input<int>? label;
  /// (Required) A possible variable value
  final pulumi.Input<int>? value;

  /// Creates a new [OneDashboardPageWidgetBillboardBillboardSettingsGridOptions].
  /// [columns] (Optional) Number of columns to use for the grid layout.
  /// [label] (Optional) Grid configuration for label.
  /// [value] (Required) A possible variable value
  const OneDashboardPageWidgetBillboardBillboardSettingsGridOptions({
    this.columns,
    this.label,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
      'label': ?label,
      'value': ?value,
    };
  }

  factory OneDashboardPageWidgetBillboardBillboardSettingsGridOptions.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetBillboardBillboardSettingsGridOptions(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

