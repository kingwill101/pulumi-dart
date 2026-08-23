// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_resource_bigquery_resource.dart';
import 'analyst_agent_persona_resource_f1_resource.dart';
import 'analyst_agent_persona_resource_google_cloud_storage_resource.dart';
import 'analyst_agent_persona_resource_google_drive_resource.dart';
import 'analyst_agent_persona_resource_raw_file_resource.dart';

class AnalystAgentPersonaResource {
  /// Represents a BigQuery resource.
  final pulumi.Input<AnalystAgentPersonaResourceBigqueryResource>? bigqueryResource;
  /// A user-friendly name for this resource. This can be shown to the user
  /// and used by the model.
  final pulumi.Input<String>? displayLabel;
  /// - Represents an F1 resource.
  final pulumi.Input<AnalystAgentPersonaResourceF1Resource>? f1Resource;
  /// Represents a Google Cloud Storage resource.
  final pulumi.Input<AnalystAgentPersonaResourceGoogleCloudStorageResource>? googleCloudStorageResource;
  /// Represents a Google Drive resource.
  final pulumi.Input<AnalystAgentPersonaResourceGoogleDriveResource>? googleDriveResource;
  /// The description of the persona review, used by the model.
  final pulumi.Input<String>? modelDescription;
  /// Represents a raw file resource.
  final pulumi.Input<AnalystAgentPersonaResourceRawFileResource>? rawFileResource;
  /// If true, use RAG to retrieve relevant information from the resources.
  ///
  /// Must only be set for file-based resources.
  final pulumi.Input<bool>? useRag;

  /// Creates a new [AnalystAgentPersonaResource].
  /// [bigqueryResource] Represents a BigQuery resource.
  /// [displayLabel] A user-friendly name for this resource. This can be shown to the user
  /// [f1Resource] - Represents an F1 resource.
  /// [googleCloudStorageResource] Represents a Google Cloud Storage resource.
  /// [googleDriveResource] Represents a Google Drive resource.
  /// [modelDescription] The description of the persona review, used by the model.
  /// [rawFileResource] Represents a raw file resource.
  /// [useRag] If true, use RAG to retrieve relevant information from the resources.
  const AnalystAgentPersonaResource({
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
      'bigqueryResource': ?pulumi.Input.mapOptionalInputValue<AnalystAgentPersonaResourceBigqueryResource, Map<String, dynamic>>(bigqueryResource, (value) => value.toMap()),
      'displayLabel': ?displayLabel,
      'f1Resource': ?pulumi.Input.mapOptionalInputValue<AnalystAgentPersonaResourceF1Resource, Map<String, dynamic>>(f1Resource, (value) => value.toMap()),
      'googleCloudStorageResource': ?pulumi.Input.mapOptionalInputValue<AnalystAgentPersonaResourceGoogleCloudStorageResource, Map<String, dynamic>>(googleCloudStorageResource, (value) => value.toMap()),
      'googleDriveResource': ?pulumi.Input.mapOptionalInputValue<AnalystAgentPersonaResourceGoogleDriveResource, Map<String, dynamic>>(googleDriveResource, (value) => value.toMap()),
      'modelDescription': ?modelDescription,
      'rawFileResource': ?pulumi.Input.mapOptionalInputValue<AnalystAgentPersonaResourceRawFileResource, Map<String, dynamic>>(rawFileResource, (value) => value.toMap()),
      'useRag': ?useRag,
    };
  }

  factory AnalystAgentPersonaResource.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaResource(
      bigqueryResource: (() { final guardedValue = map['bigqueryResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalystAgentPersonaResourceBigqueryResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayLabel: (() { final guardedValue = map['displayLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      f1Resource: (() { final guardedValue = map['f1Resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalystAgentPersonaResourceF1Resource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleCloudStorageResource: (() { final guardedValue = map['googleCloudStorageResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalystAgentPersonaResourceGoogleCloudStorageResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleDriveResource: (() { final guardedValue = map['googleDriveResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalystAgentPersonaResourceGoogleDriveResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelDescription: (() { final guardedValue = map['modelDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawFileResource: (() { final guardedValue = map['rawFileResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalystAgentPersonaResourceRawFileResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useRag: (() { final guardedValue = map['useRag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
