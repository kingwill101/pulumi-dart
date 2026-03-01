// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_billboard_billboard_settings.dart';
import 'one_dashboard_page_widget_billboard_color.dart';
import 'one_dashboard_page_widget_billboard_data_format.dart';
import 'one_dashboard_page_widget_billboard_initial_sorting.dart';
import 'one_dashboard_page_widget_billboard_nrql_query.dart';
import 'one_dashboard_page_widget_billboard_null_value.dart';
import 'one_dashboard_page_widget_billboard_unit.dart';

class OneDashboardPageWidgetBillboard {
  /// (Optional) A nested block that describes billboard specific settings. See Nested billboard\_settings blocks below for details.
  final OneDashboardPageWidgetBillboardBillboardSettings? billboardSettings;
  /// (Optional) A nested block that describes colors of your charts per series. See Nested Colors blocks below for details.
  final List<OneDashboardPageWidgetBillboardColor>? colors;
  /// (Required) Column position of widget from top left, starting at `1`.
  final int column;
  /// (Optional) Threshold above which the displayed value will be styled with a red color.
  final String? critical;
  /// (Optional) A nested block that describes data format. See Nested data_format blocks below for details.
  final List<OneDashboardPageWidgetBillboardDataFormat>? dataFormats;
  /// (Optional) Enable or disable the Other group in visualisations. The other group is used if a facet on a query returns more than 2000 items for bar charts, pie charts, and tables. The other group aggregates the rest of the facets. Defaults to `false`
  final bool? facetShowOtherSeries;
  /// (Optional) Height of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `3`.
  final int? height;
  /// The ID of the widget.
  final String? id;
  /// (Optional) An argument with a boolean value that is supported only by variables of `type` _nrql_ - when true, the time range specified in the query will override the time picker on dashboards and other pages.
  final bool? ignoreTimeRange;
  /// (Optional) An attribute that describes the sorting mechanism for the table. This attribute requires specifying the following attributes in a nested block -
  final OneDashboardPageWidgetBillboardInitialSorting? initialSorting;
  /// (Optional) With this turned on, the legend will be displayed. Defaults to `true`.
  final bool? legendEnabled;
  /// (Optional) Configuration for variables of type `nrql`. See Nested nrql\_query blocks for Variables for details.
  final List<OneDashboardPageWidgetBillboardNrqlQuery> nrqlQueries;
  /// (Optional) A nested block that describes a Null Values. See Nested Null Values blocks below for details.
  final List<OneDashboardPageWidgetBillboardNullValue>? nullValues;
  /// (Optional) This attribute determines the frequency for data refresh specified in milliseconds. Accepted values are `auto` for default value, `0` for no refresh, `5000` for 5 seconds, `30000` for 30 seconds, `60000` for 60 seconds, `300000` for 5 minutes, `1800000` for 30 minutes, `3600000` for 60 minute, `10800000` for 3 hours, `43200000` for 12 hours and `86400000` for 24 hours.
  final String? refreshRate;
  /// (Required) Row position of widget from top left, starting at `1`.
  final int row;
  /// (Optional) A human-friendly display string for this value.
  final String title;
  /// (Optional) A nested block that describes units on your Y axis. See Nested Units blocks below for details.
  final List<OneDashboardPageWidgetBillboardUnit>? units;
  /// (Optional) Threshold above which the displayed value will be styled with a yellow color.
  final String? warning;
  /// (Optional) Width of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `4`.
  final int? width;
  final double? yAxisLeftMax;
  /// , `y_axis_left_max` - (Optional) Adjust the Y axis to display the data within certain values by setting a minimum and maximum value for the axis for line charts and area charts. If no customization option is selected, dashboards automatically displays the full Y axis from 0 to the top value plus a margin.
  final double? yAxisLeftMin;

