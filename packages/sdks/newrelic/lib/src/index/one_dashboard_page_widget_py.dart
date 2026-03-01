// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_py_color.dart';
import 'one_dashboard_page_widget_py_data_format.dart';
import 'one_dashboard_page_widget_py_initial_sorting.dart';
import 'one_dashboard_page_widget_py_nrql_query.dart';
import 'one_dashboard_page_widget_py_null_value.dart';
import 'one_dashboard_page_widget_py_unit.dart';

class OneDashboardPageWidgetPy {
  /// (Optional) A nested block that describes colors of your charts per series. See Nested Colors blocks below for details.
  final List<OneDashboardPageWidgetPyColor>? colors;
  /// (Required) Column position of widget from top left, starting at `1`.
  final int column;
  /// (Optional) A nested block that describes data format. See Nested data_format blocks below for details.
  final List<OneDashboardPageWidgetPyDataFormat>? dataFormats;
  /// (Optional) Enable or disable the Other group in visualisations. The other group is used if a facet on a query returns more than 2000 items for bar charts, pie charts, and tables. The other group aggregates the rest of the facets. Defaults to `false`
  final bool? facetShowOtherSeries;
  /// (Optional) Use this item to filter the current dashboard.
  final bool? filterCurrentDashboard;
  /// (Optional) Height of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `3`.
  final int? height;
  /// The ID of the widget.
  final String? id;
  /// (Optional) An argument with a boolean value that is supported only by variables of `type` _nrql_ - when true, the time range specified in the query will override the time picker on dashboards and other pages.
  final bool? ignoreTimeRange;
  /// (Optional) An attribute that describes the sorting mechanism for the table. This attribute requires specifying the following attributes in a nested block -
  final OneDashboardPageWidgetPyInitialSorting? initialSorting;
  /// (Optional) With this turned on, the legend will be displayed. Defaults to `true`.
  final bool? legendEnabled;
  /// (Optional) Related entity GUIDs. Currently only supports Dashboard entity GUIDs.
  final List<String>? linkedEntityGuids;
  /// (Optional) Configuration for variables of type `nrql`. See Nested nrql\_query blocks for Variables for details.
  final List<OneDashboardPageWidgetPyNrqlQuery> nrqlQueries;
  /// (Optional) A nested block that describes a Null Values. See Nested Null Values blocks below for details.
  final List<OneDashboardPageWidgetPyNullValue>? nullValues;
  /// (Optional) This attribute determines the frequency for data refresh specified in milliseconds. Accepted values are `auto` for default value, `0` for no refresh, `5000` for 5 seconds, `30000` for 30 seconds, `60000` for 60 seconds, `300000` for 5 minutes, `1800000` for 30 minutes, `3600000` for 60 minute, `10800000` for 3 hours, `43200000` for 12 hours and `86400000` for 24 hours.
  final String? refreshRate;
  /// (Required) Row position of widget from top left, starting at `1`.
  final int row;
  /// (Optional) A human-friendly display string for this value.
  final String title;
  /// (Optional) A nested block that describes units on your Y axis. See Nested Units blocks below for details.
  final List<OneDashboardPageWidgetPyUnit>? units;
  /// (Optional) Width of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `4`.
  final int? width;
  final double? yAxisLeftMax;
  /// , `y_axis_left_max` - (Optional) Adjust the Y axis to display the data within certain values by setting a minimum and maximum value for the axis for line charts and area charts. If no customization option is selected, dashboards automatically displays the full Y axis from 0 to the top value plus a margin.
  final double? yAxisLeftMin;

