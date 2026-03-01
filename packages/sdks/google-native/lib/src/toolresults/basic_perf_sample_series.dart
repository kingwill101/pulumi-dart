// ignore_for_file: unused_element, unnecessary_cast

import 'basic_perf_sample_series_perf_metric_type.dart';
import 'basic_perf_sample_series_perf_unit.dart';
import 'basic_perf_sample_series_sample_series_label.dart';

/// Encapsulates the metadata for basic sample series represented by a line chart
class BasicPerfSampleSeries {
  final BasicPerfSampleSeriesPerfMetricType? perfMetricType;
  final BasicPerfSampleSeriesPerfUnit? perfUnit;
  final BasicPerfSampleSeriesSampleSeriesLabel? sampleSeriesLabel;

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
      'perfMetricType': ?perfMetricType == null ? null : perfMetricType!.value,
      'perfUnit': ?perfUnit == null ? null : perfUnit!.value,
      'sampleSeriesLabel': ?sampleSeriesLabel == null ? null : sampleSeriesLabel!.value,
    };
  }

  factory BasicPerfSampleSeries.fromMap(Map<String, dynamic> map) {
    return BasicPerfSampleSeries(
      perfMetricType: map['perfMetricType'] == null ? null : BasicPerfSampleSeriesPerfMetricType.fromValue(map['perfMetricType'] as String),
      perfUnit: map['perfUnit'] == null ? null : BasicPerfSampleSeriesPerfUnit.fromValue(map['perfUnit'] as String),
      sampleSeriesLabel: map['sampleSeriesLabel'] == null ? null : BasicPerfSampleSeriesSampleSeriesLabel.fromValue(map['sampleSeriesLabel'] as String),
    );
  }
}

