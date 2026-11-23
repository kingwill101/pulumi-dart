// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiTrainingPipelineModelToUploadExplanationSpec {
  /// Metadata describing the Model's input and output for explanation. This field uses JSON data as a string.
  final pulumi.Input<String?>? metadata;
  /// Parameters that configure explaining of the Model's predictions. This field uses JSON data as a string.
  final pulumi.Input<String?>? parameters;

  /// Creates a new [AiTrainingPipelineModelToUploadExplanationSpec].
  /// [metadata] Metadata describing the Model's input and output for explanation. This field uses JSON data as a string.
  /// [parameters] Parameters that configure explaining of the Model's predictions. This field uses JSON data as a string.
  const AiTrainingPipelineModelToUploadExplanationSpec({
    this.metadata,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'parameters': ?parameters,
    };
  }

  factory AiTrainingPipelineModelToUploadExplanationSpec.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineModelToUploadExplanationSpec(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
