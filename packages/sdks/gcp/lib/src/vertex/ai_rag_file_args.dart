// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_file_gcs_source.dart';
import 'ai_rag_file_google_drive_source.dart';
import 'ai_rag_file_rag_file_parsing_config.dart';
import 'ai_rag_file_rag_file_transformation_config.dart';

/// {@template pulumi_vertex_ai_rag_file_ai_rag_file_args_doc}
/// The set of arguments for AiRagFile.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_rag_file_ai_rag_file_args_doc}
class AiRagFileArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The Cloud Storage location of the file to import.
  /// Structure is documented below.
  final pulumi.Input<AiRagFileGcsSource?>? gcsSource;
  /// The Google Drive location of the file to import.
  /// Structure is documented below.
  final pulumi.Input<AiRagFileGoogleDriveSource?>? googleDriveSource;
  /// The maximum number of queries per minute that the import is allowed to make
  /// to the embedding model specified on the RagCorpus.
  final pulumi.Input<int?>? maxEmbeddingRequestsPerMin;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ID of the RagCorpus to import the file into, for example the `name`
  /// attribute of a `gcp.vertex.AiRagCorpus` resource.
  final pulumi.Input<String> ragCorpus;
  /// The parsing config used when importing the file. The default parser is used
  /// if this field is not set.
  /// Structure is documented below.
  final pulumi.Input<AiRagFileRagFileParsingConfig?>? ragFileParsingConfig;
  /// The transformation config used when importing the file.
  /// Structure is documented below.
  final pulumi.Input<AiRagFileRagFileTransformationConfig?>? ragFileTransformationConfig;
  /// The region of the RagCorpus. eg europe-west4
  final pulumi.Input<String> region;

  /// Creates a new [AiRagFileArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [gcsSource] The Cloud Storage location of the file to import.
  /// [googleDriveSource] The Google Drive location of the file to import.
  /// [maxEmbeddingRequestsPerMin] The maximum number of queries per minute that the import is allowed to make
  /// [project] The ID of the project in which the resource belongs.
  /// [ragCorpus] The ID of the RagCorpus to import the file into, for example the `name`
  /// [ragFileParsingConfig] The parsing config used when importing the file. The default parser is used
  /// [ragFileTransformationConfig] The transformation config used when importing the file.
  /// [region] The region of the RagCorpus. eg europe-west4
  const AiRagFileArgs({
    this.deletionPolicy,
    this.gcsSource,
    this.googleDriveSource,
    this.maxEmbeddingRequestsPerMin,
    this.project,
    required this.ragCorpus,
    this.ragFileParsingConfig,
    this.ragFileTransformationConfig,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'gcsSource': ?pulumi.Input.mapOptionalInputValue<AiRagFileGcsSource, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
      'googleDriveSource': ?pulumi.Input.mapOptionalInputValue<AiRagFileGoogleDriveSource, Map<String, dynamic>>(googleDriveSource, (value) => value.toMap()),
      'maxEmbeddingRequestsPerMin': ?maxEmbeddingRequestsPerMin,
      'project': ?project,
      'ragCorpus': ragCorpus,
      'ragFileParsingConfig': ?pulumi.Input.mapOptionalInputValue<AiRagFileRagFileParsingConfig, Map<String, dynamic>>(ragFileParsingConfig, (value) => value.toMap()),
      'ragFileTransformationConfig': ?pulumi.Input.mapOptionalInputValue<AiRagFileRagFileTransformationConfig, Map<String, dynamic>>(ragFileTransformationConfig, (value) => value.toMap()),
      'region': region,
    };
  }

  factory AiRagFileArgs.fromMap(Map<String, dynamic> map) {
    return AiRagFileArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcsSource: (() { final guardedValue = map['gcsSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagFileGcsSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleDriveSource: (() { final guardedValue = map['googleDriveSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagFileGoogleDriveSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxEmbeddingRequestsPerMin: (() { final guardedValue = map['maxEmbeddingRequestsPerMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ragCorpus: pulumi.Input.fromValue(map['ragCorpus'] as String),
      ragFileParsingConfig: (() { final guardedValue = map['ragFileParsingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagFileRagFileParsingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ragFileTransformationConfig: (() { final guardedValue = map['ragFileTransformationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagFileRagFileTransformationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
