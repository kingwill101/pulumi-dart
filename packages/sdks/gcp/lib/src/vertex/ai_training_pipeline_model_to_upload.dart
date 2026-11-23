// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_training_pipeline_model_to_upload_container_spec.dart';
import 'ai_training_pipeline_model_to_upload_encryption_spec.dart';
import 'ai_training_pipeline_model_to_upload_explanation_spec.dart';

class AiTrainingPipelineModelToUpload {
  /// The path to the directory containing the Model artifact and any of its supporting files.
  final pulumi.Input<String?>? artifactUri;
  /// The specification of the container that is to be used when deploying this Model.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineModelToUploadContainerSpec?>? containerSpec;
  /// The description of the Model.
  final pulumi.Input<String?>? description;
  /// The user-defined name of the Model.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key spec for a Model.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineModelToUploadEncryptionSpec?>? encryptionSpec;
  /// Specification of Model explanation.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineModelToUploadExplanationSpec?>? explanationSpec;
  /// The labels with user-defined metadata to organize your Models.
  final pulumi.Input<Map<String, String>?>? labels;
  /// (Output)
  /// The resource name of the Model.
  final pulumi.Input<String?>? name;
  /// User provided version aliases so that a model version can be referenced using alias.
  final pulumi.Input<List<String>?>? versionAliases;
  /// The description of this version.
  final pulumi.Input<String?>? versionDescription;

  /// Creates a new [AiTrainingPipelineModelToUpload].
  /// [artifactUri] The path to the directory containing the Model artifact and any of its supporting files.
  /// [containerSpec] The specification of the container that is to be used when deploying this Model.
  /// [description] The description of the Model.
  /// [displayName] The user-defined name of the Model.
  /// [encryptionSpec] Customer-managed encryption key spec for a Model.
  /// [explanationSpec] Specification of Model explanation.
  /// [labels] The labels with user-defined metadata to organize your Models.
  /// [name] (Output)
  /// [versionAliases] User provided version aliases so that a model version can be referenced using alias.
  /// [versionDescription] The description of this version.
  const AiTrainingPipelineModelToUpload({
    this.artifactUri,
    this.containerSpec,
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.explanationSpec,
    this.labels,
    this.name,
    this.versionAliases,
    this.versionDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactUri': ?artifactUri,
      'containerSpec': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineModelToUploadContainerSpec, Map<String, dynamic>>(containerSpec, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineModelToUploadEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'explanationSpec': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineModelToUploadExplanationSpec, Map<String, dynamic>>(explanationSpec, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'versionAliases': ?versionAliases,
      'versionDescription': ?versionDescription,
    };
  }

  factory AiTrainingPipelineModelToUpload.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineModelToUpload(
      artifactUri: (() { final guardedValue = map['artifactUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerSpec: (() { final guardedValue = map['containerSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineModelToUploadContainerSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineModelToUploadEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      explanationSpec: (() { final guardedValue = map['explanationSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineModelToUploadExplanationSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionAliases: (() { final guardedValue = map['versionAliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      versionDescription: (() { final guardedValue = map['versionDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
