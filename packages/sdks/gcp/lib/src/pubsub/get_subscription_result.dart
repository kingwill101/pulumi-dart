// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_bigquery_config.dart';
import 'get_subscription_cloud_storage_config.dart';
import 'get_subscription_dead_letter_policy.dart';
import 'get_subscription_expiration_policy.dart';
import 'get_subscription_message_transform.dart';
import 'get_subscription_push_config.dart';
import 'get_subscription_retry_policy.dart';

/// Result data returned by getSubscription.
class GetSubscriptionResult {
  final int? ackDeadlineSeconds;
  final List<GetSubscriptionBigqueryConfig>? bigqueryConfigs;
  final List<GetSubscriptionCloudStorageConfig>? cloudStorageConfigs;
  final List<GetSubscriptionDeadLetterPolicy>? deadLetterPolicies;
  final String? deletionPolicy;
  final Map<String, String>? effectiveLabels;
  final bool? enableExactlyOnceDelivery;
  final bool? enableMessageOrdering;
  final List<GetSubscriptionExpirationPolicy>? expirationPolicies;
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? messageRetentionDuration;
  final List<GetSubscriptionMessageTransform>? messageTransforms;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final List<GetSubscriptionPushConfig>? pushConfigs;
  final bool? retainAckedMessages;
  final List<GetSubscriptionRetryPolicy>? retryPolicies;
  final Map<String, String>? tags;
  final String? topic;

  /// Creates a new [GetSubscriptionResult].
  /// [ackDeadlineSeconds] Optional.
  /// [bigqueryConfigs] Optional.
  /// [cloudStorageConfigs] Optional.
  /// [deadLetterPolicies] Optional.
  /// [deletionPolicy] Optional.
  /// [effectiveLabels] Optional.
  /// [enableExactlyOnceDelivery] Optional.
  /// [enableMessageOrdering] Optional.
  /// [expirationPolicies] Optional.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [messageRetentionDuration] Optional.
  /// [messageTransforms] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [pushConfigs] Optional.
  /// [retainAckedMessages] Optional.
  /// [retryPolicies] Optional.
  /// [tags] Optional.
  /// [topic] Optional.
  const GetSubscriptionResult({
    this.ackDeadlineSeconds,
    this.bigqueryConfigs,
    this.cloudStorageConfigs,
    this.deadLetterPolicies,
    this.deletionPolicy,
    this.effectiveLabels,
    this.enableExactlyOnceDelivery,
    this.enableMessageOrdering,
    this.expirationPolicies,
    this.filter,
    this.id,
    this.labels,
    this.messageRetentionDuration,
    this.messageTransforms,
    this.name,
    this.project,
    this.pulumiLabels,
    this.pushConfigs,
    this.retainAckedMessages,
    this.retryPolicies,
    this.tags,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ackDeadlineSeconds': ?ackDeadlineSeconds,
      'bigqueryConfigs': ?(() { final guardedValue = bigqueryConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSubscriptionBigqueryConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cloudStorageConfigs': ?(() { final guardedValue = cloudStorageConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSubscriptionCloudStorageConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deadLetterPolicies': ?(() { final guardedValue = deadLetterPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSubscriptionDeadLetterPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'enableExactlyOnceDelivery': ?enableExactlyOnceDelivery,
      'enableMessageOrdering': ?enableMessageOrdering,
      'expirationPolicies': ?(() { final guardedValue = expirationPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSubscriptionExpirationPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filter': ?filter,
      'id': ?id,
      'labels': ?labels,
      'messageRetentionDuration': ?messageRetentionDuration,
      'messageTransforms': ?(() { final guardedValue = messageTransforms; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSubscriptionMessageTransform, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'pushConfigs': ?(() { final guardedValue = pushConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSubscriptionPushConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'retainAckedMessages': ?retainAckedMessages,
      'retryPolicies': ?(() { final guardedValue = retryPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSubscriptionRetryPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'topic': ?topic,
    };
  }

  factory GetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult(
      ackDeadlineSeconds: (() { final guardedValue = map['ackDeadlineSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      bigqueryConfigs: (() { final guardedValue = map['bigqueryConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSubscriptionBigqueryConfig>(guardedValue, (value) => GetSubscriptionBigqueryConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      cloudStorageConfigs: (() { final guardedValue = map['cloudStorageConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSubscriptionCloudStorageConfig>(guardedValue, (value) => GetSubscriptionCloudStorageConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      deadLetterPolicies: (() { final guardedValue = map['deadLetterPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSubscriptionDeadLetterPolicy>(guardedValue, (value) => GetSubscriptionDeadLetterPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      enableExactlyOnceDelivery: (() { final guardedValue = map['enableExactlyOnceDelivery']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableMessageOrdering: (() { final guardedValue = map['enableMessageOrdering']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expirationPolicies: (() { final guardedValue = map['expirationPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSubscriptionExpirationPolicy>(guardedValue, (value) => GetSubscriptionExpirationPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      messageRetentionDuration: (() { final guardedValue = map['messageRetentionDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      messageTransforms: (() { final guardedValue = map['messageTransforms']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSubscriptionMessageTransform>(guardedValue, (value) => GetSubscriptionMessageTransform.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      pushConfigs: (() { final guardedValue = map['pushConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSubscriptionPushConfig>(guardedValue, (value) => GetSubscriptionPushConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      retainAckedMessages: (() { final guardedValue = map['retainAckedMessages']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      retryPolicies: (() { final guardedValue = map['retryPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSubscriptionRetryPolicy>(guardedValue, (value) => GetSubscriptionRetryPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
