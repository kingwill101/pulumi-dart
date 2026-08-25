// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topic_ingestion_data_source_setting.dart';
import 'get_topic_message_storage_policy.dart';
import 'get_topic_message_transform.dart';
import 'get_topic_schema_setting.dart';

/// Result data returned by getTopic.
class GetTopicResult {
  final String? deletionPolicy;
  final Map<String, String>? effectiveLabels;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetTopicIngestionDataSourceSetting>? ingestionDataSourceSettings;
  final String? kmsKeyName;
  final Map<String, String>? labels;
  final String? messageRetentionDuration;
  final List<GetTopicMessageStoragePolicy>? messageStoragePolicies;
  final List<GetTopicMessageTransform>? messageTransforms;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final List<GetTopicSchemaSetting>? schemaSettings;
  final Map<String, String>? tags;

  /// Creates a new [GetTopicResult].
  /// [deletionPolicy] Optional.
  /// [effectiveLabels] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ingestionDataSourceSettings] Optional.
  /// [kmsKeyName] Optional.
  /// [labels] Optional.
  /// [messageRetentionDuration] Optional.
  /// [messageStoragePolicies] Optional.
  /// [messageTransforms] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [schemaSettings] Optional.
  /// [tags] Optional.
  const GetTopicResult({
    this.deletionPolicy,
    this.effectiveLabels,
    this.id,
    this.ingestionDataSourceSettings,
    this.kmsKeyName,
    this.labels,
    this.messageRetentionDuration,
    this.messageStoragePolicies,
    this.messageTransforms,
    this.name,
    this.project,
    this.pulumiLabels,
    this.schemaSettings,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'id': ?id,
      'ingestionDataSourceSettings': ?(() { final guardedValue = ingestionDataSourceSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTopicIngestionDataSourceSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'messageRetentionDuration': ?messageRetentionDuration,
      'messageStoragePolicies': ?(() { final guardedValue = messageStoragePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTopicMessageStoragePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'messageTransforms': ?(() { final guardedValue = messageTransforms; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTopicMessageTransform, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'schemaSettings': ?(() { final guardedValue = schemaSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTopicSchemaSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
    };
  }

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ingestionDataSourceSettings: (() { final guardedValue = map['ingestionDataSourceSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTopicIngestionDataSourceSetting>(guardedValue, (value) => GetTopicIngestionDataSourceSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      messageRetentionDuration: (() { final guardedValue = map['messageRetentionDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      messageStoragePolicies: (() { final guardedValue = map['messageStoragePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTopicMessageStoragePolicy>(guardedValue, (value) => GetTopicMessageStoragePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      messageTransforms: (() { final guardedValue = map['messageTransforms']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTopicMessageTransform>(guardedValue, (value) => GetTopicMessageTransform.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      schemaSettings: (() { final guardedValue = map['schemaSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTopicSchemaSetting>(guardedValue, (value) => GetTopicSchemaSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
