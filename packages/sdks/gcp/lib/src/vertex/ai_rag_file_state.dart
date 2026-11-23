// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_file_file_status.dart';
import 'ai_rag_file_gcs_source.dart';
import 'ai_rag_file_google_drive_source.dart';
import 'ai_rag_file_rag_file_parsing_config.dart';
import 'ai_rag_file_rag_file_transformation_config.dart';

/// Input properties used for looking up and filtering AiRagFile resources.
class AiRagFileState {
  /// Timestamp when this RagFile was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description of the RagFile.
  final pulumi.Input<String?>? description;
  /// The display name of the RagFile, derived by the API from the source file.
  final pulumi.Input<String?>? displayName;
  /// State of the RagFile.
  /// Structure is documented below.
  final pulumi.Input<List<AiRagFileFileStatus>?>? fileStatuses;
  /// The Cloud Storage location of the file to import.
  /// Structure is documented below.
  final pulumi.Input<AiRagFileGcsSource?>? gcsSource;
  /// The Google Drive location of the file to import.
  /// Structure is documented below.
  final pulumi.Input<AiRagFileGoogleDriveSource?>? googleDriveSource;
  /// The maximum number of queries per minute that the import is allowed to make
  /// to the embedding model specified on the RagCorpus.
  final pulumi.Input<int?>? maxEmbeddingRequestsPerMin;
  /// The generated ID of the RagFile.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ID of the RagCorpus to import the file into, for example the `name`
  /// attribute of a `gcp.vertex.AiRagCorpus` resource.
  final pulumi.Input<String?>? ragCorpus;
  /// The parsing config used when importing the file. The default parser is used
  /// if this field is not set.
  /// Structure is documented below.
  final pulumi.Input<AiRagFileRagFileParsingConfig?>? ragFileParsingConfig;
  /// The transformation config used when importing the file.
  /// Structure is documented below.
  final pulumi.Input<AiRagFileRagFileTransformationConfig?>? ragFileTransformationConfig;
  /// The region of the RagCorpus. eg europe-west4
  final pulumi.Input<String?>? region;
  /// Timestamp when this RagFile was last updated.
  final pulumi.Input<String?>? updateTime;
  /// The metadata for metadata search, in JSON format.
  final pulumi.Input<String?>? userMetadata;

  /// Creates a new [AiRagFileState].
  /// [createTime] Timestamp when this RagFile was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the RagFile.
  /// [displayName] The display name of the RagFile, derived by the API from the source file.
  /// [fileStatuses] State of the RagFile.
  /// [gcsSource] The Cloud Storage location of the file to import.
  /// [googleDriveSource] The Google Drive location of the file to import.
  /// [maxEmbeddingRequestsPerMin] The maximum number of queries per minute that the import is allowed to make
  /// [name] The generated ID of the RagFile.
  /// [project] The ID of the project in which the resource belongs.
  /// [ragCorpus] The ID of the RagCorpus to import the file into, for example the `name`
  /// [ragFileParsingConfig] The parsing config used when importing the file. The default parser is used
  /// [ragFileTransformationConfig] The transformation config used when importing the file.
  /// [region] The region of the RagCorpus. eg europe-west4
  /// [updateTime] Timestamp when this RagFile was last updated.
  /// [userMetadata] The metadata for metadata search, in JSON format.
  const AiRagFileState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.fileStatuses,
    this.gcsSource,
    this.googleDriveSource,
    this.maxEmbeddingRequestsPerMin,
    this.name,
    this.project,
    this.ragCorpus,
    this.ragFileParsingConfig,
    this.ragFileTransformationConfig,
    this.region,
    this.updateTime,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'fileStatuses': ?pulumi.Input.mapOptionalInputValue<List<AiRagFileFileStatus>, List<Map<String, dynamic>>>(fileStatuses, (value) => pulumi.Input.encodeList<AiRagFileFileStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gcsSource': ?pulumi.Input.mapOptionalInputValue<AiRagFileGcsSource, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
      'googleDriveSource': ?pulumi.Input.mapOptionalInputValue<AiRagFileGoogleDriveSource, Map<String, dynamic>>(googleDriveSource, (value) => value.toMap()),
      'maxEmbeddingRequestsPerMin': ?maxEmbeddingRequestsPerMin,
      'name': ?name,
      'project': ?project,
      'ragCorpus': ?ragCorpus,
      'ragFileParsingConfig': ?pulumi.Input.mapOptionalInputValue<AiRagFileRagFileParsingConfig, Map<String, dynamic>>(ragFileParsingConfig, (value) => value.toMap()),
      'ragFileTransformationConfig': ?pulumi.Input.mapOptionalInputValue<AiRagFileRagFileTransformationConfig, Map<String, dynamic>>(ragFileTransformationConfig, (value) => value.toMap()),
      'region': ?region,
      'updateTime': ?updateTime,
      'userMetadata': ?userMetadata,
    };
  }

  factory AiRagFileState.fromMap(Map<String, dynamic> map) {
    return AiRagFileState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileStatuses: (() { final guardedValue = map['fileStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiRagFileFileStatus>(guardedValue, (value) => AiRagFileFileStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gcsSource: (() { final guardedValue = map['gcsSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagFileGcsSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleDriveSource: (() { final guardedValue = map['googleDriveSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagFileGoogleDriveSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxEmbeddingRequestsPerMin: (() { final guardedValue = map['maxEmbeddingRequestsPerMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ragCorpus: (() { final guardedValue = map['ragCorpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ragFileParsingConfig: (() { final guardedValue = map['ragFileParsingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagFileRagFileParsingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ragFileTransformationConfig: (() { final guardedValue = map['ragFileTransformationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagFileRagFileTransformationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userMetadata: (() { final guardedValue = map['userMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
