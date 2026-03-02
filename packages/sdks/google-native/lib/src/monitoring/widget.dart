// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_chart.dart';
import 'collapsible_group.dart';
import 'error_reporting_panel.dart';
import 'incident_list.dart';
import 'logs_panel.dart';
import 'pie_chart.dart';
import 'scorecard.dart';
import 'text.dart';
import 'time_series_table.dart';
import 'xy_chart.dart';

/// Widget contains a single dashboard component and configuration of how to present the component in the dashboard.
class Widget {
  /// A chart of alert policy data.
  final pulumi.Input<AlertChart>? alertChart;
  /// A blank space.
  final pulumi.Input<Map<String, dynamic>>? blank;
  /// A widget that groups the other widgets. All widgets that are within the area spanned by the grouping widget are considered member widgets.
  final pulumi.Input<CollapsibleGroup>? collapsibleGroup;
  /// A widget that displays a list of error groups.
  final pulumi.Input<ErrorReportingPanel>? errorReportingPanel;
  /// Optional. The widget id. Ids may be made up of alphanumerics, dashes and underscores. Widget ids are optional.
  final pulumi.Input<String>? id;
  /// A widget that shows list of incidents.
  final pulumi.Input<IncidentList>? incidentList;
  /// A widget that shows a stream of logs.
  final pulumi.Input<LogsPanel>? logsPanel;
  /// A widget that displays timeseries data as a pie chart.
  final pulumi.Input<PieChart>? pieChart;
  /// A scorecard summarizing time series data.
  final pulumi.Input<Scorecard>? scorecard;
  /// A raw string or markdown displaying textual content.
  final pulumi.Input<Text>? text;
  /// A widget that displays time series data in a tabular format.
  final pulumi.Input<TimeSeriesTable>? timeSeriesTable;
  /// Optional. The title of the widget.
  final pulumi.Input<String>? title;
  /// A chart of time series data.
  final pulumi.Input<XyChart>? xyChart;

  /// Creates a new [Widget].
  /// [alertChart] A chart of alert policy data.
  /// [blank] A blank space.
  /// [collapsibleGroup] A widget that groups the other widgets. All widgets that are within the area spanned by the grouping widget are considered member widgets.
  /// [errorReportingPanel] A widget that displays a list of error groups.
  /// [id] Optional. The widget id. Ids may be made up of alphanumerics, dashes and underscores. Widget ids are optional.
  /// [incidentList] A widget that shows list of incidents.
  /// [logsPanel] A widget that shows a stream of logs.
  /// [pieChart] A widget that displays timeseries data as a pie chart.
  /// [scorecard] A scorecard summarizing time series data.
  /// [text] A raw string or markdown displaying textual content.
  /// [timeSeriesTable] A widget that displays time series data in a tabular format.
  /// [title] Optional. The title of the widget.
  /// [xyChart] A chart of time series data.
  Widget({
    this.alertChart,
    this.blank,
    this.collapsibleGroup,
    this.errorReportingPanel,
    this.id,
    this.incidentList,
    this.logsPanel,
    this.pieChart,
    this.scorecard,
    this.text,
    this.timeSeriesTable,
    this.title,
    this.xyChart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertChart': ?pulumi.Input.mapOptionalInputValue<AlertChart, Map<String, dynamic>>(alertChart, (value) => value.toMap()),
      'blank': ?blank,
      'collapsibleGroup': ?pulumi.Input.mapOptionalInputValue<CollapsibleGroup, Map<String, dynamic>>(collapsibleGroup, (value) => value.toMap()),
      'errorReportingPanel': ?pulumi.Input.mapOptionalInputValue<ErrorReportingPanel, Map<String, dynamic>>(errorReportingPanel, (value) => value.toMap()),
      'id': ?id,
      'incidentList': ?pulumi.Input.mapOptionalInputValue<IncidentList, Map<String, dynamic>>(incidentList, (value) => value.toMap()),
      'logsPanel': ?pulumi.Input.mapOptionalInputValue<LogsPanel, Map<String, dynamic>>(logsPanel, (value) => value.toMap()),
      'pieChart': ?pulumi.Input.mapOptionalInputValue<PieChart, Map<String, dynamic>>(pieChart, (value) => value.toMap()),
      'scorecard': ?pulumi.Input.mapOptionalInputValue<Scorecard, Map<String, dynamic>>(scorecard, (value) => value.toMap()),
      'text': ?pulumi.Input.mapOptionalInputValue<Text, Map<String, dynamic>>(text, (value) => value.toMap()),
      'timeSeriesTable': ?pulumi.Input.mapOptionalInputValue<TimeSeriesTable, Map<String, dynamic>>(timeSeriesTable, (value) => value.toMap()),
      'title': ?title,
      'xyChart': ?pulumi.Input.mapOptionalInputValue<XyChart, Map<String, dynamic>>(xyChart, (value) => value.toMap()),
    };
  }

  factory Widget.fromMap(Map<String, dynamic> map) {
    return Widget(
      alertChart: map['alertChart'] == null ? null : (AlertChart.fromMap((map['alertChart'] as Map).cast<String, dynamic>())).input(),
      blank: map['blank'] == null ? null : ((map['blank'] as Map).cast<String, dynamic>()).input(),
      collapsibleGroup: map['collapsibleGroup'] == null ? null : (CollapsibleGroup.fromMap((map['collapsibleGroup'] as Map).cast<String, dynamic>())).input(),
      errorReportingPanel: map['errorReportingPanel'] == null ? null : (ErrorReportingPanel.fromMap((map['errorReportingPanel'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      incidentList: map['incidentList'] == null ? null : (IncidentList.fromMap((map['incidentList'] as Map).cast<String, dynamic>())).input(),
      logsPanel: map['logsPanel'] == null ? null : (LogsPanel.fromMap((map['logsPanel'] as Map).cast<String, dynamic>())).input(),
      pieChart: map['pieChart'] == null ? null : (PieChart.fromMap((map['pieChart'] as Map).cast<String, dynamic>())).input(),
      scorecard: map['scorecard'] == null ? null : (Scorecard.fromMap((map['scorecard'] as Map).cast<String, dynamic>())).input(),
      text: map['text'] == null ? null : (Text.fromMap((map['text'] as Map).cast<String, dynamic>())).input(),
      timeSeriesTable: map['timeSeriesTable'] == null ? null : (TimeSeriesTable.fromMap((map['timeSeriesTable'] as Map).cast<String, dynamic>())).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
      xyChart: map['xyChart'] == null ? null : (XyChart.fromMap((map['xyChart'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

