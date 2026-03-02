// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FhirStoreNotificationConfig {
  /// The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
  /// PubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.
  /// It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message
  /// was published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a
  /// project. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given
  /// Cloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail.
  final pulumi.Input<String> pubsubTopic;
  /// Whether to send full FHIR resource to this Pub/Sub topic for Create and Update operation.
  /// Note that setting this to true does not guarantee that all resources will be sent in the format of
  /// full FHIR resource. When a resource change is too large or during heavy traffic, only the resource name will be
  /// sent. Clients should always check the "payloadType" label from a Pub/Sub message to determine whether
  /// it needs to fetch the full resource as a separate operation.
  final pulumi.Input<bool>? sendFullResource;
  /// Whether to send full FHIR resource to this Pub/Sub topic for deleting FHIR resource. Note that setting this to
  /// true does not guarantee that all previous resources will be sent in the format of full FHIR resource. When a
  /// resource change is too large or during heavy traffic, only the resource name will be sent. Clients should always
  /// check the "payloadType" label from a Pub/Sub message to determine whether it needs to fetch the full previous
  /// resource as a separate operation.
  final pulumi.Input<bool>? sendPreviousResourceOnDelete;

  /// Creates a new [FhirStoreNotificationConfig].
  /// [pubsubTopic] The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
  /// [sendFullResource] Whether to send full FHIR resource to this Pub/Sub topic for Create and Update operation.
  /// [sendPreviousResourceOnDelete] Whether to send full FHIR resource to this Pub/Sub topic for deleting FHIR resource. Note that setting this to
  FhirStoreNotificationConfig({
    required this.pubsubTopic,
    this.sendFullResource,
    this.sendPreviousResourceOnDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsubTopic': pubsubTopic,
      'sendFullResource': ?sendFullResource,
      'sendPreviousResourceOnDelete': ?sendPreviousResourceOnDelete,
    };
  }

  factory FhirStoreNotificationConfig.fromMap(Map<String, dynamic> map) {
    return FhirStoreNotificationConfig(
      pubsubTopic: (map['pubsubTopic'] as String).input(),
      sendFullResource: map['sendFullResource'] == null ? null : (map['sendFullResource'] as bool).input(),
      sendPreviousResourceOnDelete: map['sendPreviousResourceOnDelete'] == null ? null : (map['sendPreviousResourceOnDelete'] as bool).input(),
    );
  }
}