  /// Creates a new [OneDashboardPageWidgetBillboard].
  /// [billboardSettings] (Optional) A nested block that describes billboard specific settings. See Nested billboard\_settings blocks below for details.
  /// [colors] (Optional) A nested block that describes colors of your charts per series. See Nested Colors blocks below for details.
  /// [column] (Required) Column position of widget from top left, starting at `1`.
  /// [critical] (Optional) Threshold above which the displayed value will be styled with a red color.
  /// [dataFormats] (Optional) A nested block that describes data format. See Nested data_format blocks below for details.
  /// [facetShowOtherSeries] (Optional) Enable or disable the Other group in visualisations. The other group is used if a facet on a query returns more than 2000 items for bar charts, pie charts, and tables. The other group aggregates the rest of the facets. Defaults to `false`
  /// [height] (Optional) Height of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `3`.
  /// [id] The ID of the widget.
  /// [ignoreTimeRange] (Optional) An argument with a boolean value that is supported only by variables of `type` _nrql_ - when true, the time range specified in the query will override the time picker on dashboards and other pages.
  /// [initialSorting] (Optional) An attribute that describes the sorting mechanism for the table. This attribute requires specifying the following attributes in a nested block -
  /// [legendEnabled] (Optional) With this turned on, the legend will be displayed. Defaults to `true`.
  /// [nrqlQueries] (Optional) Configuration for variables of type `nrql`. See Nested nrql\_query blocks for Variables for details.
  /// [nullValues] (Optional) A nested block that describes a Null Values. See Nested Null Values blocks below for details.
  /// [refreshRate] (Optional) This attribute determines the frequency for data refresh specified in milliseconds. Accepted values are `auto` for default value, `0` for no refresh, `5000` for 5 seconds, `30000` for 30 seconds, `60000` for 60 seconds, `300000` for 5 minutes, `1800000` for 30 minutes, `3600000` for 60 minute, `10800000` for 3 hours, `43200000` for 12 hours and `86400000` for 24 hours.
  /// [row] (Required) Row position of widget from top left, starting at `1`.
  /// [title] (Optional) A human-friendly display string for this value.
  /// [units] (Optional) A nested block that describes units on your Y axis. See Nested Units blocks below for details.
  /// [warning] (Optional) Threshold above which the displayed value will be styled with a yellow color.
  /// [width] (Optional) Width of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `4`.
  /// [yAxisLeftMax] Optional.
  /// [yAxisLeftMin] , `y_axis_left_max` - (Optional) Adjust the Y axis to display the data within certain values by setting a minimum and maximum value for the axis for line charts and area charts. If no customization option is selected, dashboards automatically displays the full Y axis from 0 to the top value plus a margin.
  OneDashboardPageWidgetBillboard({
    this.billboardSettings,
    this.colors,
    required this.column,
    this.critical,
    this.dataFormats,
    this.facetShowOtherSeries,
    this.height,
    this.id,
    this.ignoreTimeRange,
    this.initialSorting,
    this.legendEnabled,
    required this.nrqlQueries,
    this.nullValues,
    this.refreshRate,
    required this.row,
    required this.title,
    this.units,
    this.warning,
    this.width,
    this.yAxisLeftMax,
    this.yAxisLeftMin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billboardSettings': ?billboardSettings == null ? null : billboardSettings!.toMap(),
      'colors': ?colors == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetBillboardColor, Map<String, dynamic>>(colors!, (value) => value.toMap()),
      'column': column,
      'critical': ?critical,
      'dataFormats': ?dataFormats == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetBillboardDataFormat, Map<String, dynamic>>(dataFormats!, (value) => value.toMap()),
      'facetShowOtherSeries': ?facetShowOtherSeries,
      'height': ?height,
      'id': ?id,
      'ignoreTimeRange': ?ignoreTimeRange,
      'initialSorting': ?initialSorting == null ? null : initialSorting!.toMap(),
      'legendEnabled': ?legendEnabled,
      'nrqlQueries': pulumi.Input.encodeList<OneDashboardPageWidgetBillboardNrqlQuery, Map<String, dynamic>>(nrqlQueries, (value) => value.toMap()),
      'nullValues': ?nullValues == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetBillboardNullValue, Map<String, dynamic>>(nullValues!, (value) => value.toMap()),
      'refreshRate': ?refreshRate,
      'row': row,
      'title': title,
      'units': ?units == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetBillboardUnit, Map<String, dynamic>>(units!, (value) => value.toMap()),
      'warning': ?warning,
      'width': ?width,
      'yAxisLeftMax': ?yAxisLeftMax,
      'yAxisLeftMin': ?yAxisLeftMin,
    };
  }

  factory OneDashboardPageWidgetBillboard.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetBillboard(
      billboardSettings: map['billboardSettings'] == null ? null : OneDashboardPageWidgetBillboardBillboardSettings.fromMap((map['billboardSettings'] as Map).cast<String, dynamic>()),
      colors: map['colors'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetBillboardColor>(map['colors'], (value) => OneDashboardPageWidgetBillboardColor.fromMap((value as Map).cast<String, dynamic>())),
      column: map['column'] as int,
      critical: map['critical'] == null ? null : map['critical'] as String,
      dataFormats: map['dataFormats'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetBillboardDataFormat>(map['dataFormats'], (value) => OneDashboardPageWidgetBillboardDataFormat.fromMap((value as Map).cast<String, dynamic>())),
      facetShowOtherSeries: map['facetShowOtherSeries'] == null ? null : map['facetShowOtherSeries'] as bool,
      height: map['height'] == null ? null : map['height'] as int,
      id: map['id'] == null ? null : map['id'] as String,
      ignoreTimeRange: map['ignoreTimeRange'] == null ? null : map['ignoreTimeRange'] as bool,
      initialSorting: map['initialSorting'] == null ? null : OneDashboardPageWidgetBillboardInitialSorting.fromMap((map['initialSorting'] as Map).cast<String, dynamic>()),
      legendEnabled: map['legendEnabled'] == null ? null : map['legendEnabled'] as bool,
      nrqlQueries: pulumi.Input.decodeList<OneDashboardPageWidgetBillboardNrqlQuery>(map['nrqlQueries'], (value) => OneDashboardPageWidgetBillboardNrqlQuery.fromMap((value as Map).cast<String, dynamic>())),
      nullValues: map['nullValues'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetBillboardNullValue>(map['nullValues'], (value) => OneDashboardPageWidgetBillboardNullValue.fromMap((value as Map).cast<String, dynamic>())),
      refreshRate: map['refreshRate'] == null ? null : map['refreshRate'] as String,
      row: map['row'] as int,
      title: map['title'] as String,
      units: map['units'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetBillboardUnit>(map['units'], (value) => OneDashboardPageWidgetBillboardUnit.fromMap((value as Map).cast<String, dynamic>())),
      warning: map['warning'] == null ? null : map['warning'] as String,
      width: map['width'] == null ? null : map['width'] as int,
      yAxisLeftMax: map['yAxisLeftMax'] == null ? null : map['yAxisLeftMax'] as double,
      yAxisLeftMin: map['yAxisLeftMin'] == null ? null : map['yAxisLeftMin'] as double,
    );
  }
}

