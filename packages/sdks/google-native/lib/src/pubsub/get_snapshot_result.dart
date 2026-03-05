// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSnapshot.
class GetSnapshotResult {
  /// Optional. The snapshot is guaranteed to exist up until this time. A newly-created snapshot expires no later than 7 days from the time of its creation. Its exact lifetime is determined at creation by the existing backlog in the source subscription. Specifically, the lifetime of the snapshot is `7 days - (age of oldest unacked message in the subscription)`. For example, consider a subscription whose oldest unacked message is 3 days old. If a snapshot is created from this subscription, the snapshot -- which will always capture this 3-day-old backlog as long as the snapshot exists -- will expire in 4 days. The service will refuse to create a snapshot that would expire in less than 1 hour after creation.
  final String expireTime;

  /// Optional. See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/labels).
  final Map<String, String> labels;

  /// Optional. The name of the snapshot.
  final String name;

  /// Optional. The name of the topic from which this snapshot is retaining messages.
  final String topic;

  /// Creates a new [GetSnapshotResult].
  /// [expireTime] Optional. The snapshot is guaranteed to exist up until this time. A newly-created snapshot expires no later than 7 days from the time of its creation. Its exact lifetime is determined at creation by the existing backlog in the source subscription. Specifically, the lifetime of the snapshot is `7 days - (age of oldest unacked message in the subscription)`. For example, consider a subscription whose oldest unacked message is 3 days old. If a snapshot is created from this subscription, the snapshot -- which will always capture this 3-day-old backlog as long as the snapshot exists -- will expire in 4 days. The service will refuse to create a snapshot that would expire in less than 1 hour after creation.
  /// [labels] Optional. See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/labels).
  /// [name] Optional. The name of the snapshot.
  /// [topic] Optional. The name of the topic from which this snapshot is retaining messages.
  GetSnapshotResult({
    required this.expireTime,
    required this.labels,
    required this.name,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': expireTime,
      'labels': labels,
      'name': name,
      'topic': topic,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      expireTime: map['expireTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      topic: map['topic'] as String,
    );
  }
}
