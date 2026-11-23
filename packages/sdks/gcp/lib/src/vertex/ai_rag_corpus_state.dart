// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_corpus_corpus_status.dart';
import 'ai_rag_corpus_encryption_spec.dart';
import 'ai_rag_corpus_vector_db_config.dart';
import 'ai_rag_corpus_vertex_ai_search_config.dart';

/// Input properties used for looking up and filtering AiRagCorpus resources.
class AiRagCorpusState {
  /// Output only. RagCorpus state.
  /// Structure is documented below.
  final pulumi.Input<List<AiRagCorpusCorpusStatus>?>? corpusStatuses;
  /// Output only. Timestamp when this RagCorpus was created.
  final pulumi.Input<String?>? createTime;
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
  final pulumi.Input<String?>? displayName;
  /// Optional. Immutable. The CMEK key name used to encrypt at-rest data
  /// related to this corpus. Only applicable to RagManagedDb option for Vector
  /// DB. This field can only be set at corpus creation time, and cannot be
  /// updated or deleted.
  /// Structure is documented below.
  final pulumi.Input<AiRagCorpusEncryptionSpec?>? encryptionSpec;
  /// The generated name of the RagCorpus, in the format
  /// projects/{project}/locations/{location}/ragCorpora/{rag_corpus}.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the RagCorpus. eg europe-west4
  final pulumi.Input<String?>? region;
  /// Output only. Timestamp when this RagCorpus was last updated.
  final pulumi.Input<String?>? updateTime;
  /// Optional. Immutable. The config for the RAG-managed Vector DB.
  /// Structure is documented below.
  final pulumi.Input<AiRagCorpusVectorDbConfig?>? vectorDbConfig;
  /// Optional. Immutable. The config for the Vertex AI Search.
  /// Structure is documented below.
  final pulumi.Input<AiRagCorpusVertexAiSearchConfig?>? vertexAiSearchConfig;

  /// Creates a new [AiRagCorpusState].
  /// [corpusStatuses] Output only. RagCorpus state.
  /// [createTime] Output only. Timestamp when this RagCorpus was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. The description of the RagCorpus.
  /// [displayName] Required. The display name of the RagCorpus. The name can be up to 128
  /// [encryptionSpec] Optional. Immutable. The CMEK key name used to encrypt at-rest data
  /// [name] The generated name of the RagCorpus, in the format
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the RagCorpus. eg europe-west4
  /// [updateTime] Output only. Timestamp when this RagCorpus was last updated.
  /// [vectorDbConfig] Optional. Immutable. The config for the RAG-managed Vector DB.
  /// [vertexAiSearchConfig] Optional. Immutable. The config for the Vertex AI Search.
  const AiRagCorpusState({
    this.corpusStatuses,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.encryptionSpec,
    this.name,
    this.project,
    this.region,
    this.updateTime,
    this.vectorDbConfig,
    this.vertexAiSearchConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corpusStatuses': ?pulumi.Input.mapOptionalInputValue<List<AiRagCorpusCorpusStatus>, List<Map<String, dynamic>>>(corpusStatuses, (value) => pulumi.Input.encodeList<AiRagCorpusCorpusStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiRagCorpusEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'updateTime': ?updateTime,
      'vectorDbConfig': ?pulumi.Input.mapOptionalInputValue<AiRagCorpusVectorDbConfig, Map<String, dynamic>>(vectorDbConfig, (value) => value.toMap()),
      'vertexAiSearchConfig': ?pulumi.Input.mapOptionalInputValue<AiRagCorpusVertexAiSearchConfig, Map<String, dynamic>>(vertexAiSearchConfig, (value) => value.toMap()),
    };
  }

  factory AiRagCorpusState.fromMap(Map<String, dynamic> map) {
    return AiRagCorpusState(
      corpusStatuses: (() { final guardedValue = map['corpusStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiRagCorpusCorpusStatus>(guardedValue, (value) => AiRagCorpusCorpusStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagCorpusEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vectorDbConfig: (() { final guardedValue = map['vectorDbConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagCorpusVectorDbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vertexAiSearchConfig: (() { final guardedValue = map['vertexAiSearchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagCorpusVertexAiSearchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
