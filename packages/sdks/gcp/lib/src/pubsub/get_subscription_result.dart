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
  final int ackDeadlineSeconds;
  final List<GetSubscriptionBigqueryConfig> bigqueryConfigs;
  final List<GetSubscriptionCloudStorageConfig> cloudStorageConfigs;
  final List<GetSubscriptionDeadLetterPolicy> deadLetterPolicies;
  final Map<String, String> effectiveLabels;
  final bool enableExactlyOnceDelivery;
  final bool enableMessageOrdering;
  final List<GetSubscriptionExpirationPolicy> expirationPolicies;
  final String filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String messageRetentionDuration;
  final List<GetSubscriptionMessageTransform> messageTransforms;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final List<GetSubscriptionPushConfig> pushConfigs;
  final bool retainAckedMessages;
  final List<GetSubscriptionRetryPolicy> retryPolicies;
  final Map<String, String> tags;
  final String topic;

  /// Creates a new [GetSubscriptionResult].
  /// [ackDeadlineSeconds] Required.
  /// [bigqueryConfigs] Required.
  /// [cloudStorageConfigs] Required.
  /// [deadLetterPolicies] Required.
  /// [effectiveLabels] Required.
  /// [enableExactlyOnceDelivery] Required.
  /// [enableMessageOrdering] Required.
  /// [expirationPolicies] Required.
  /// [filter] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [messageRetentionDuration] Required.
  /// [messageTransforms] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [pushConfigs] Required.
  /// [retainAckedMessages] Required.
  /// [retryPolicies] Required.
  /// [tags] Required.
  /// [topic] Required.
  GetSubscriptionResult({
    required this.ackDeadlineSeconds,
    required this.bigqueryConfigs,
    required this.cloudStorageConfigs,
    required this.deadLetterPolicies,
    required this.effectiveLabels,
    required this.enableExactlyOnceDelivery,
    required this.enableMessageOrdering,
    required this.expirationPolicies,
    required this.filter,
    required this.id,
    required this.labels,
    required this.messageRetentionDuration,
    required this.messageTransforms,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.pushConfigs,
    required this.retainAckedMessages,
    required this.retryPolicies,
    required this.tags,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ackDeadlineSeconds': ackDeadlineSeconds,
      'bigqueryConfigs':
          pulumi.Input.encodeList<
            GetSubscriptionBigqueryConfig,
            Map<String, dynamic>
          >(bigqueryConfigs, (value) => value.toMap()),
      'cloudStorageConfigs':
          pulumi.Input.encodeList<
            GetSubscriptionCloudStorageConfig,
            Map<String, dynamic>
          >(cloudStorageConfigs, (value) => value.toMap()),
      'deadLetterPolicies':
          pulumi.Input.encodeList<
            GetSubscriptionDeadLetterPolicy,
            Map<String, dynamic>
          >(deadLetterPolicies, (value) => value.toMap()),
      'effectiveLabels': effectiveLabels,
      'enableExactlyOnceDelivery': enableExactlyOnceDelivery,
      'enableMessageOrdering': enableMessageOrdering,
      'expirationPolicies':
          pulumi.Input.encodeList<
            GetSubscriptionExpirationPolicy,
            Map<String, dynamic>
          >(expirationPolicies, (value) => value.toMap()),
      'filter': filter,
      'id': id,
      'labels': labels,
      'messageRetentionDuration': messageRetentionDuration,
      'messageTransforms':
          pulumi.Input.encodeList<
            GetSubscriptionMessageTransform,
            Map<String, dynamic>
          >(messageTransforms, (value) => value.toMap()),
      'name': name,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'pushConfigs':
          pulumi.Input.encodeList<
            GetSubscriptionPushConfig,
            Map<String, dynamic>
          >(pushConfigs, (value) => value.toMap()),
      'retainAckedMessages': retainAckedMessages,
      'retryPolicies':
          pulumi.Input.encodeList<
            GetSubscriptionRetryPolicy,
            Map<String, dynamic>
          >(retryPolicies, (value) => value.toMap()),
      'tags': tags,
      'topic': topic,
    };
  }

  factory GetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult(
      ackDeadlineSeconds: map['ackDeadlineSeconds'] as int,
      bigqueryConfigs: pulumi.Input.decodeList<GetSubscriptionBigqueryConfig>(
        map['bigqueryConfigs']!,
        (value) => GetSubscriptionBigqueryConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      cloudStorageConfigs:
          pulumi.Input.decodeList<GetSubscriptionCloudStorageConfig>(
            map['cloudStorageConfigs']!,
            (value) => GetSubscriptionCloudStorageConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      deadLetterPolicies:
          pulumi.Input.decodeList<GetSubscriptionDeadLetterPolicy>(
            map['deadLetterPolicies']!,
            (value) => GetSubscriptionDeadLetterPolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      enableExactlyOnceDelivery: map['enableExactlyOnceDelivery'] as bool,
      enableMessageOrdering: map['enableMessageOrdering'] as bool,
      expirationPolicies:
          pulumi.Input.decodeList<GetSubscriptionExpirationPolicy>(
            map['expirationPolicies']!,
            (value) => GetSubscriptionExpirationPolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      filter: map['filter'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      messageRetentionDuration: map['messageRetentionDuration'] as String,
      messageTransforms:
          pulumi.Input.decodeList<GetSubscriptionMessageTransform>(
            map['messageTransforms']!,
            (value) => GetSubscriptionMessageTransform.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      name: map['name'] as String,
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      pushConfigs: pulumi.Input.decodeList<GetSubscriptionPushConfig>(
        map['pushConfigs']!,
        (value) => GetSubscriptionPushConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      retainAckedMessages: map['retainAckedMessages'] as bool,
      retryPolicies: pulumi.Input.decodeList<GetSubscriptionRetryPolicy>(
        map['retryPolicies']!,
        (value) => GetSubscriptionRetryPolicy.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (map['tags'] as Map).cast<String, String>(),
      topic: map['topic'] as String,
    );
  }
}
