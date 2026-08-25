// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DicomStoreNotificationConfig {
  /// The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
  /// PubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.
  /// It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message
  /// was published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a
  /// project. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given
  /// Cloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail.
  final pulumi.Input<String> pubsubTopic;
  /// Indicates whether or not to send Pub/Sub notifications on bulk import. Only supported for DICOM imports.
  final pulumi.Input<bool?>? sendForBulkImport;

  /// Creates a new [DicomStoreNotificationConfig].
  /// [pubsubTopic] The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
  /// [sendForBulkImport] Indicates whether or not to send Pub/Sub notifications on bulk import. Only supported for DICOM imports.
  const DicomStoreNotificationConfig({
    required this.pubsubTopic,
    this.sendForBulkImport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsubTopic': pubsubTopic,
      'sendForBulkImport': ?sendForBulkImport,
    };
  }

  factory DicomStoreNotificationConfig.fromMap(Map<String, dynamic> map) {
    return DicomStoreNotificationConfig(
      pubsubTopic: pulumi.Input.fromValue(map['pubsubTopic'] as String),
      sendForBulkImport: (() { final guardedValue = map['sendForBulkImport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
