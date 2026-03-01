// ignore_for_file: unused_element, unnecessary_cast


/// Publish a message into a given Pub/Sub topic when DlpJob has completed. The message contains a single field, `DlpJobName`, which is equal to the finished job's [`DlpJob.name`](https://cloud.google.com/dlp/docs/reference/rest/v2/projects.dlpJobs#DlpJob). Compatible with: Inspect, Risk
class GooglePrivacyDlpV2PublishToPubSubResponse {
  /// Cloud Pub/Sub topic to send notifications to. The topic must have given publishing access rights to the DLP API service account executing the long running DlpJob sending the notifications. Format is projects/{project}/topics/{topic}.
  final String topic;

  /// Creates a new [GooglePrivacyDlpV2PublishToPubSubResponse].
  /// [topic] Cloud Pub/Sub topic to send notifications to. The topic must have given publishing access rights to the DLP API service account executing the long running DlpJob sending the notifications. Format is projects/{project}/topics/{topic}.
  GooglePrivacyDlpV2PublishToPubSubResponse({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': topic,
    };
  }

  factory GooglePrivacyDlpV2PublishToPubSubResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PublishToPubSubResponse(
      topic: map['topic'] as String,
    );
  }
}

