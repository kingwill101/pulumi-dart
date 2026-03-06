// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_deployed_model_ref_response.dart';
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_explanation_spec_response.dart';
import 'google_cloud_aiplatform_v1_model_container_spec_response.dart';
import 'google_cloud_aiplatform_v1_model_export_format_response.dart';
import 'google_cloud_aiplatform_v1_model_original_model_info_response.dart';
import 'google_cloud_aiplatform_v1_model_source_info_response.dart';
import 'google_cloud_aiplatform_v1_predict_schemata_response.dart';

/// A trained machine learning Model.
class GoogleCloudAiplatformV1ModelResponse {
  /// Immutable. The path to the directory containing the Model artifact and any of its supporting files. Not present for AutoML Models or Large Models.
  final pulumi.Input<String> artifactUri;
  /// Input only. The specification of the container that is to be used when deploying this Model. The specification is ingested upon ModelService.UploadModel, and all binaries it contains are copied and stored internally by Vertex AI. Not present for AutoML Models or Large Models.
  final pulumi.Input<GoogleCloudAiplatformV1ModelContainerSpecResponse> containerSpec;
  /// Timestamp when this Model was uploaded into Vertex AI.
  final pulumi.Input<String> createTime;
  /// The pointers to DeployedModels created from this Model. Note that Model could have been deployed to Endpoints in different Locations.
  final pulumi.Input<List<GoogleCloudAiplatformV1DeployedModelRefResponse>> deployedModels;
  /// The description of the Model.
  final pulumi.Input<String> description;
  /// The display name of the Model. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key spec for a Model. If set, this Model and all sub-resources of this Model will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1EncryptionSpecResponse> encryptionSpec;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String> etag;
  /// The default explanation specification for this Model. The Model can be used for requesting explanation after being deployed if it is populated. The Model can be used for batch explanation if it is populated. All fields of the explanation_spec can be overridden by explanation_spec of DeployModelRequest.deployed_model, or explanation_spec of BatchPredictionJob. If the default explanation specification is not set for this Model, this Model can still be used for requesting explanation by setting explanation_spec of DeployModelRequest.deployed_model and for batch explanation by setting explanation_spec of BatchPredictionJob.
  final pulumi.Input<GoogleCloudAiplatformV1ExplanationSpecResponse> explanationSpec;
  /// The labels with user-defined metadata to organize your Models. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>> labels;
  /// Immutable. An additional information about the Model; the schema of the metadata can be found in metadata_schema. Unset if the Model does not have any additional information.
  final pulumi.Input<dynamic> metadata;
  /// The resource name of the Artifact that was created in MetadataStore when creating the Model. The Artifact resource name pattern is `projects/{project}/locations/{location}/metadataStores/{metadata_store}/artifacts/{artifact}`.
  final pulumi.Input<String> metadataArtifact;
  /// Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Model, that is specific to it. Unset if the Model does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML Models always have this field populated by Vertex AI, if no additional metadata is needed, this field is set to an empty string. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final pulumi.Input<String> metadataSchemaUri;
  /// Source of a model. It can either be automl training pipeline, custom training pipeline, BigQuery ML, or existing Vertex AI Model.
  final pulumi.Input<GoogleCloudAiplatformV1ModelSourceInfoResponse> modelSourceInfo;
  /// The resource name of the Model.
  final pulumi.Input<String> name;
  /// If this Model is a copy of another Model, this contains info about the original.
  final pulumi.Input<GoogleCloudAiplatformV1ModelOriginalModelInfoResponse> originalModelInfo;
  /// Optional. This field is populated if the model is produced by a pipeline job.
  final pulumi.Input<String> pipelineJob;
  /// The schemata that describe formats of the Model's predictions and explanations as given and returned via PredictionService.Predict and PredictionService.Explain.
  final pulumi.Input<GoogleCloudAiplatformV1PredictSchemataResponse> predictSchemata;
  /// When this Model is deployed, its prediction resources are described by the `prediction_resources` field of the Endpoint.deployed_models object. Because not all Models support all resource configuration types, the configuration types this Model supports are listed here. If no configuration types are listed, the Model cannot be deployed to an Endpoint and does not support online predictions (PredictionService.Predict or PredictionService.Explain). Such a Model can serve predictions by using a BatchPredictionJob, if it has at least one entry each in supported_input_storage_formats and supported_output_storage_formats.
  final pulumi.Input<List<String>> supportedDeploymentResourcesTypes;
  /// The formats in which this Model may be exported. If empty, this Model is not available for export.
  final pulumi.Input<List<GoogleCloudAiplatformV1ModelExportFormatResponse>> supportedExportFormats;
  /// The formats this Model supports in BatchPredictionJob.input_config. If PredictSchemata.instance_schema_uri exists, the instances should be given as per that schema. The possible formats are: * `jsonl` The JSON Lines format, where each instance is a single line. Uses GcsSource. * `csv` The CSV format, where each instance is a single comma-separated line. The first line in the file is the header, containing comma-separated field names. Uses GcsSource. * `tf-record` The TFRecord format, where each instance is a single record in tfrecord syntax. Uses GcsSource. * `tf-record-gzip` Similar to `tf-record`, but the file is gzipped. Uses GcsSource. * `bigquery` Each instance is a single row in BigQuery. Uses BigQuerySource. * `file-list` Each line of the file is the location of an instance to process, uses `gcs_source` field of the InputConfig object. If this Model doesn't support any of these formats it means it cannot be used with a BatchPredictionJob. However, if it has supported_deployment_resources_types, it could serve online predictions by using PredictionService.Predict or PredictionService.Explain.
  final pulumi.Input<List<String>> supportedInputStorageFormats;
  /// The formats this Model supports in BatchPredictionJob.output_config. If both PredictSchemata.instance_schema_uri and PredictSchemata.prediction_schema_uri exist, the predictions are returned together with their instances. In other words, the prediction has the original instance data first, followed by the actual prediction content (as per the schema). The possible formats are: * `jsonl` The JSON Lines format, where each prediction is a single line. Uses GcsDestination. * `csv` The CSV format, where each prediction is a single comma-separated line. The first line in the file is the header, containing comma-separated field names. Uses GcsDestination. * `bigquery` Each prediction is a single row in a BigQuery table, uses BigQueryDestination . If this Model doesn't support any of these formats it means it cannot be used with a BatchPredictionJob. However, if it has supported_deployment_resources_types, it could serve online predictions by using PredictionService.Predict or PredictionService.Explain.
  final pulumi.Input<List<String>> supportedOutputStorageFormats;
  /// The resource name of the TrainingPipeline that uploaded this Model, if any.
  final pulumi.Input<String> trainingPipeline;
  /// Timestamp when this Model was most recently updated.
  final pulumi.Input<String> updateTime;
  /// User provided version aliases so that a model version can be referenced via alias (i.e. `projects/{project}/locations/{location}/models/{model_id}@{version_alias}` instead of auto-generated version id (i.e. `projects/{project}/locations/{location}/models/{model_id}@{version_id})`. The format is a-z{0,126}[a-z0-9] to distinguish from version_id. A default version alias will be created for the first version of the model, and there must be exactly one default version alias for a model.
  final pulumi.Input<List<String>> versionAliases;
  /// Timestamp when this version was created.
  final pulumi.Input<String> versionCreateTime;
  /// The description of this version.
  final pulumi.Input<String> versionDescription;
  /// Immutable. The version ID of the model. A new version is committed when a new model version is uploaded or trained under an existing model id. It is an auto-incrementing decimal number in string representation.
  final pulumi.Input<String> versionId;
  /// Timestamp when this version was most recently updated.
  final pulumi.Input<String> versionUpdateTime;

