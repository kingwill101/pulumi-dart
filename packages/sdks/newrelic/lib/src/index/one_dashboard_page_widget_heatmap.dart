// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_heatmap_color.dart';
import 'one_dashboard_page_widget_heatmap_data_format.dart';
import 'one_dashboard_page_widget_heatmap_initial_sorting.dart';
import 'one_dashboard_page_widget_heatmap_nrql_query.dart';
import 'one_dashboard_page_widget_heatmap_null_value.dart';
import 'one_dashboard_page_widget_heatmap_unit.dart';

class OneDashboardPageWidgetHeatmap {
  /// (Optional) A nested block that describes colors of your charts per series. See Nested Colors blocks below for details.
  final pulumi.Input<List<OneDashboardPageWidgetHeatmapColor>>? colors;
  /// (Required) Column position of widget from top left, starting at `1`.
  final pulumi.Input<int> column;
  /// (Optional) A nested block that describes data format. See Nested data_format blocks below for details.
  final pulumi.Input<List<OneDashboardPageWidgetHeatmapDataFormat>>? dataFormats;
  /// (Optional) Enable or disable the Other group in visualisations. The other group is used if a facet on a query returns more than 2000 items for bar charts, pie charts, and tables. The other group aggregates the rest of the facets. Defaults to `false`
  final pulumi.Input<bool>? facetShowOtherSeries;
  /// (Optional) Use this item to filter the current dashboard.
  final pulumi.Input<bool>? filterCurrentDashboard;
  /// (Optional) Height of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `3`.
  final pulumi.Input<int>? height;
  /// The ID of the widget.
  final pulumi.Input<String>? id;
  /// (Optional) An argument with a boolean value that is supported only by variables of `type` _nrql_ - when true, the time range specified in the query will override the time picker on dashboards and other pages.
  final pulumi.Input<bool>? ignoreTimeRange;
  /// (Optional) An attribute that describes the sorting mechanism for the table. This attribute requires specifying the following attributes in a nested block -
  final pulumi.Input<OneDashboardPageWidgetHeatmapInitialSorting>? initialSorting;
  /// (Optional) With this turned on, the legend will be displayed. Defaults to `true`.
  final pulumi.Input<bool>? legendEnabled;
  /// (Optional) Related entity GUIDs. Currently only supports Dashboard entity GUIDs.
  final pulumi.Input<List<String>>? linkedEntityGuids;
  /// (Optional) Configuration for variables of type `nrql`. See Nested nrql\_query blocks for Variables for details.
  final pulumi.Input<List<OneDashboardPageWidgetHeatmapNrqlQuery>> nrqlQueries;
  /// (Optional) A nested block that describes a Null Values. See Nested Null Values blocks below for details.
  final pulumi.Input<List<OneDashboardPageWidgetHeatmapNullValue>>? nullValues;
  /// (Optional) This attribute determines the frequency for data refresh specified in milliseconds. Accepted values are `auto` for default value, `0` for no refresh, `5000` for 5 seconds, `30000` for 30 seconds, `60000` for 60 seconds, `300000` for 5 minutes, `1800000` for 30 minutes, `3600000` for 60 minute, `10800000` for 3 hours, `43200000` for 12 hours and `86400000` for 24 hours.
  final pulumi.Input<String>? refreshRate;
  /// (Required) Row position of widget from top left, starting at `1`.
  final pulumi.Input<int> row;
  /// (Optional) A human-friendly display string for this value.
  final pulumi.Input<String> title;
  /// (Optional) A nested block that describes units on your Y axis. See Nested Units blocks below for details.
  final pulumi.Input<List<OneDashboardPageWidgetHeatmapUnit>>? units;
  /// (Optional) Width of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `4`.
  final pulumi.Input<int>? width;
  final pulumi.Input<double>? yAxisLeftMax;
  /// , `y_axis_left_max` - (Optional) Adjust the Y axis to display the data within certain values by setting a minimum and maximum value for the axis for line charts and area charts. If no customization option is selected, dashboards automatically displays the full Y axis from 0 to the top value plus a margin.
  final pulumi.Input<double>? yAxisLeftMin;

