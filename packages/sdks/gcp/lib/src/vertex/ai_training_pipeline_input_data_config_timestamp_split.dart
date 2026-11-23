// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiTrainingPipelineInputDataConfigTimestampSplit {
  /// The key is a name of one of the Dataset's data columns.
  final pulumi.Input<String> key;
  /// The fraction of the input data that is to be used to evaluate the Model.
  final pulumi.Input<double?>? testFraction;
  /// The fraction of the input data that is to be used to train the Model.
  final pulumi.Input<double?>? trainingFraction;
  /// The fraction of the input data that is to be used to validate the Model.
  final pulumi.Input<double?>? validationFraction;

  /// Creates a new [AiTrainingPipelineInputDataConfigTimestampSplit].
  /// [key] The key is a name of one of the Dataset's data columns.
  /// [testFraction] The fraction of the input data that is to be used to evaluate the Model.
  /// [trainingFraction] The fraction of the input data that is to be used to train the Model.
  /// [validationFraction] The fraction of the input data that is to be used to validate the Model.
  const AiTrainingPipelineInputDataConfigTimestampSplit({
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

  factory AiTrainingPipelineInputDataConfigTimestampSplit.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineInputDataConfigTimestampSplit(
      key: pulumi.Input.fromValue(map['key'] as String),
      testFraction: (() { final guardedValue = map['testFraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      trainingFraction: (() { final guardedValue = map['trainingFraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      validationFraction: (() { final guardedValue = map['validationFraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
