// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Assigns input data to training, validation, and test sets based on a provided timestamps. The youngest data pieces are assigned to training set, next to validation set, and the oldest to the test set. Supported only for tabular Datasets.
class GoogleCloudAiplatformV1TimestampSplit {
  /// The key is a name of one of the Dataset's data columns. The values of the key (the values in the column) must be in RFC 3339 `date-time` format, where `time-offset` = `"Z"` (e.g. 1985-04-12T23:20:50.52Z). If for a piece of data the key is not present or has an invalid value, that piece is ignored by the pipeline.
  final pulumi.Input<String> key;
  /// The fraction of the input data that is to be used to evaluate the Model.
  final pulumi.Input<double>? testFraction;
  /// The fraction of the input data that is to be used to train the Model.
  final pulumi.Input<double>? trainingFraction;
  /// The fraction of the input data that is to be used to validate the Model.
  final pulumi.Input<double>? validationFraction;

  /// Creates a new [GoogleCloudAiplatformV1TimestampSplit].
  /// [key] The key is a name of one of the Dataset's data columns. The values of the key (the values in the column) must be in RFC 3339 `date-time` format, where `time-offset` = `"Z"` (e.g. 1985-04-12T23:20:50.52Z). If for a piece of data the key is not present or has an invalid value, that piece is ignored by the pipeline.
  /// [testFraction] The fraction of the input data that is to be used to evaluate the Model.
  /// [trainingFraction] The fraction of the input data that is to be used to train the Model.
  /// [validationFraction] The fraction of the input data that is to be used to validate the Model.
  GoogleCloudAiplatformV1TimestampSplit({
    required this.key,
    this.testFraction,
    this.trainingFraction,
    this.validationFraction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'testFraction': ?testFraction,
      'trainingFraction': ?trainingFraction,
      'validationFraction': ?validationFraction,
    };
  }

  factory GoogleCloudAiplatformV1TimestampSplit.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1TimestampSplit(
      key: pulumi.Input.fromValue(map['key'] as String),
      testFraction: (() { final guardedValue = map['testFraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      trainingFraction: (() { final guardedValue = map['trainingFraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      validationFraction: (() { final guardedValue = map['validationFraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

