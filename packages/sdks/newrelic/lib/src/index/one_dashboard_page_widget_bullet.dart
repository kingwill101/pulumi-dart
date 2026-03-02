// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_bullet_color.dart';
import 'one_dashboard_page_widget_bullet_data_format.dart';
import 'one_dashboard_page_widget_bullet_initial_sorting.dart';
import 'one_dashboard_page_widget_bullet_nrql_query.dart';
import 'one_dashboard_page_widget_bullet_null_value.dart';
import 'one_dashboard_page_widget_bullet_unit.dart';

class OneDashboardPageWidgetBullet {
  /// (Optional) A nested block that describes colors of your charts per series. See Nested Colors blocks below for details.
  final pulumi.Input<List<OneDashboardPageWidgetBulletColor>>? colors;
  /// (Required) Column position of widget from top left, starting at `1`.
  final pulumi.Input<int> column;
  /// (Optional) A nested block that describes data format. See Nested data_format blocks below for details.
  final pulumi.Input<List<OneDashboardPageWidgetBulletDataFormat>>? dataFormats;
  /// (Optional) Enable or disable the Other group in visualisations. The other group is used if a facet on a query returns more than 2000 items for bar charts, pie charts, and tables. The other group aggregates the rest of the facets. Defaults to `false`
  final pulumi.Input<bool>? facetShowOtherSeries;
  /// (Optional) Height of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `3`.
  final pulumi.Input<int>? height;
  /// The ID of the widget.
  final pulumi.Input<String>? id;
  /// (Optional) An argument with a boolean value that is supported only by variables of `type` _nrql_ - when true, the time range specified in the query will override the time picker on dashboards and other pages.
  final pulumi.Input<bool>? ignoreTimeRange;
  /// (Optional) An attribute that describes the sorting mechanism for the table. This attribute requires specifying the following attributes in a nested block -
  final pulumi.Input<OneDashboardPageWidgetBulletInitialSorting>? initialSorting;
  /// (Optional) With this turned on, the legend will be displayed. Defaults to `true`.
  final pulumi.Input<bool>? legendEnabled;
  /// (Required) Visualization limit for the widget.
  final pulumi.Input<double> limit;
  /// (Optional) Configuration for variables of type `nrql`. See Nested nrql\_query blocks for Variables for details.
  final pulumi.Input<List<OneDashboardPageWidgetBulletNrqlQuery>> nrqlQueries;
  /// (Optional) A nested block that describes a Null Values. See Nested Null Values blocks below for details.
  final pulumi.Input<List<OneDashboardPageWidgetBulletNullValue>>? nullValues;
  /// (Optional) This attribute determines the frequency for data refresh specified in milliseconds. Accepted values are `auto` for default value, `0` for no refresh, `5000` for 5 seconds, `30000` for 30 seconds, `60000` for 60 seconds, `300000` for 5 minutes, `1800000` for 30 minutes, `3600000` for 60 minute, `10800000` for 3 hours, `43200000` for 12 hours and `86400000` for 24 hours.
  final pulumi.Input<String>? refreshRate;
  /// (Required) Row position of widget from top left, starting at `1`.
  final pulumi.Input<int> row;
  /// (Optional) A human-friendly display string for this value.
  final pulumi.Input<String> title;
  /// (Optional) A nested block that describes units on your Y axis. See Nested Units blocks below for details.
  final pulumi.Input<List<OneDashboardPageWidgetBulletUnit>>? units;
  /// (Optional) Width of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `4`.
  final pulumi.Input<int>? width;
  final pulumi.Input<double>? yAxisLeftMax;
  /// , `y_axis_left_max` - (Optional) Adjust the Y axis to display the data within certain values by setting a minimum and maximum value for the axis for line charts and area charts. If no customization option is selected, dashboards automatically displays the full Y axis from 0 to the top value plus a margin.
  final pulumi.Input<double>? yAxisLeftMin;

