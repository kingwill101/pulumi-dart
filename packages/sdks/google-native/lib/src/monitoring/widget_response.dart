// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_chart_response.dart';
import 'collapsible_group_response.dart';
import 'error_reporting_panel_response.dart';
import 'incident_list_response.dart';
import 'logs_panel_response.dart';
import 'pie_chart_response.dart';
import 'scorecard_response.dart';
import 'text_response.dart';
import 'time_series_table_response.dart';
import 'xy_chart_response.dart';

/// Widget contains a single dashboard component and configuration of how to present the component in the dashboard.
class WidgetResponse {
  /// A chart of alert policy data.
  final pulumi.Input<AlertChartResponse> alertChart;

  /// A blank space.
  final pulumi.Input<Map<String, dynamic>> blank;

  /// A widget that groups the other widgets. All widgets that are within the area spanned by the grouping widget are considered member widgets.
  final pulumi.Input<CollapsibleGroupResponse> collapsibleGroup;

  /// A widget that displays a list of error groups.
  final pulumi.Input<ErrorReportingPanelResponse> errorReportingPanel;

  /// A widget that shows list of incidents.
  final pulumi.Input<IncidentListResponse> incidentList;

  /// A widget that shows a stream of logs.
  final pulumi.Input<LogsPanelResponse> logsPanel;

  /// A widget that displays timeseries data as a pie chart.
  final pulumi.Input<PieChartResponse> pieChart;

  /// A scorecard summarizing time series data.
  final pulumi.Input<ScorecardResponse> scorecard;

  /// A raw string or markdown displaying textual content.
  final pulumi.Input<TextResponse> text;

  /// A widget that displays time series data in a tabular format.
  final pulumi.Input<TimeSeriesTableResponse> timeSeriesTable;

  /// Optional. The title of the widget.
  final pulumi.Input<String> title;

  /// A chart of time series data.
  final pulumi.Input<XyChartResponse> xyChart;

  /// Creates a new [WidgetResponse].
  /// [alertChart] A chart of alert policy data.
  /// [blank] A blank space.
  /// [collapsibleGroup] A widget that groups the other widgets. All widgets that are within the area spanned by the grouping widget are considered member widgets.
  /// [errorReportingPanel] A widget that displays a list of error groups.
  /// [incidentList] A widget that shows list of incidents.
  /// [logsPanel] A widget that shows a stream of logs.
  /// [pieChart] A widget that displays timeseries data as a pie chart.
  /// [scorecard] A scorecard summarizing time series data.
  /// [text] A raw string or markdown displaying textual content.
  /// [timeSeriesTable] A widget that displays time series data in a tabular format.
  /// [title] Optional. The title of the widget.
  /// [xyChart] A chart of time series data.
  WidgetResponse({
    required this.alertChart,
    required this.blank,
    required this.collapsibleGroup,
    required this.errorReportingPanel,
    required this.incidentList,
    required this.logsPanel,
    required this.pieChart,
    required this.scorecard,
    required this.text,
    required this.timeSeriesTable,
    required this.title,
    required this.xyChart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertChart':
          pulumi.Input.mapInputValue<AlertChartResponse, Map<String, dynamic>>(
            alertChart,
            (value) => value.toMap(),
          ),
      'blank': blank,
      'collapsibleGroup':
          pulumi.Input.mapInputValue<
            CollapsibleGroupResponse,
            Map<String, dynamic>
          >(collapsibleGroup, (value) => value.toMap()),
      'errorReportingPanel':
          pulumi.Input.mapInputValue<
            ErrorReportingPanelResponse,
            Map<String, dynamic>
          >(errorReportingPanel, (value) => value.toMap()),
      'incidentList':
          pulumi.Input.mapInputValue<
            IncidentListResponse,
            Map<String, dynamic>
          >(incidentList, (value) => value.toMap()),
      'logsPanel':
          pulumi.Input.mapInputValue<LogsPanelResponse, Map<String, dynamic>>(
            logsPanel,
            (value) => value.toMap(),
          ),
      'pieChart':
          pulumi.Input.mapInputValue<PieChartResponse, Map<String, dynamic>>(
            pieChart,
            (value) => value.toMap(),
          ),
      'scorecard':
          pulumi.Input.mapInputValue<ScorecardResponse, Map<String, dynamic>>(
            scorecard,
            (value) => value.toMap(),
          ),
      'text': pulumi.Input.mapInputValue<TextResponse, Map<String, dynamic>>(
        text,
        (value) => value.toMap(),
      ),
      'timeSeriesTable':
          pulumi.Input.mapInputValue<
            TimeSeriesTableResponse,
            Map<String, dynamic>
          >(timeSeriesTable, (value) => value.toMap()),
      'title': title,
      'xyChart':
          pulumi.Input.mapInputValue<XyChartResponse, Map<String, dynamic>>(
            xyChart,
            (value) => value.toMap(),
          ),
    };
  }

  factory WidgetResponse.fromMap(Map<String, dynamic> map) {
    return WidgetResponse(
      alertChart: pulumi.Input.fromValue(
        AlertChartResponse.fromMap(
          (map['alertChart']! as Map).cast<String, dynamic>(),
        ),
      ),
      blank: pulumi.Input.fromValue(
        (map['blank']! as Map).cast<String, dynamic>(),
      ),
      collapsibleGroup: pulumi.Input.fromValue(
        CollapsibleGroupResponse.fromMap(
          (map['collapsibleGroup']! as Map).cast<String, dynamic>(),
        ),
      ),
      errorReportingPanel: pulumi.Input.fromValue(
        ErrorReportingPanelResponse.fromMap(
          (map['errorReportingPanel']! as Map).cast<String, dynamic>(),
        ),
      ),
      incidentList: pulumi.Input.fromValue(
        IncidentListResponse.fromMap(
          (map['incidentList']! as Map).cast<String, dynamic>(),
        ),
      ),
      logsPanel: pulumi.Input.fromValue(
        LogsPanelResponse.fromMap(
          (map['logsPanel']! as Map).cast<String, dynamic>(),
        ),
      ),
      pieChart: pulumi.Input.fromValue(
        PieChartResponse.fromMap(
          (map['pieChart']! as Map).cast<String, dynamic>(),
        ),
      ),
      scorecard: pulumi.Input.fromValue(
        ScorecardResponse.fromMap(
          (map['scorecard']! as Map).cast<String, dynamic>(),
        ),
      ),
      text: pulumi.Input.fromValue(
        TextResponse.fromMap((map['text']! as Map).cast<String, dynamic>()),
      ),
      timeSeriesTable: pulumi.Input.fromValue(
        TimeSeriesTableResponse.fromMap(
          (map['timeSeriesTable']! as Map).cast<String, dynamic>(),
        ),
      ),
      title: pulumi.Input.fromValue(map['title'] as String),
      xyChart: pulumi.Input.fromValue(
        XyChartResponse.fromMap(
          (map['xyChart']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
