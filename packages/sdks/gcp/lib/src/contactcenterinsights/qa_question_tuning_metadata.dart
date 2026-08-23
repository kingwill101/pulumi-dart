// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QaQuestionTuningMetadata {
  /// A list of any applicable data validation warnings about the question's
  /// feedback labels.
  final pulumi.Input<List<String>>? datasetValidationWarnings;
  /// Total number of valid labels provided for the question at the time of
  /// tuining.
  final pulumi.Input<String>? totalValidLabelCount;
  /// Error status of the tuning operation for the question. Will only be set
  /// if the tuning operation failed.
  final pulumi.Input<String>? tuningError;

  /// Creates a new [QaQuestionTuningMetadata].
  /// [datasetValidationWarnings] A list of any applicable data validation warnings about the question's
  /// [totalValidLabelCount] Total number of valid labels provided for the question at the time of
  /// [tuningError] Error status of the tuning operation for the question. Will only be set
  const QaQuestionTuningMetadata({
    this.datasetValidationWarnings,
    this.totalValidLabelCount,
    this.tuningError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetValidationWarnings': ?datasetValidationWarnings,
      'totalValidLabelCount': ?totalValidLabelCount,
      'tuningError': ?tuningError,
    };
  }

  factory QaQuestionTuningMetadata.fromMap(Map<String, dynamic> map) {
    return QaQuestionTuningMetadata(
      datasetValidationWarnings: (() { final guardedValue = map['datasetValidationWarnings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      totalValidLabelCount: (() { final guardedValue = map['totalValidLabelCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tuningError: (() { final guardedValue = map['tuningError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
