// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_ingestion_data_source_settings.dart';
import 'topic_message_storage_policy.dart';
import 'topic_message_transform.dart';
import 'topic_schema_settings.dart';

/// {@template pulumi_pubsub_topic_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_pubsub_topic_topic_args_doc}
class TopicArgs {
  /// Settings for ingestion from a data source into this topic.
  /// Structure is documented below.
  final pulumi.Input<TopicIngestionDataSourceSettings>? ingestionDataSourceSettings;
  /// The resource name of the Cloud KMS CryptoKey to be used to protect access
  /// to messages published on this topic. Your project's PubSub service account
  /// (`service-{{PROJECT_NUMBER}}@gcp-sa-pubsub.iam.gserviceaccount.com`) must have
  /// `roles/cloudkms.cryptoKeyEncrypterDecrypter` to use this feature.
  /// The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  final pulumi.Input<String>? kmsKeyName;
  /// A set of key/value label pairs to assign to this Topic.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Indicates the minimum duration to retain a message after it is published
  /// to the topic. If this field is set, messages published to the topic in
  /// the last messageRetentionDuration are always available to subscribers.
  /// For instance, it allows any attached subscription to seek to a timestamp
  /// that is up to messageRetentionDuration in the past. If this field is not
  /// set, message retention is controlled by settings on individual subscriptions.
  /// The rotation period has the format of a decimal number, followed by the
  /// letter `s` (seconds). Cannot be more than 31 days or less than 10 minutes.
  final pulumi.Input<String>? messageRetentionDuration;
  /// Policy constraining the set of Google Cloud Platform regions where
  /// messages published to the topic may be stored. If not present, then no
  /// constraints are in effect.
  /// Structure is documented below.
  final pulumi.Input<TopicMessageStoragePolicy>? messageStoragePolicy;
  /// Transforms to be applied to messages published to the topic. Transforms are applied in the
  /// order specified.
  /// Structure is documented below.
  final pulumi.Input<List<TopicMessageTransform>>? messageTransforms;
  /// Name of the topic.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Settings for validating messages published against a schema.
  /// Structure is documented below.
  final pulumi.Input<TopicSchemaSettings>? schemaSettings;
  /// Input only. Resource manager tags to be bound to the topic. Tag keys and
  /// values have the same definition as resource manager tags. Keys must be in
  /// the format tagKeys/{tag_key_id}, and values are in the format
  /// tagValues/456. The field is ignored when empty. The field is immutable and
  /// causes resource replacement when mutated. This field is only set at create
  /// time and modifying this field after creation will trigger recreation. To
  /// apply tags to an existing resource, see the `gcp.tags.TagValue`
  /// resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TopicArgs].
  /// [ingestionDataSourceSettings] Settings for ingestion from a data source into this topic.
  /// [kmsKeyName] The resource name of the Cloud KMS CryptoKey to be used to protect access
  /// [labels] A set of key/value label pairs to assign to this Topic.
  /// [messageRetentionDuration] Indicates the minimum duration to retain a message after it is published
  /// [messageStoragePolicy] Policy constraining the set of Google Cloud Platform regions where
  /// [messageTransforms] Transforms to be applied to messages published to the topic. Transforms are applied in the
  /// [name] Name of the topic.
  /// [project] The ID of the project in which the resource belongs.
  /// [schemaSettings] Settings for validating messages published against a schema.
  /// [tags] Input only. Resource manager tags to be bound to the topic. Tag keys and
  TopicArgs({
    this.ingestionDataSourceSettings,
    this.kmsKeyName,
    this.labels,
    this.messageRetentionDuration,
    this.messageStoragePolicy,
    this.messageTransforms,
    this.name,
    this.project,
    this.schemaSettings,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestionDataSourceSettings': ?pulumi.Input.mapOptionalInputValue<TopicIngestionDataSourceSettings, Map<String, dynamic>>(ingestionDataSourceSettings, (value) => value.toMap()),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'messageRetentionDuration': ?messageRetentionDuration,
      'messageStoragePolicy': ?pulumi.Input.mapOptionalInputValue<TopicMessageStoragePolicy, Map<String, dynamic>>(messageStoragePolicy, (value) => value.toMap()),
      'messageTransforms': ?pulumi.Input.mapOptionalInputValue<List<TopicMessageTransform>, List<Map<String, dynamic>>>(messageTransforms, (value) => pulumi.Input.encodeList<TopicMessageTransform, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'schemaSettings': ?pulumi.Input.mapOptionalInputValue<TopicSchemaSettings, Map<String, dynamic>>(schemaSettings, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      ingestionDataSourceSettings: map['ingestionDataSourceSettings'] == null ? null : (TopicIngestionDataSourceSettings.fromMap((map['ingestionDataSourceSettings']! as Map).cast<String, dynamic>())).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      messageRetentionDuration: map['messageRetentionDuration'] == null ? null : (map['messageRetentionDuration']! as String).input(),
      messageStoragePolicy: map['messageStoragePolicy'] == null ? null : (TopicMessageStoragePolicy.fromMap((map['messageStoragePolicy']! as Map).cast<String, dynamic>())).input(),
      messageTransforms: map['messageTransforms'] == null ? null : (pulumi.Input.decodeList<TopicMessageTransform>(map['messageTransforms']!, (value) => TopicMessageTransform.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      schemaSettings: map['schemaSettings'] == null ? null : (TopicSchemaSettings.fromMap((map['schemaSettings']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

