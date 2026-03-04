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
      'perfMetricType':
          ?pulumi.Input.mapOptionalInputValue<
            BasicPerfSampleSeriesPerfMetricType,
            String
          >(perfMetricType, (value) => value.wireValue),
      'perfUnit':
          ?pulumi.Input.mapOptionalInputValue<
            BasicPerfSampleSeriesPerfUnit,
            String
          >(perfUnit, (value) => value.wireValue),
      'sampleSeriesLabel':
          ?pulumi.Input.mapOptionalInputValue<
            BasicPerfSampleSeriesSampleSeriesLabel,
            String
          >(sampleSeriesLabel, (value) => value.wireValue),
    };
  }

  factory BasicPerfSampleSeries.fromMap(Map<String, dynamic> map) {
    return BasicPerfSampleSeries(
      perfMetricType: (() {
        final guardedValue = map['perfMetricType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BasicPerfSampleSeriesPerfMetricType.fromValue(guardedValue as String),
        );
      })(),
      perfUnit: (() {
        final guardedValue = map['perfUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BasicPerfSampleSeriesPerfUnit.fromValue(guardedValue as String),
        );
      })(),
      sampleSeriesLabel: (() {
        final guardedValue = map['sampleSeriesLabel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BasicPerfSampleSeriesSampleSeriesLabel.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
