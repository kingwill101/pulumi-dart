// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encapsulates the metadata for basic sample series represented by a line chart
class BasicPerfSampleSeriesResponse {
  final pulumi.Input<String> perfMetricType;
  final pulumi.Input<String> perfUnit;
  final pulumi.Input<String> sampleSeriesLabel;

  /// Creates a new [BasicPerfSampleSeriesResponse].
  /// [perfMetricType] Required.
  /// [perfUnit] Required.
  /// [sampleSeriesLabel] Required.
  const BasicPerfSampleSeriesResponse({
    required this.perfMetricType,
    required this.perfUnit,
    required this.sampleSeriesLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perfMetricType': perfMetricType,
      'perfUnit': perfUnit,
      'sampleSeriesLabel': sampleSeriesLabel,
    };
  }

  factory BasicPerfSampleSeriesResponse.fromMap(Map<String, dynamic> map) {
    return BasicPerfSampleSeriesResponse(
      perfMetricType: pulumi.Input.fromValue(map['perfMetricType'] as String),
      perfUnit: pulumi.Input.fromValue(map['perfUnit'] as String),
      sampleSeriesLabel: pulumi.Input.fromValue(map['sampleSeriesLabel'] as String),
    );
  }
}

