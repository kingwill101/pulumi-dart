// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes metadata for a TensorboardTimeSeries.
class GoogleCloudAiplatformV1TensorboardTimeSeriesMetadataResponse {
  /// The largest blob sequence length (number of blobs) of all data points in this time series, if its ValueType is BLOB_SEQUENCE.
  final pulumi.Input<String> maxBlobSequenceLength;
  /// Max step index of all data points within a TensorboardTimeSeries.
  final pulumi.Input<String> maxStep;
  /// Max wall clock timestamp of all data points within a TensorboardTimeSeries.
  final pulumi.Input<String> maxWallTime;

  /// Creates a new [GoogleCloudAiplatformV1TensorboardTimeSeriesMetadataResponse].
  /// [maxBlobSequenceLength] The largest blob sequence length (number of blobs) of all data points in this time series, if its ValueType is BLOB_SEQUENCE.
  /// [maxStep] Max step index of all data points within a TensorboardTimeSeries.
  /// [maxWallTime] Max wall clock timestamp of all data points within a TensorboardTimeSeries.
  const GoogleCloudAiplatformV1TensorboardTimeSeriesMetadataResponse({
    required this.maxBlobSequenceLength,
    required this.maxStep,
    required this.maxWallTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxBlobSequenceLength': maxBlobSequenceLength,
      'maxStep': maxStep,
      'maxWallTime': maxWallTime,
    };
  }

  factory GoogleCloudAiplatformV1TensorboardTimeSeriesMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1TensorboardTimeSeriesMetadataResponse(
      maxBlobSequenceLength: pulumi.Input.fromValue(map['maxBlobSequenceLength'] as String),
      maxStep: pulumi.Input.fromValue(map['maxStep'] as String),
      maxWallTime: pulumi.Input.fromValue(map['maxWallTime'] as String),
    );
  }
}

