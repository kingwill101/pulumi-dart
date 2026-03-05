// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_index_deployed_index.dart';
import 'get_ai_index_encryption_spec.dart';
import 'get_ai_index_index_stat.dart';
import 'get_ai_index_metadata.dart';

/// Result data returned by getAiIndex.
class GetAiIndexResult {
  final String createTime;
  final List<GetAiIndexDeployedIndex> deployedIndexes;
  final String description;
  final String displayName;
  final Map<String, String> effectiveLabels;
  final List<GetAiIndexEncryptionSpec> encryptionSpecs;
  final String etag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetAiIndexIndexStat> indexStats;
  final String indexUpdateMethod;
  final Map<String, String> labels;
  final String metadataSchemaUri;
  final List<GetAiIndexMetadata> metadatas;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String region;
  final String updateTime;

  /// Creates a new [GetAiIndexResult].
  /// [createTime] Required.
  /// [deployedIndexes] Required.
  /// [description] Required.
  /// [displayName] Required.
  /// [effectiveLabels] Required.
  /// [encryptionSpecs] Required.
  /// [etag] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [indexStats] Required.
  /// [indexUpdateMethod] Required.
  /// [labels] Required.
  /// [metadataSchemaUri] Required.
  /// [metadatas] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [region] Required.
  /// [updateTime] Required.
  GetAiIndexResult({
    required this.createTime,
    required this.deployedIndexes,
    required this.description,
    required this.displayName,
    required this.effectiveLabels,
    required this.encryptionSpecs,
    required this.etag,
    required this.id,
    required this.indexStats,
    required this.indexUpdateMethod,
    required this.labels,
    required this.metadataSchemaUri,
    required this.metadatas,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.region,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deployedIndexes': pulumi.Input.encodeList<GetAiIndexDeployedIndex, Map<String, dynamic>>(deployedIndexes, (value) => value.toMap()),
      'description': description,
      'displayName': displayName,
      'effectiveLabels': effectiveLabels,
      'encryptionSpecs': pulumi.Input.encodeList<GetAiIndexEncryptionSpec, Map<String, dynamic>>(encryptionSpecs, (value) => value.toMap()),
      'etag': etag,
      'id': id,
      'indexStats': pulumi.Input.encodeList<GetAiIndexIndexStat, Map<String, dynamic>>(indexStats, (value) => value.toMap()),
      'indexUpdateMethod': indexUpdateMethod,
      'labels': labels,
      'metadataSchemaUri': metadataSchemaUri,
      'metadatas': pulumi.Input.encodeList<GetAiIndexMetadata, Map<String, dynamic>>(metadatas, (value) => value.toMap()),
      'name': name,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'region': region,
      'updateTime': updateTime,
    };
  }

  factory GetAiIndexResult.fromMap(Map<String, dynamic> map) {
    return GetAiIndexResult(
      createTime: map['createTime'] as String,
      deployedIndexes: pulumi.Input.decodeList<GetAiIndexDeployedIndex>(map['deployedIndexes']!, (value) => GetAiIndexDeployedIndex.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      encryptionSpecs: pulumi.Input.decodeList<GetAiIndexEncryptionSpec>(map['encryptionSpecs']!, (value) => GetAiIndexEncryptionSpec.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      id: map['id'] as String,
      indexStats: pulumi.Input.decodeList<GetAiIndexIndexStat>(map['indexStats']!, (value) => GetAiIndexIndexStat.fromMap((value as Map).cast<String, dynamic>())),
      indexUpdateMethod: map['indexUpdateMethod'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      metadataSchemaUri: map['metadataSchemaUri'] as String,
      metadatas: pulumi.Input.decodeList<GetAiIndexMetadata>(map['metadatas']!, (value) => GetAiIndexMetadata.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      region: map['region'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

