// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_index_deployed_index.dart';
import 'get_ai_index_encryption_spec.dart';
import 'get_ai_index_index_stat.dart';
import 'get_ai_index_metadata.dart';

/// Result data returned by getAiIndex.
class GetAiIndexResult {
  final String? createTime;
  final String? deletionPolicy;
  final List<GetAiIndexDeployedIndex>? deployedIndexes;
  final String? description;
  final String? displayName;
  final Map<String, String>? effectiveLabels;
  final List<GetAiIndexEncryptionSpec>? encryptionSpecs;
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetAiIndexIndexStat>? indexStats;
  final String? indexUpdateMethod;
  final Map<String, String>? labels;
  final String? metadataSchemaUri;
  final List<GetAiIndexMetadata>? metadatas;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? region;
  final String? updateTime;

  /// Creates a new [GetAiIndexResult].
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [deployedIndexes] Optional.
  /// [description] Optional.
  /// [displayName] Optional.
  /// [effectiveLabels] Optional.
  /// [encryptionSpecs] Optional.
  /// [etag] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [indexStats] Optional.
  /// [indexUpdateMethod] Optional.
  /// [labels] Optional.
  /// [metadataSchemaUri] Optional.
  /// [metadatas] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [region] Optional.
  /// [updateTime] Optional.
  const GetAiIndexResult({
    this.createTime,
    this.deletionPolicy,
    this.deployedIndexes,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.encryptionSpecs,
    this.etag,
    this.id,
    this.indexStats,
    this.indexUpdateMethod,
    this.labels,
    this.metadataSchemaUri,
    this.metadatas,
    this.name,
    this.project,
    this.pulumiLabels,
    this.region,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'deployedIndexes': ?(() { final guardedValue = deployedIndexes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAiIndexDeployedIndex, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'encryptionSpecs': ?(() { final guardedValue = encryptionSpecs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAiIndexEncryptionSpec, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'id': ?id,
      'indexStats': ?(() { final guardedValue = indexStats; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAiIndexIndexStat, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'indexUpdateMethod': ?indexUpdateMethod,
      'labels': ?labels,
      'metadataSchemaUri': ?metadataSchemaUri,
      'metadatas': ?(() { final guardedValue = metadatas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAiIndexMetadata, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'updateTime': ?updateTime,
    };
  }

  factory GetAiIndexResult.fromMap(Map<String, dynamic> map) {
    return GetAiIndexResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployedIndexes: (() { final guardedValue = map['deployedIndexes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAiIndexDeployedIndex>(guardedValue, (value) => GetAiIndexDeployedIndex.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      encryptionSpecs: (() { final guardedValue = map['encryptionSpecs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAiIndexEncryptionSpec>(guardedValue, (value) => GetAiIndexEncryptionSpec.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      indexStats: (() { final guardedValue = map['indexStats']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAiIndexIndexStat>(guardedValue, (value) => GetAiIndexIndexStat.fromMap((value as Map).cast<String, dynamic>())); })(),
      indexUpdateMethod: (() { final guardedValue = map['indexUpdateMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      metadataSchemaUri: (() { final guardedValue = map['metadataSchemaUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadatas: (() { final guardedValue = map['metadatas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAiIndexMetadata>(guardedValue, (value) => GetAiIndexMetadata.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
