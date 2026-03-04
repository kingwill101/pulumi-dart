// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents results of a prediction job.
class GoogleCloudMlV1PredictionOutputResponse {
  /// The number of data instances which resulted in errors.
  final pulumi.Input<String> errorCount;

  /// Node hours used by the batch prediction job.
  final pulumi.Input<double> nodeHours;

  /// The output Google Cloud Storage location provided at the job creation time.
  final pulumi.Input<String> outputPath;

  /// The number of generated predictions.
  final pulumi.Input<String> predictionCount;

  /// Creates a new [GoogleCloudMlV1PredictionOutputResponse].
  /// [errorCount] The number of data instances which resulted in errors.
  /// [nodeHours] Node hours used by the batch prediction job.
  /// [outputPath] The output Google Cloud Storage location provided at the job creation time.
  /// [predictionCount] The number of generated predictions.
  GoogleCloudMlV1PredictionOutputResponse({
    required this.errorCount,
    required this.nodeHours,
    required this.outputPath,
    required this.predictionCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCount': errorCount,
      'nodeHours': nodeHours,
      'outputPath': outputPath,
      'predictionCount': predictionCount,
    };
  }

  factory GoogleCloudMlV1PredictionOutputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudMlV1PredictionOutputResponse(
      errorCount: pulumi.Input.fromValue(map['errorCount'] as String),
      nodeHours: pulumi.Input.fromValue(map['nodeHours'] as double),
      outputPath: pulumi.Input.fromValue(map['outputPath'] as String),
      predictionCount: pulumi.Input.fromValue(map['predictionCount'] as String),
    );
  }
}