  /// Creates a new [OneDashboardPageWidgetPy].
  /// [colors] (Optional) A nested block that describes colors of your charts per series. See Nested Colors blocks below for details.
  /// [column] (Required) Column position of widget from top left, starting at `1`.
  /// [dataFormats] (Optional) A nested block that describes data format. See Nested data_format blocks below for details.
  /// [facetShowOtherSeries] (Optional) Enable or disable the Other group in visualisations. The other group is used if a facet on a query returns more than 2000 items for bar charts, pie charts, and tables. The other group aggregates the rest of the facets. Defaults to `false`
  /// [filterCurrentDashboard] (Optional) Use this item to filter the current dashboard.
  /// [height] (Optional) Height of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `3`.
  /// [id] The ID of the widget.
  /// [ignoreTimeRange] (Optional) An argument with a boolean value that is supported only by variables of `type` _nrql_ - when true, the time range specified in the query will override the time picker on dashboards and other pages.
  /// [initialSorting] (Optional) An attribute that describes the sorting mechanism for the table. This attribute requires specifying the following attributes in a nested block -
  /// [legendEnabled] (Optional) With this turned on, the legend will be displayed. Defaults to `true`.
  /// [linkedEntityGuids] (Optional) Related entity GUIDs. Currently only supports Dashboard entity GUIDs.
  /// [nrqlQueries] (Optional) Configuration for variables of type `nrql`. See Nested nrql\_query blocks for Variables for details.
  /// [nullValues] (Optional) A nested block that describes a Null Values. See Nested Null Values blocks below for details.
  /// [refreshRate] (Optional) This attribute determines the frequency for data refresh specified in milliseconds. Accepted values are `auto` for default value, `0` for no refresh, `5000` for 5 seconds, `30000` for 30 seconds, `60000` for 60 seconds, `300000` for 5 minutes, `1800000` for 30 minutes, `3600000` for 60 minute, `10800000` for 3 hours, `43200000` for 12 hours and `86400000` for 24 hours.
  /// [row] (Required) Row position of widget from top left, starting at `1`.
  /// [title] (Optional) A human-friendly display string for this value.
  /// [units] (Optional) A nested block that describes units on your Y axis. See Nested Units blocks below for details.
  /// [width] (Optional) Width of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `4`.
  /// [yAxisLeftMax] Optional.
  /// [yAxisLeftMin] , `y_axis_left_max` - (Optional) Adjust the Y axis to display the data within certain values by setting a minimum and maximum value for the axis for line charts and area charts. If no customization option is selected, dashboards automatically displays the full Y axis from 0 to the top value plus a margin.
  OneDashboardPageWidgetPy({
    this.colors,
    required this.column,
    this.dataFormats,
    this.facetShowOtherSeries,
    this.filterCurrentDashboard,
    this.height,
    this.id,
    this.ignoreTimeRange,
    this.initialSorting,
    this.legendEnabled,
    this.linkedEntityGuids,
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
      'colors': ?colors == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetPyColor, Map<String, dynamic>>(colors!, (value) => value.toMap()),
      'column': column,
      'dataFormats': ?dataFormats == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetPyDataFormat, Map<String, dynamic>>(dataFormats!, (value) => value.toMap()),
      'facetShowOtherSeries': ?facetShowOtherSeries,
      'filterCurrentDashboard': ?filterCurrentDashboard,
      'height': ?height,
      'id': ?id,
      'ignoreTimeRange': ?ignoreTimeRange,
      'initialSorting': ?initialSorting == null ? null : initialSorting!.toMap(),
      'legendEnabled': ?legendEnabled,
      'linkedEntityGuids': ?linkedEntityGuids,
      'nrqlQueries': pulumi.Input.encodeList<OneDashboardPageWidgetPyNrqlQuery, Map<String, dynamic>>(nrqlQueries, (value) => value.toMap()),
      'nullValues': ?nullValues == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetPyNullValue, Map<String, dynamic>>(nullValues!, (value) => value.toMap()),
      'refreshRate': ?refreshRate,
      'row': row,
      'title': title,
      'units': ?units == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetPyUnit, Map<String, dynamic>>(units!, (value) => value.toMap()),
      'width': ?width,
      'yAxisLeftMax': ?yAxisLeftMax,
      'yAxisLeftMin': ?yAxisLeftMin,
    };
  }

  factory OneDashboardPageWidgetPy.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetPy(
      colors: map['colors'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetPyColor>(map['colors'], (value) => OneDashboardPageWidgetPyColor.fromMap((value as Map).cast<String, dynamic>())),
      column: map['column'] as int,
      dataFormats: map['dataFormats'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetPyDataFormat>(map['dataFormats'], (value) => OneDashboardPageWidgetPyDataFormat.fromMap((value as Map).cast<String, dynamic>())),
      facetShowOtherSeries: map['facetShowOtherSeries'] == null ? null : map['facetShowOtherSeries'] as bool,
      filterCurrentDashboard: map['filterCurrentDashboard'] == null ? null : map['filterCurrentDashboard'] as bool,
      height: map['height'] == null ? null : map['height'] as int,
      id: map['id'] == null ? null : map['id'] as String,
      ignoreTimeRange: map['ignoreTimeRange'] == null ? null : map['ignoreTimeRange'] as bool,
      initialSorting: map['initialSorting'] == null ? null : OneDashboardPageWidgetPyInitialSorting.fromMap((map['initialSorting'] as Map).cast<String, dynamic>()),
      legendEnabled: map['legendEnabled'] == null ? null : map['legendEnabled'] as bool,
      linkedEntityGuids: map['linkedEntityGuids'] == null ? null : (map['linkedEntityGuids'] as List).cast<String>(),
      nrqlQueries: pulumi.Input.decodeList<OneDashboardPageWidgetPyNrqlQuery>(map['nrqlQueries'], (value) => OneDashboardPageWidgetPyNrqlQuery.fromMap((value as Map).cast<String, dynamic>())),
      nullValues: map['nullValues'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetPyNullValue>(map['nullValues'], (value) => OneDashboardPageWidgetPyNullValue.fromMap((value as Map).cast<String, dynamic>())),
      refreshRate: map['refreshRate'] == null ? null : map['refreshRate'] as String,
      row: map['row'] as int,
      title: map['title'] as String,
      units: map['units'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetPyUnit>(map['units'], (value) => OneDashboardPageWidgetPyUnit.fromMap((value as Map).cast<String, dynamic>())),
      width: map['width'] == null ? null : map['width'] as int,
      yAxisLeftMax: map['yAxisLeftMax'] == null ? null : map['yAxisLeftMax'] as double,
      yAxisLeftMin: map['yAxisLeftMin'] == null ? null : map['yAxisLeftMin'] as double,
    );
  }
}