  /// Creates a new [GoogleCloudAiplatformV1ModelResponse].
  /// [artifactUri] Immutable. The path to the directory containing the Model artifact and any of its supporting files. Not present for AutoML Models or Large Models.
  /// [containerSpec] Input only. The specification of the container that is to be used when deploying this Model. The specification is ingested upon ModelService.UploadModel, and all binaries it contains are copied and stored internally by Vertex AI. Not present for AutoML Models or Large Models.
  /// [createTime] Timestamp when this Model was uploaded into Vertex AI.
  /// [deployedModels] The pointers to DeployedModels created from this Model. Note that Model could have been deployed to Endpoints in different Locations.
  /// [description] The description of the Model.
  /// [displayName] The display name of the Model. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key spec for a Model. If set, this Model and all sub-resources of this Model will be secured by this key.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [explanationSpec] The default explanation specification for this Model. The Model can be used for requesting explanation after being deployed if it is populated. The Model can be used for batch explanation if it is populated. All fields of the explanation_spec can be overridden by explanation_spec of DeployModelRequest.deployed_model, or explanation_spec of BatchPredictionJob. If the default explanation specification is not set for this Model, this Model can still be used for requesting explanation by setting explanation_spec of DeployModelRequest.deployed_model and for batch explanation by setting explanation_spec of BatchPredictionJob.
  /// [labels] The labels with user-defined metadata to organize your Models. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [metadata] Immutable. An additional information about the Model; the schema of the metadata can be found in metadata_schema. Unset if the Model does not have any additional information.
  /// [metadataArtifact] The resource name of the Artifact that was created in MetadataStore when creating the Model. The Artifact resource name pattern is `projects/{project}/locations/{location}/metadataStores/{metadata_store}/artifacts/{artifact}`.
  /// [metadataSchemaUri] Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Model, that is specific to it. Unset if the Model does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML Models always have this field populated by Vertex AI, if no additional metadata is needed, this field is set to an empty string. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  /// [modelSourceInfo] Source of a model. It can either be automl training pipeline, custom training pipeline, BigQuery ML, or existing Vertex AI Model.
  /// [name] The resource name of the Model.
  /// [originalModelInfo] If this Model is a copy of another Model, this contains info about the original.
  /// [pipelineJob] Optional. This field is populated if the model is produced by a pipeline job.
  /// [predictSchemata] The schemata that describe formats of the Model's predictions and explanations as given and returned via PredictionService.Predict and PredictionService.Explain.
  /// [supportedDeploymentResourcesTypes] When this Model is deployed, its prediction resources are described by the `prediction_resources` field of the Endpoint.deployed_models object. Because not all Models support all resource configuration types, the configuration types this Model supports are listed here. If no configuration types are listed, the Model cannot be deployed to an Endpoint and does not support online predictions (PredictionService.Predict or PredictionService.Explain). Such a Model can serve predictions by using a BatchPredictionJob, if it has at least one entry each in supported_input_storage_formats and supported_output_storage_formats.
  /// [supportedExportFormats] The formats in which this Model may be exported. If empty, this Model is not available for export.
  /// [supportedInputStorageFormats] The formats this Model supports in BatchPredictionJob.input_config. If PredictSchemata.instance_schema_uri exists, the instances should be given as per that schema. The possible formats are: * `jsonl` The JSON Lines format, where each instance is a single line. Uses GcsSource. * `csv` The CSV format, where each instance is a single comma-separated line. The first line in the file is the header, containing comma-separated field names. Uses GcsSource. * `tf-record` The TFRecord format, where each instance is a single record in tfrecord syntax. Uses GcsSource. * `tf-record-gzip` Similar to `tf-record`, but the file is gzipped. Uses GcsSource. * `bigquery` Each instance is a single row in BigQuery. Uses BigQuerySource. * `file-list` Each line of the file is the location of an instance to process, uses `gcs_source` field of the InputConfig object. If this Model doesn't support any of these formats it means it cannot be used with a BatchPredictionJob. However, if it has supported_deployment_resources_types, it could serve online predictions by using PredictionService.Predict or PredictionService.Explain.
  /// [supportedOutputStorageFormats] The formats this Model supports in BatchPredictionJob.output_config. If both PredictSchemata.instance_schema_uri and PredictSchemata.prediction_schema_uri exist, the predictions are returned together with their instances. In other words, the prediction has the original instance data first, followed by the actual prediction content (as per the schema). The possible formats are: * `jsonl` The JSON Lines format, where each prediction is a single line. Uses GcsDestination. * `csv` The CSV format, where each prediction is a single comma-separated line. The first line in the file is the header, containing comma-separated field names. Uses GcsDestination. * `bigquery` Each prediction is a single row in a BigQuery table, uses BigQueryDestination . If this Model doesn't support any of these formats it means it cannot be used with a BatchPredictionJob. However, if it has supported_deployment_resources_types, it could serve online predictions by using PredictionService.Predict or PredictionService.Explain.
  /// [trainingPipeline] The resource name of the TrainingPipeline that uploaded this Model, if any.
  /// [updateTime] Timestamp when this Model was most recently updated.
  /// [versionAliases] User provided version aliases so that a model version can be referenced via alias (i.e. `projects/{project}/locations/{location}/models/{model_id}@{version_alias}` instead of auto-generated version id (i.e. `projects/{project}/locations/{location}/models/{model_id}@{version_id})`. The format is a-z{0,126}[a-z0-9] to distinguish from version_id. A default version alias will be created for the first version of the model, and there must be exactly one default version alias for a model.
  /// [versionCreateTime] Timestamp when this version was created.
  /// [versionDescription] The description of this version.
  /// [versionId] Immutable. The version ID of the model. A new version is committed when a new model version is uploaded or trained under an existing model id. It is an auto-incrementing decimal number in string representation.
  /// [versionUpdateTime] Timestamp when this version was most recently updated.
  const GoogleCloudAiplatformV1ModelResponse({
    required this.artifactUri,
    required this.containerSpec,
    required this.createTime,
    required this.deployedModels,
    required this.description,
    required this.displayName,
    required this.encryptionSpec,
    required this.etag,
    required this.explanationSpec,
    required this.labels,
    required this.metadata,
    required this.metadataArtifact,
    required this.metadataSchemaUri,
    required this.modelSourceInfo,
    required this.name,
    required this.originalModelInfo,
    required this.pipelineJob,
    required this.predictSchemata,
    required this.supportedDeploymentResourcesTypes,
    required this.supportedExportFormats,
    required this.supportedInputStorageFormats,
    required this.supportedOutputStorageFormats,
    required this.trainingPipeline,
    required this.updateTime,
    required this.versionAliases,
    required this.versionCreateTime,
    required this.versionDescription,
    required this.versionId,
    required this.versionUpdateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactUri': artifactUri,
      'containerSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1ModelContainerSpecResponse, Map<String, dynamic>>(containerSpec, (value) => value.toMap()),
      'createTime': createTime,
      'deployedModels': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1DeployedModelRefResponse>, List<Map<String, dynamic>>>(deployedModels, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1DeployedModelRefResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'displayName': displayName,
      'encryptionSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1EncryptionSpecResponse, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'etag': etag,
      'explanationSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1ExplanationSpecResponse, Map<String, dynamic>>(explanationSpec, (value) => value.toMap()),
      'labels': labels,
      'metadata': metadata,
      'metadataArtifact': metadataArtifact,
      'metadataSchemaUri': metadataSchemaUri,
      'modelSourceInfo': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1ModelSourceInfoResponse, Map<String, dynamic>>(modelSourceInfo, (value) => value.toMap()),
      'name': name,
      'originalModelInfo': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1ModelOriginalModelInfoResponse, Map<String, dynamic>>(originalModelInfo, (value) => value.toMap()),
      'pipelineJob': pipelineJob,
      'predictSchemata': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1PredictSchemataResponse, Map<String, dynamic>>(predictSchemata, (value) => value.toMap()),
      'supportedDeploymentResourcesTypes': supportedDeploymentResourcesTypes,
      'supportedExportFormats': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1ModelExportFormatResponse>, List<Map<String, dynamic>>>(supportedExportFormats, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1ModelExportFormatResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'supportedInputStorageFormats': supportedInputStorageFormats,
      'supportedOutputStorageFormats': supportedOutputStorageFormats,
      'trainingPipeline': trainingPipeline,
      'updateTime': updateTime,
      'versionAliases': versionAliases,
      'versionCreateTime': versionCreateTime,
      'versionDescription': versionDescription,
      'versionId': versionId,
      'versionUpdateTime': versionUpdateTime,
    };
  }

  factory GoogleCloudAiplatformV1ModelResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelResponse(
      artifactUri: pulumi.Input.fromValue(map['artifactUri'] as String),
      containerSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1ModelContainerSpecResponse.fromMap((map['containerSpec']! as Map).cast<String, dynamic>())),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deployedModels: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1DeployedModelRefResponse>(map['deployedModels']!, (value) => GoogleCloudAiplatformV1DeployedModelRefResponse.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap((map['encryptionSpec']! as Map).cast<String, dynamic>())),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      explanationSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1ExplanationSpecResponse.fromMap((map['explanationSpec']! as Map).cast<String, dynamic>())),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      metadata: pulumi.Input.fromValue(map['metadata']),
      metadataArtifact: pulumi.Input.fromValue(map['metadataArtifact'] as String),
      metadataSchemaUri: pulumi.Input.fromValue(map['metadataSchemaUri'] as String),
      modelSourceInfo: pulumi.Input.fromValue(GoogleCloudAiplatformV1ModelSourceInfoResponse.fromMap((map['modelSourceInfo']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      originalModelInfo: pulumi.Input.fromValue(GoogleCloudAiplatformV1ModelOriginalModelInfoResponse.fromMap((map['originalModelInfo']! as Map).cast<String, dynamic>())),
      pipelineJob: pulumi.Input.fromValue(map['pipelineJob'] as String),
      predictSchemata: pulumi.Input.fromValue(GoogleCloudAiplatformV1PredictSchemataResponse.fromMap((map['predictSchemata']! as Map).cast<String, dynamic>())),
      supportedDeploymentResourcesTypes: pulumi.Input.fromValue((map['supportedDeploymentResourcesTypes'] as List).cast<String>()),
      supportedExportFormats: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1ModelExportFormatResponse>(map['supportedExportFormats']!, (value) => GoogleCloudAiplatformV1ModelExportFormatResponse.fromMap((value as Map).cast<String, dynamic>()))),
      supportedInputStorageFormats: pulumi.Input.fromValue((map['supportedInputStorageFormats'] as List).cast<String>()),
      supportedOutputStorageFormats: pulumi.Input.fromValue((map['supportedOutputStorageFormats'] as List).cast<String>()),
      trainingPipeline: pulumi.Input.fromValue(map['trainingPipeline'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
      versionAliases: pulumi.Input.fromValue((map['versionAliases'] as List).cast<String>()),
      versionCreateTime: pulumi.Input.fromValue(map['versionCreateTime'] as String),
      versionDescription: pulumi.Input.fromValue(map['versionDescription'] as String),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
      versionUpdateTime: pulumi.Input.fromValue(map['versionUpdateTime'] as String),
    );
  }
}

