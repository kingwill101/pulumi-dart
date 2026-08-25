// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_artifacts_config_slide_generation_options_slide_example_resource_bigquery_resource.dart';
import 'analyst_agent_persona_artifacts_config_slide_generation_options_slide_example_resource_f1_resource.dart';
import 'analyst_agent_persona_artifacts_config_slide_generation_options_slide_example_resource_google_cloud_storage_resource.dart';
import 'analyst_agent_persona_artifacts_config_slide_generation_options_slide_example_resource_google_drive_resource.dart';
import 'analyst_agent_persona_artifacts_config_slide_generation_options_slide_example_resource_raw_file_resource.dart';

class AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResource {
  /// Represents a BigQuery resource.
  /// Structure is documented below.
  final pulumi.Input<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceBigqueryResource?>? bigqueryResource;
  /// A user-friendly name for this resource. This can be shown to the user
  /// and used by the model.
  final pulumi.Input<String?>? displayLabel;
  /// - Represents an F1 resource.
  /// Structure is documented below.
  final pulumi.Input<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceF1Resource?>? f1Resource;
  /// Represents a Google Cloud Storage resource.
  /// Structure is documented below.
  final pulumi.Input<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceGoogleCloudStorageResource?>? googleCloudStorageResource;
  /// Represents a Google Drive resource.
  /// Structure is documented below.
  final pulumi.Input<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceGoogleDriveResource?>? googleDriveResource;
  /// A description of the resource. The model may use this, it will not be
  /// shown to users.
  final pulumi.Input<String?>? modelDescription;
  /// Represents a raw file resource.
  /// Structure is documented below.
  final pulumi.Input<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceRawFileResource?>? rawFileResource;
  /// If true, use RAG to retrieve relevant information from the resources.
  /// Must only be set for file-based resources.
  final pulumi.Input<bool?>? useRag;

  /// Creates a new [AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResource].
  /// [bigqueryResource] Represents a BigQuery resource.
  /// [displayLabel] A user-friendly name for this resource. This can be shown to the user
  /// [f1Resource] - Represents an F1 resource.
  /// [googleCloudStorageResource] Represents a Google Cloud Storage resource.
  /// [googleDriveResource] Represents a Google Drive resource.
  /// [modelDescription] A description of the resource. The model may use this, it will not be
  /// [rawFileResource] Represents a raw file resource.
  /// [useRag] If true, use RAG to retrieve relevant information from the resources.
  const AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResource({
    this.bigqueryResource,
    this.displayLabel,
    this.f1Resource,
    this.googleCloudStorageResource,
    this.googleDriveResource,
    this.modelDescription,
    this.rawFileResource,
    this.useRag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryResource': ?pulumi.Input.mapOptionalInputValue<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceBigqueryResource, Map<String, dynamic>>(bigqueryResource, (value) => value.toMap()),
      'displayLabel': ?displayLabel,
      'f1Resource': ?pulumi.Input.mapOptionalInputValue<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceF1Resource, Map<String, dynamic>>(f1Resource, (value) => value.toMap()),
      'googleCloudStorageResource': ?pulumi.Input.mapOptionalInputValue<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceGoogleCloudStorageResource, Map<String, dynamic>>(googleCloudStorageResource, (value) => value.toMap()),
      'googleDriveResource': ?pulumi.Input.mapOptionalInputValue<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceGoogleDriveResource, Map<String, dynamic>>(googleDriveResource, (value) => value.toMap()),
      'modelDescription': ?modelDescription,
      'rawFileResource': ?pulumi.Input.mapOptionalInputValue<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceRawFileResource, Map<String, dynamic>>(rawFileResource, (value) => value.toMap()),
      'useRag': ?useRag,
    };
  }

  factory AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResource.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResource(
      bigqueryResource: (() { final guardedValue = map['bigqueryResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceBigqueryResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayLabel: (() { final guardedValue = map['displayLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      f1Resource: (() { final guardedValue = map['f1Resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceF1Resource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleCloudStorageResource: (() { final guardedValue = map['googleCloudStorageResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceGoogleCloudStorageResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleDriveResource: (() { final guardedValue = map['googleDriveResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceGoogleDriveResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelDescription: (() { final guardedValue = map['modelDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawFileResource: (() { final guardedValue = map['rawFileResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceRawFileResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useRag: (() { final guardedValue = map['useRag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
