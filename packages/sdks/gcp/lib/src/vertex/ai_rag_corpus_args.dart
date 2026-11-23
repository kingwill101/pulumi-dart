// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_corpus_encryption_spec.dart';
import 'ai_rag_corpus_vector_db_config.dart';
import 'ai_rag_corpus_vertex_ai_search_config.dart';

/// {@template pulumi_vertex_ai_rag_corpus_ai_rag_corpus_args_doc}
/// The set of arguments for AiRagCorpus.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_rag_corpus_ai_rag_corpus_args_doc}
class AiRagCorpusArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. The description of the RagCorpus.
  final pulumi.Input<String?>? description;
  /// Required. The display name of the RagCorpus. The name can be up to 128
  /// characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Optional. Immutable. The CMEK key name used to encrypt at-rest data
  /// related to this corpus. Only applicable to RagManagedDb option for Vector
  /// DB. This field can only be set at corpus creation time, and cannot be
  /// updated or deleted.
  /// Structure is documented below.
  final pulumi.Input<AiRagCorpusEncryptionSpec?>? encryptionSpec;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the RagCorpus. eg europe-west4
  final pulumi.Input<String> region;
  /// Optional. Immutable. The config for the RAG-managed Vector DB.
  /// Structure is documented below.
  final pulumi.Input<AiRagCorpusVectorDbConfig?>? vectorDbConfig;
  /// Optional. Immutable. The config for the Vertex AI Search.
  /// Structure is documented below.
  final pulumi.Input<AiRagCorpusVertexAiSearchConfig?>? vertexAiSearchConfig;

  /// Creates a new [AiRagCorpusArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. The description of the RagCorpus.
  /// [displayName] Required. The display name of the RagCorpus. The name can be up to 128
  /// [encryptionSpec] Optional. Immutable. The CMEK key name used to encrypt at-rest data
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the RagCorpus. eg europe-west4
  /// [vectorDbConfig] Optional. Immutable. The config for the RAG-managed Vector DB.
  /// [vertexAiSearchConfig] Optional. Immutable. The config for the Vertex AI Search.
  const AiRagCorpusArgs({
    this.deletionPolicy,
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.project,
    required this.region,
    this.vectorDbConfig,
    this.vertexAiSearchConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiRagCorpusEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'project': ?project,
      'region': region,
      'vectorDbConfig': ?pulumi.Input.mapOptionalInputValue<AiRagCorpusVectorDbConfig, Map<String, dynamic>>(vectorDbConfig, (value) => value.toMap()),
      'vertexAiSearchConfig': ?pulumi.Input.mapOptionalInputValue<AiRagCorpusVertexAiSearchConfig, Map<String, dynamic>>(vertexAiSearchConfig, (value) => value.toMap()),
    };
  }

  factory AiRagCorpusArgs.fromMap(Map<String, dynamic> map) {
    return AiRagCorpusArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagCorpusEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      vectorDbConfig: (() { final guardedValue = map['vectorDbConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagCorpusVectorDbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vertexAiSearchConfig: (() { final guardedValue = map['vertexAiSearchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagCorpusVertexAiSearchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