  /// Creates a new [OneDashboardPageWidgetHeatmap].
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
  const OneDashboardPageWidgetHeatmap({
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
      'colors': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetHeatmapColor>, List<Map<String, dynamic>>>(colors, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetHeatmapColor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'column': column,
      'dataFormats': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetHeatmapDataFormat>, List<Map<String, dynamic>>>(dataFormats, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetHeatmapDataFormat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'facetShowOtherSeries': ?facetShowOtherSeries,
      'filterCurrentDashboard': ?filterCurrentDashboard,
      'height': ?height,
      'id': ?id,
      'ignoreTimeRange': ?ignoreTimeRange,
      'initialSorting': ?pulumi.Input.mapOptionalInputValue<OneDashboardPageWidgetHeatmapInitialSorting, Map<String, dynamic>>(initialSorting, (value) => value.toMap()),
      'legendEnabled': ?legendEnabled,
      'linkedEntityGuids': ?linkedEntityGuids,
      'nrqlQueries': pulumi.Input.mapInputValue<List<OneDashboardPageWidgetHeatmapNrqlQuery>, List<Map<String, dynamic>>>(nrqlQueries, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetHeatmapNrqlQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nullValues': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetHeatmapNullValue>, List<Map<String, dynamic>>>(nullValues, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetHeatmapNullValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'refreshRate': ?refreshRate,
      'row': row,
      'title': title,
      'units': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetHeatmapUnit>, List<Map<String, dynamic>>>(units, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetHeatmapUnit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'width': ?width,
      'yAxisLeftMax': ?yAxisLeftMax,
      'yAxisLeftMin': ?yAxisLeftMin,
    };
  }

  factory OneDashboardPageWidgetHeatmap.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetHeatmap(
      colors: (() { final guardedValue = map['colors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetHeatmapColor>(guardedValue, (value) => OneDashboardPageWidgetHeatmapColor.fromMap((value as Map).cast<String, dynamic>()))); })(),
      column: pulumi.Input.fromValue(map['column'] as int),
      dataFormats: (() { final guardedValue = map['dataFormats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetHeatmapDataFormat>(guardedValue, (value) => OneDashboardPageWidgetHeatmapDataFormat.fromMap((value as Map).cast<String, dynamic>()))); })(),
      facetShowOtherSeries: (() { final guardedValue = map['facetShowOtherSeries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filterCurrentDashboard: (() { final guardedValue = map['filterCurrentDashboard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      height: (() { final guardedValue = map['height']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreTimeRange: (() { final guardedValue = map['ignoreTimeRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      initialSorting: (() { final guardedValue = map['initialSorting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OneDashboardPageWidgetHeatmapInitialSorting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      legendEnabled: (() { final guardedValue = map['legendEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      linkedEntityGuids: (() { final guardedValue = map['linkedEntityGuids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nrqlQueries: pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetHeatmapNrqlQuery>(map['nrqlQueries']!, (value) => OneDashboardPageWidgetHeatmapNrqlQuery.fromMap((value as Map).cast<String, dynamic>()))),
      nullValues: (() { final guardedValue = map['nullValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetHeatmapNullValue>(guardedValue, (value) => OneDashboardPageWidgetHeatmapNullValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      refreshRate: (() { final guardedValue = map['refreshRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      row: pulumi.Input.fromValue(map['row'] as int),
      title: pulumi.Input.fromValue(map['title'] as String),
      units: (() { final guardedValue = map['units']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetHeatmapUnit>(guardedValue, (value) => OneDashboardPageWidgetHeatmapUnit.fromMap((value as Map).cast<String, dynamic>()))); })(),
      width: (() { final guardedValue = map['width']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      yAxisLeftMax: (() { final guardedValue = map['yAxisLeftMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      yAxisLeftMin: (() { final guardedValue = map['yAxisLeftMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

