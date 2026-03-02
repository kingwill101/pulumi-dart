// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents results of a prediction job.
class GoogleCloudMlV1PredictionOutput {
  /// The number of data instances which resulted in errors.
  final pulumi.Input<String>? errorCount;
  /// Node hours used by the batch prediction job.
  final pulumi.Input<double>? nodeHours;
  /// The output Google Cloud Storage location provided at the job creation time.
  final pulumi.Input<String>? outputPath;
  /// The number of generated predictions.
  final pulumi.Input<String>? predictionCount;

  /// Creates a new [GoogleCloudMlV1PredictionOutput].
  /// [errorCount] The number of data instances which resulted in errors.
  /// [nodeHours] Node hours used by the batch prediction job.
  /// [outputPath] The output Google Cloud Storage location provided at the job creation time.
  /// [predictionCount] The number of generated predictions.
  GoogleCloudMlV1PredictionOutput({
    this.errorCount,
    this.nodeHours,
    this.outputPath,
    this.predictionCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCount': ?errorCount,
      'nodeHours': ?nodeHours,
      'outputPath': ?outputPath,
      'predictionCount': ?predictionCount,
    };
  }

  factory GoogleCloudMlV1PredictionOutput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1PredictionOutput(
      errorCount: map['errorCount'] == null ? null : (map['errorCount']! as String).input(),
      nodeHours: map['nodeHours'] == null ? null : (map['nodeHours']! as double).input(),
      outputPath: map['outputPath'] == null ? null : (map['outputPath']! as String).input(),
      predictionCount: map['predictionCount'] == null ? null : (map['predictionCount']! as String).input(),
    );
  }
}

