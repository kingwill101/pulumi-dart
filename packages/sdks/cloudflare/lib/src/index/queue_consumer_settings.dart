// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_consumer_settings_email.dart';
import 'queue_consumer_settings_pagerduty.dart';
import 'queue_consumer_settings_webhook.dart';

class QueueConsumerSettings {
  /// The maximum number of messages to include in a batch.
  final pulumi.Input<double?>? batchSize;
  final pulumi.Input<List<QueueConsumerSettingsEmail>?>? emails;
  /// Maximum number of concurrent consumers that may consume from this Queue. Set to `null` to automatically opt in to the platform's maximum (recommended).
  final pulumi.Input<double?>? maxConcurrency;
  /// The maximum number of retries
  final pulumi.Input<double?>? maxRetries;
  /// The number of milliseconds to wait for a batch to fill up before attempting to deliver it
  final pulumi.Input<double?>? maxWaitTimeMs;
  /// PagerDuty notification destinations.
  final pulumi.Input<List<QueueConsumerSettingsPagerduty>?>? pagerduties;
  /// The number of seconds to delay before making the message available for another attempt.
  final pulumi.Input<double?>? retryDelay;
  /// The number of milliseconds that a message is exclusively leased. After the timeout, the message becomes available for another attempt.
  final pulumi.Input<double?>? visibilityTimeoutMs;
  /// Webhook notification destinations.
  final pulumi.Input<List<QueueConsumerSettingsWebhook>?>? webhooks;

  /// Creates a new [QueueConsumerSettings].
  /// [batchSize] The maximum number of messages to include in a batch.
  /// [emails] Optional.
  /// [maxConcurrency] Maximum number of concurrent consumers that may consume from this Queue. Set to `null` to automatically opt in to the platform's maximum (recommended).
  /// [maxRetries] The maximum number of retries
  /// [maxWaitTimeMs] The number of milliseconds to wait for a batch to fill up before attempting to deliver it
  /// [pagerduties] PagerDuty notification destinations.
  /// [retryDelay] The number of seconds to delay before making the message available for another attempt.
  /// [visibilityTimeoutMs] The number of milliseconds that a message is exclusively leased. After the timeout, the message becomes available for another attempt.
  /// [webhooks] Webhook notification destinations.
  const QueueConsumerSettings({
    this.batchSize,
    this.emails,
    this.maxConcurrency,
    this.maxRetries,
    this.maxWaitTimeMs,
    this.pagerduties,
    this.retryDelay,
    this.visibilityTimeoutMs,
    this.webhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'emails': ?pulumi.Input.mapOptionalInputValue<List<QueueConsumerSettingsEmail>, List<Map<String, dynamic>>>(emails, (value) => pulumi.Input.encodeList<QueueConsumerSettingsEmail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxConcurrency': ?maxConcurrency,
      'maxRetries': ?maxRetries,
      'maxWaitTimeMs': ?maxWaitTimeMs,
      'pagerduties': ?pulumi.Input.mapOptionalInputValue<List<QueueConsumerSettingsPagerduty>, List<Map<String, dynamic>>>(pagerduties, (value) => pulumi.Input.encodeList<QueueConsumerSettingsPagerduty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retryDelay': ?retryDelay,
      'visibilityTimeoutMs': ?visibilityTimeoutMs,
      'webhooks': ?pulumi.Input.mapOptionalInputValue<List<QueueConsumerSettingsWebhook>, List<Map<String, dynamic>>>(webhooks, (value) => pulumi.Input.encodeList<QueueConsumerSettingsWebhook, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory QueueConsumerSettings.fromMap(Map<String, dynamic> map) {
    return QueueConsumerSettings(
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QueueConsumerSettingsEmail>(guardedValue, (value) => QueueConsumerSettingsEmail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxConcurrency: (() { final guardedValue = map['maxConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxWaitTimeMs: (() { final guardedValue = map['maxWaitTimeMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      pagerduties: (() { final guardedValue = map['pagerduties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QueueConsumerSettingsPagerduty>(guardedValue, (value) => QueueConsumerSettingsPagerduty.fromMap((value as Map).cast<String, dynamic>()))); })(),
      retryDelay: (() { final guardedValue = map['retryDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      visibilityTimeoutMs: (() { final guardedValue = map['visibilityTimeoutMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      webhooks: (() { final guardedValue = map['webhooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QueueConsumerSettingsWebhook>(guardedValue, (value) => QueueConsumerSettingsWebhook.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
