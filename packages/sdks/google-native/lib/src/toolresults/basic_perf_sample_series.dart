// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_perf_sample_series_perf_metric_type.dart';
import 'basic_perf_sample_series_perf_unit.dart';
import 'basic_perf_sample_series_sample_series_label.dart';

/// Encapsulates the metadata for basic sample series represented by a line chart
class BasicPerfSampleSeries {
  final pulumi.Input<BasicPerfSampleSeriesPerfMetricType>? perfMetricType;
  final pulumi.Input<BasicPerfSampleSeriesPerfUnit>? perfUnit;
  final pulumi.Input<BasicPerfSampleSeriesSampleSeriesLabel>? sampleSeriesLabel;

  /// Creates a new [BasicPerfSampleSeries].
  /// [perfMetricType] Optional.
  /// [perfUnit] Optional.
  /// [sampleSeriesLabel] Optional.
  BasicPerfSampleSeries({
    this.perfMetricType,
    this.perfUnit,
    this.sampleSeriesLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perfMetricType': ?pulumi.Input.mapOptionalInputValue<BasicPerfSampleSeriesPerfMetricType, String>(perfMetricType, (value) => value.value),
      'perfUnit': ?pulumi.Input.mapOptionalInputValue<BasicPerfSampleSeriesPerfUnit, String>(perfUnit, (value) => value.value),
      'sampleSeriesLabel': ?pulumi.Input.mapOptionalInputValue<BasicPerfSampleSeriesSampleSeriesLabel, String>(sampleSeriesLabel, (value) => value.value),
    };
  }

  factory BasicPerfSampleSeries.fromMap(Map<String, dynamic> map) {
    return BasicPerfSampleSeries(
      perfMetricType: map['perfMetricType'] == null ? null : (BasicPerfSampleSeriesPerfMetricType.fromValue(map['perfMetricType'] as String)).input(),
      perfUnit: map['perfUnit'] == null ? null : (BasicPerfSampleSeriesPerfUnit.fromValue(map['perfUnit'] as String)).input(),
      sampleSeriesLabel: map['sampleSeriesLabel'] == null ? null : (BasicPerfSampleSeriesSampleSeriesLabel.fromValue(map['sampleSeriesLabel'] as String)).input(),
    );
  }
}

