// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_rule.dart';

/// Configuration controlling usage of a service.
class Usage {
  /// The full resource name of a channel used for sending notifications to the service producer. Google Service Management currently only supports [Google Cloud Pub/Sub](https://cloud.google.com/pubsub) as a notification channel. To use Google Cloud Pub/Sub as the channel, this must be the name of a Cloud Pub/Sub topic that uses the Cloud Pub/Sub topic name format documented in https://cloud.google.com/pubsub/docs/overview.
  final pulumi.Input<String>? producerNotificationChannel;
  /// Requirements that must be satisfied before a consumer project can use the service. Each requirement is of the form /; for example 'serviceusage.googleapis.com/billing-enabled'. For Google APIs, a Terms of Service requirement must be included here. Google Cloud APIs must include "serviceusage.googleapis.com/tos/cloud". Other Google APIs should include "serviceusage.googleapis.com/tos/universal". Additional ToS can be included based on the business needs.
  final pulumi.Input<List<String>>? requirements;
  /// A list of usage rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final pulumi.Input<List<UsageRule>>? rules;

  /// Creates a new [Usage].
  /// [producerNotificationChannel] The full resource name of a channel used for sending notifications to the service producer. Google Service Management currently only supports [Google Cloud Pub/Sub](https://cloud.google.com/pubsub) as a notification channel. To use Google Cloud Pub/Sub as the channel, this must be the name of a Cloud Pub/Sub topic that uses the Cloud Pub/Sub topic name format documented in https://cloud.google.com/pubsub/docs/overview.
  /// [requirements] Requirements that must be satisfied before a consumer project can use the service. Each requirement is of the form /; for example 'serviceusage.googleapis.com/billing-enabled'. For Google APIs, a Terms of Service requirement must be included here. Google Cloud APIs must include "serviceusage.googleapis.com/tos/cloud". Other Google APIs should include "serviceusage.googleapis.com/tos/universal". Additional ToS can be included based on the business needs.
  /// [rules] A list of usage rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  Usage({
    this.producerNotificationChannel,
    this.requirements,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'producerNotificationChannel': ?producerNotificationChannel,
      'requirements': ?requirements,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<UsageRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<UsageRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Usage.fromMap(Map<String, dynamic> map) {
    return Usage(
      producerNotificationChannel: (() { final guardedValue = map['producerNotificationChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requirements: (() { final guardedValue = map['requirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UsageRule>(guardedValue, (value) => UsageRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

