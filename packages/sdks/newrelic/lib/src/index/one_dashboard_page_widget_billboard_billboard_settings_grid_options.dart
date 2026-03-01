// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardPageWidgetBillboardBillboardSettingsGridOptions {
  /// (Optional) Number of columns to use for the grid layout.
  final int? columns;
  /// (Optional) Grid configuration for label.
  final int? label;
  /// (Required) A possible variable value
  final int? value;

  /// Creates a new [OneDashboardPageWidgetBillboardBillboardSettingsGridOptions].
  /// [columns] (Optional) Number of columns to use for the grid layout.
  /// [label] (Optional) Grid configuration for label.
  /// [value] (Required) A possible variable value
  OneDashboardPageWidgetBillboardBillboardSettingsGridOptions({
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
      columns: map['columns'] == null ? null : map['columns'] as int,
      label: map['label'] == null ? null : map['label'] as int,
      value: map['value'] == null ? null : map['value'] as int,
    );
  }
}

