// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_explanation_spec.dart';
import 'google_cloud_aiplatform_v1beta1_model_container_spec.dart';
import 'google_cloud_aiplatform_v1beta1_predict_schemata.dart';

/// A trained machine learning Model.
class GoogleCloudAiplatformV1beta1Model {
  /// Immutable. The path to the directory containing the Model artifact and any of its supporting files. Not present for AutoML Models or Large Models.
  final pulumi.Input<String>? artifactUri;
  /// Input only. The specification of the container that is to be used when deploying this Model. The specification is ingested upon ModelService.UploadModel, and all binaries it contains are copied and stored internally by Vertex AI. Not present for AutoML Models or Large Models.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ModelContainerSpec>? containerSpec;
  /// The description of the Model.
  final pulumi.Input<String>? description;
  /// The display name of the Model. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key spec for a Model. If set, this Model and all sub-resources of this Model will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// The default explanation specification for this Model. The Model can be used for requesting explanation after being deployed if it is populated. The Model can be used for batch explanation if it is populated. All fields of the explanation_spec can be overridden by explanation_spec of DeployModelRequest.deployed_model, or explanation_spec of BatchPredictionJob. If the default explanation specification is not set for this Model, this Model can still be used for requesting explanation by setting explanation_spec of DeployModelRequest.deployed_model and for batch explanation by setting explanation_spec of BatchPredictionJob.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ExplanationSpec>? explanationSpec;
  /// The labels with user-defined metadata to organize your Models. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  /// Immutable. An additional information about the Model; the schema of the metadata can be found in metadata_schema. Unset if the Model does not have any additional information.
  final pulumi.Input<dynamic>? metadata;
  /// Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Model, that is specific to it. Unset if the Model does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML Models always have this field populated by Vertex AI, if no additional metadata is needed, this field is set to an empty string. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final pulumi.Input<String>? metadataSchemaUri;
  /// The resource name of the Model.
  final pulumi.Input<String>? name;
  /// The schemata that describe formats of the Model's predictions and explanations as given and returned via PredictionService.Predict and PredictionService.Explain.
  final pulumi.Input<GoogleCloudAiplatformV1beta1PredictSchemata>? predictSchemata;
  /// User provided version aliases so that a model version can be referenced via alias (i.e. `projects/{project}/locations/{location}/models/{model_id}@{version_alias}` instead of auto-generated version id (i.e. `projects/{project}/locations/{location}/models/{model_id}@{version_id})`. The format is a-z{0,126}[a-z0-9] to distinguish from version_id. A default version alias will be created for the first version of the model, and there must be exactly one default version alias for a model.
  final pulumi.Input<List<String>>? versionAliases;
  /// The description of this version.
  final pulumi.Input<String>? versionDescription;

  /// Creates a new [GoogleCloudAiplatformV1beta1Model].
  /// [artifactUri] Immutable. The path to the directory containing the Model artifact and any of its supporting files. Not present for AutoML Models or Large Models.
  /// [containerSpec] Input only. The specification of the container that is to be used when deploying this Model. The specification is ingested upon ModelService.UploadModel, and all binaries it contains are copied and stored internally by Vertex AI. Not present for AutoML Models or Large Models.
  /// [description] The description of the Model.
  /// [displayName] The display name of the Model. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key spec for a Model. If set, this Model and all sub-resources of this Model will be secured by this key.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [explanationSpec] The default explanation specification for this Model. The Model can be used for requesting explanation after being deployed if it is populated. The Model can be used for batch explanation if it is populated. All fields of the explanation_spec can be overridden by explanation_spec of DeployModelRequest.deployed_model, or explanation_spec of BatchPredictionJob. If the default explanation specification is not set for this Model, this Model can still be used for requesting explanation by setting explanation_spec of DeployModelRequest.deployed_model and for batch explanation by setting explanation_spec of BatchPredictionJob.
  /// [labels] The labels with user-defined metadata to organize your Models. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [metadata] Immutable. An additional information about the Model; the schema of the metadata can be found in metadata_schema. Unset if the Model does not have any additional information.
  /// [metadataSchemaUri] Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Model, that is specific to it. Unset if the Model does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML Models always have this field populated by Vertex AI, if no additional metadata is needed, this field is set to an empty string. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  /// [name] The resource name of the Model.
  /// [predictSchemata] The schemata that describe formats of the Model's predictions and explanations as given and returned via PredictionService.Predict and PredictionService.Explain.
  /// [versionAliases] User provided version aliases so that a model version can be referenced via alias (i.e. `projects/{project}/locations/{location}/models/{model_id}@{version_alias}` instead of auto-generated version id (i.e. `projects/{project}/locations/{location}/models/{model_id}@{version_id})`. The format is a-z{0,126}[a-z0-9] to distinguish from version_id. A default version alias will be created for the first version of the model, and there must be exactly one default version alias for a model.
  /// [versionDescription] The description of this version.
  const GoogleCloudAiplatformV1beta1Model({
    this.artifactUri,
    this.containerSpec,
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.etag,
    this.explanationSpec,
    this.labels,
    this.metadata,
    this.metadataSchemaUri,
    this.name,
    this.predictSchemata,
    this.versionAliases,
    this.versionDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactUri': ?artifactUri,
      'containerSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1ModelContainerSpec, Map<String, dynamic>>(containerSpec, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'etag': ?etag,
      'explanationSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1ExplanationSpec, Map<String, dynamic>>(explanationSpec, (value) => value.toMap()),
      'labels': ?labels,
      'metadata': ?metadata,
      'metadataSchemaUri': ?metadataSchemaUri,
      'name': ?name,
      'predictSchemata': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1PredictSchemata, Map<String, dynamic>>(predictSchemata, (value) => value.toMap()),
      'versionAliases': ?versionAliases,
      'versionDescription': ?versionDescription,
    };
  }

  factory GoogleCloudAiplatformV1beta1Model.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1Model(
      artifactUri: (() { final guardedValue = map['artifactUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerSpec: (() { final guardedValue = map['containerSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1ModelContainerSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1EncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      explanationSpec: (() { final guardedValue = map['explanationSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1ExplanationSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      metadataSchemaUri: (() { final guardedValue = map['metadataSchemaUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      predictSchemata: (() { final guardedValue = map['predictSchemata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1PredictSchemata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      versionAliases: (() { final guardedValue = map['versionAliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      versionDescription: (() { final guardedValue = map['versionDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
