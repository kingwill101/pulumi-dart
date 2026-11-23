// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiTrainingPipelineInputDataConfigFilterSplit {
  /// A filter on DataItems of the Dataset for test set.
  final pulumi.Input<String> testFilter;
  /// A filter on DataItems of the Dataset for training set.
  final pulumi.Input<String> trainingFilter;
  /// A filter on DataItems of the Dataset for validation set.
  final pulumi.Input<String> validationFilter;

  /// Creates a new [AiTrainingPipelineInputDataConfigFilterSplit].
  /// [testFilter] A filter on DataItems of the Dataset for test set.
  /// [trainingFilter] A filter on DataItems of the Dataset for training set.
  /// [validationFilter] A filter on DataItems of the Dataset for validation set.
  const AiTrainingPipelineInputDataConfigFilterSplit({
    required this.testFilter,
    required this.trainingFilter,
    required this.validationFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testFilter': testFilter,
      'trainingFilter': trainingFilter,
      'validationFilter': validationFilter,
    };
  }

  factory AiTrainingPipelineInputDataConfigFilterSplit.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineInputDataConfigFilterSplit(
      testFilter: pulumi.Input.fromValue(map['testFilter'] as String),
      trainingFilter: pulumi.Input.fromValue(map['trainingFilter'] as String),
      validationFilter: pulumi.Input.fromValue(map['validationFilter'] as String),
    );
  }
}