  /// Creates a new [OneDashboardPageWidgetBullet].
  /// [colors] (Optional) A nested block that describes colors of your charts per series. See Nested Colors blocks below for details.
  /// [column] (Required) Column position of widget from top left, starting at `1`.
  /// [dataFormats] (Optional) A nested block that describes data format. See Nested data_format blocks below for details.
  /// [facetShowOtherSeries] (Optional) Enable or disable the Other group in visualisations. The other group is used if a facet on a query returns more than 2000 items for bar charts, pie charts, and tables. The other group aggregates the rest of the facets. Defaults to `false`
  /// [height] (Optional) Height of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `3`.
  /// [id] The ID of the widget.
  /// [ignoreTimeRange] (Optional) An argument with a boolean value that is supported only by variables of `type` _nrql_ - when true, the time range specified in the query will override the time picker on dashboards and other pages.
  /// [initialSorting] (Optional) An attribute that describes the sorting mechanism for the table. This attribute requires specifying the following attributes in a nested block -
  /// [legendEnabled] (Optional) With this turned on, the legend will be displayed. Defaults to `true`.
  /// [limit] (Required) Visualization limit for the widget.
  /// [nrqlQueries] (Optional) Configuration for variables of type `nrql`. See Nested nrql\_query blocks for Variables for details.
  /// [nullValues] (Optional) A nested block that describes a Null Values. See Nested Null Values blocks below for details.
  /// [refreshRate] (Optional) This attribute determines the frequency for data refresh specified in milliseconds. Accepted values are `auto` for default value, `0` for no refresh, `5000` for 5 seconds, `30000` for 30 seconds, `60000` for 60 seconds, `300000` for 5 minutes, `1800000` for 30 minutes, `3600000` for 60 minute, `10800000` for 3 hours, `43200000` for 12 hours and `86400000` for 24 hours.
  /// [row] (Required) Row position of widget from top left, starting at `1`.
  /// [title] (Optional) A human-friendly display string for this value.
  /// [units] (Optional) A nested block that describes units on your Y axis. See Nested Units blocks below for details.
  /// [width] (Optional) Width of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `4`.
  /// [yAxisLeftMax] Optional.
  /// [yAxisLeftMin] , `y_axis_left_max` - (Optional) Adjust the Y axis to display the data within certain values by setting a minimum and maximum value for the axis for line charts and area charts. If no customization option is selected, dashboards automatically displays the full Y axis from 0 to the top value plus a margin.
  OneDashboardPageWidgetBullet({
    this.colors,
    required this.column,
    this.dataFormats,
    this.facetShowOtherSeries,
    this.height,
    this.id,
    this.ignoreTimeRange,
    this.initialSorting,
    this.legendEnabled,
    required this.limit,
    required this.nrqlQueries,
    this.nullValues,
    this.refreshRate,
    required this.row,
    required this.title,
    this.units,
    this.width,
    this.yAxisLeftMax,
    this.yAxisLeftMin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'colors': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetBulletColor>, List<Map<String, dynamic>>>(colors, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetBulletColor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'column': column,
      'dataFormats': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetBulletDataFormat>, List<Map<String, dynamic>>>(dataFormats, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetBulletDataFormat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'facetShowOtherSeries': ?facetShowOtherSeries,
      'height': ?height,
      'id': ?id,
      'ignoreTimeRange': ?ignoreTimeRange,
      'initialSorting': ?pulumi.Input.mapOptionalInputValue<OneDashboardPageWidgetBulletInitialSorting, Map<String, dynamic>>(initialSorting, (value) => value.toMap()),
      'legendEnabled': ?legendEnabled,
      'limit': limit,
      'nrqlQueries': pulumi.Input.mapInputValue<List<OneDashboardPageWidgetBulletNrqlQuery>, List<Map<String, dynamic>>>(nrqlQueries, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetBulletNrqlQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nullValues': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetBulletNullValue>, List<Map<String, dynamic>>>(nullValues, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetBulletNullValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'refreshRate': ?refreshRate,
      'row': row,
      'title': title,
      'units': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetBulletUnit>, List<Map<String, dynamic>>>(units, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetBulletUnit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'width': ?width,
      'yAxisLeftMax': ?yAxisLeftMax,
      'yAxisLeftMin': ?yAxisLeftMin,
    };
  }

  factory OneDashboardPageWidgetBullet.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetBullet(
      colors: map['colors'] == null ? null : (pulumi.Input.decodeList<OneDashboardPageWidgetBulletColor>(map['colors']!, (value) => OneDashboardPageWidgetBulletColor.fromMap((value as Map).cast<String, dynamic>()))).input(),
      column: (map['column'] as int).input(),
      dataFormats: map['dataFormats'] == null ? null : (pulumi.Input.decodeList<OneDashboardPageWidgetBulletDataFormat>(map['dataFormats']!, (value) => OneDashboardPageWidgetBulletDataFormat.fromMap((value as Map).cast<String, dynamic>()))).input(),
      facetShowOtherSeries: map['facetShowOtherSeries'] == null ? null : (map['facetShowOtherSeries']! as bool).input(),
      height: map['height'] == null ? null : (map['height']! as int).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ignoreTimeRange: map['ignoreTimeRange'] == null ? null : (map['ignoreTimeRange']! as bool).input(),
      initialSorting: map['initialSorting'] == null ? null : (OneDashboardPageWidgetBulletInitialSorting.fromMap((map['initialSorting']! as Map).cast<String, dynamic>())).input(),
      legendEnabled: map['legendEnabled'] == null ? null : (map['legendEnabled']! as bool).input(),
      limit: (map['limit'] as double).input(),
      nrqlQueries: (pulumi.Input.decodeList<OneDashboardPageWidgetBulletNrqlQuery>(map['nrqlQueries'], (value) => OneDashboardPageWidgetBulletNrqlQuery.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nullValues: map['nullValues'] == null ? null : (pulumi.Input.decodeList<OneDashboardPageWidgetBulletNullValue>(map['nullValues']!, (value) => OneDashboardPageWidgetBulletNullValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
      refreshRate: map['refreshRate'] == null ? null : (map['refreshRate']! as String).input(),
      row: (map['row'] as int).input(),
      title: (map['title'] as String).input(),
      units: map['units'] == null ? null : (pulumi.Input.decodeList<OneDashboardPageWidgetBulletUnit>(map['units']!, (value) => OneDashboardPageWidgetBulletUnit.fromMap((value as Map).cast<String, dynamic>()))).input(),
      width: map['width'] == null ? null : (map['width']! as int).input(),
      yAxisLeftMax: map['yAxisLeftMax'] == null ? null : (map['yAxisLeftMax']! as double).input(),
      yAxisLeftMin: map['yAxisLeftMin'] == null ? null : (map['yAxisLeftMin']! as double).input(),
    );
  }
}

