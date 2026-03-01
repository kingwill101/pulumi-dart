// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gauge_view_response.dart';
import 'spark_chart_view_response.dart';
import 'threshold_response.dart';
import 'time_series_query_response.dart';

/// A widget showing the latest value of a metric, and how this value relates to one or more thresholds.
class ScorecardResponse {
  /// Will cause the Scorecard to show only the value, with no indicator to its value relative to its thresholds.
  final Map<String, dynamic> blankView;
  /// Will cause the scorecard to show a gauge chart.
  final GaugeViewResponse gaugeView;
  /// Will cause the scorecard to show a spark chart.
  final SparkChartViewResponse sparkChartView;
  /// The thresholds used to determine the state of the scorecard given the time series' current value. For an actual value x, the scorecard is in a danger state if x is less than or equal to a danger threshold that triggers below, or greater than or equal to a danger threshold that triggers above. Similarly, if x is above/below a warning threshold that triggers above/below, then the scorecard is in a warning state - unless x also puts it in a danger state. (Danger trumps warning.)As an example, consider a scorecard with the following four thresholds: { value: 90, category: 'DANGER', trigger: 'ABOVE', }, { value: 70, category: 'WARNING', trigger: 'ABOVE', }, { value: 10, category: 'DANGER', trigger: 'BELOW', }, { value: 20, category: 'WARNING', trigger: 'BELOW', } Then: values less than or equal to 10 would put the scorecard in a DANGER state, values greater than 10 but less than or equal to 20 a WARNING state, values strictly between 20 and 70 an OK state, values greater than or equal to 70 but less than 90 a WARNING state, and values greater than or equal to 90 a DANGER state.
  final List<ThresholdResponse> thresholds;
  /// Fields for querying time series data from the Stackdriver metrics API.
  final TimeSeriesQueryResponse timeSeriesQuery;

  /// Creates a new [ScorecardResponse].
  /// [blankView] Will cause the Scorecard to show only the value, with no indicator to its value relative to its thresholds.
  /// [gaugeView] Will cause the scorecard to show a gauge chart.
  /// [sparkChartView] Will cause the scorecard to show a spark chart.
  /// [thresholds] The thresholds used to determine the state of the scorecard given the time series' current value. For an actual value x, the scorecard is in a danger state if x is less than or equal to a danger threshold that triggers below, or greater than or equal to a danger threshold that triggers above. Similarly, if x is above/below a warning threshold that triggers above/below, then the scorecard is in a warning state - unless x also puts it in a danger state. (Danger trumps warning.)As an example, consider a scorecard with the following four thresholds: { value: 90, category: 'DANGER', trigger: 'ABOVE', }, { value: 70, category: 'WARNING', trigger: 'ABOVE', }, { value: 10, category: 'DANGER', trigger: 'BELOW', }, { value: 20, category: 'WARNING', trigger: 'BELOW', } Then: values less than or equal to 10 would put the scorecard in a DANGER state, values greater than 10 but less than or equal to 20 a WARNING state, values strictly between 20 and 70 an OK state, values greater than or equal to 70 but less than 90 a WARNING state, and values greater than or equal to 90 a DANGER state.
  /// [timeSeriesQuery] Fields for querying time series data from the Stackdriver metrics API.
  ScorecardResponse({
    required this.blankView,
    required this.gaugeView,
    required this.sparkChartView,
    required this.thresholds,
    required this.timeSeriesQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blankView': blankView,
      'gaugeView': gaugeView.toMap(),
      'sparkChartView': sparkChartView.toMap(),
      'thresholds': pulumi.Input.encodeList<ThresholdResponse, Map<String, dynamic>>(thresholds, (value) => value.toMap()),
      'timeSeriesQuery': timeSeriesQuery.toMap(),
    };
  }

  factory ScorecardResponse.fromMap(Map<String, dynamic> map) {
    return ScorecardResponse(
      blankView: (map['blankView'] as Map).cast<String, dynamic>(),
      gaugeView: GaugeViewResponse.fromMap((map['gaugeView'] as Map).cast<String, dynamic>()),
      sparkChartView: SparkChartViewResponse.fromMap((map['sparkChartView'] as Map).cast<String, dynamic>()),
      thresholds: pulumi.Input.decodeList<ThresholdResponse>(map['thresholds'], (value) => ThresholdResponse.fromMap((value as Map).cast<String, dynamic>())),
      timeSeriesQuery: TimeSeriesQueryResponse.fromMap((map['timeSeriesQuery'] as Map).cast<String, dynamic>()),
    );
  }
}

