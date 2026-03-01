// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardPageWidgetFunnelDataFormat {
  /// (Optional) This attribute is provided when the `name` is that of a column comprising date/time values and the `type` attribute is set to `custom` defining the specific date format to be applied to your data.
  final String? format;
  /// The title of the dashboard.
  final String name;
  /// (Optional) This attribute is utilized when the `type` attribute is set to `decimal`, stipulating the precise number of digits after the decimal point for your data.
  final int? precision;
  /// (Required) Specifies the data type of the variable and where its possible values may come from. One of `enum`, `nrql` or `string`
  final String type;

  /// Creates a new [OneDashboardPageWidgetFunnelDataFormat].
  /// [format] (Optional) This attribute is provided when the `name` is that of a column comprising date/time values and the `type` attribute is set to `custom` defining the specific date format to be applied to your data.
  /// [name] The title of the dashboard.
  /// [precision] (Optional) This attribute is utilized when the `type` attribute is set to `decimal`, stipulating the precise number of digits after the decimal point for your data.
  /// [type] (Required) Specifies the data type of the variable and where its possible values may come from. One of `enum`, `nrql` or `string`
  OneDashboardPageWidgetFunnelDataFormat({
    this.format,
    required this.name,
    this.precision,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format,
      'name': name,
      'precision': ?precision,
      'type': type,
    };
  }

  factory OneDashboardPageWidgetFunnelDataFormat.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetFunnelDataFormat(
      format: map['format'] == null ? null : map['format'] as String,
      name: map['name'] as String,
      precision: map['precision'] == null ? null : map['precision'] as int,
      type: map['type'] as String,
    );
  }
}

