// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents Activity timeline item.
class ActivityTimelineItemResponse {
  /// The grouping bucket end time.
  final pulumi.Input<String> bucketEndTimeUTC;
  /// The grouping bucket start time.
  final pulumi.Input<String> bucketStartTimeUTC;
  /// The activity timeline content.
  final pulumi.Input<String> content;
  /// The time of the first activity in the grouping bucket.
  final pulumi.Input<String> firstActivityTimeUTC;
  /// The entity query kind
  /// Expected value is 'Activity'.
  final pulumi.Input<String> kind;
  /// The time of the last activity in the grouping bucket.
  final pulumi.Input<String> lastActivityTimeUTC;
  /// The activity query id.
  final pulumi.Input<String> queryId;
  /// The activity timeline title.
  final pulumi.Input<String> title;

  /// Creates a new [ActivityTimelineItemResponse].
  /// [bucketEndTimeUTC] The grouping bucket end time.
  /// [bucketStartTimeUTC] The grouping bucket start time.
  /// [content] The activity timeline content.
  /// [firstActivityTimeUTC] The time of the first activity in the grouping bucket.
  /// [kind] The entity query kind
  /// [lastActivityTimeUTC] The time of the last activity in the grouping bucket.
  /// [queryId] The activity query id.
  /// [title] The activity timeline title.
  const ActivityTimelineItemResponse({
    required this.bucketEndTimeUTC,
    required this.bucketStartTimeUTC,
    required this.content,
    required this.firstActivityTimeUTC,
    required this.kind,
    required this.lastActivityTimeUTC,
    required this.queryId,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketEndTimeUTC': bucketEndTimeUTC,
      'bucketStartTimeUTC': bucketStartTimeUTC,
      'content': content,
      'firstActivityTimeUTC': firstActivityTimeUTC,
      'kind': kind,
      'lastActivityTimeUTC': lastActivityTimeUTC,
      'queryId': queryId,
      'title': title,
    };
  }

  factory ActivityTimelineItemResponse.fromMap(Map<String, dynamic> map) {
    return ActivityTimelineItemResponse(
      bucketEndTimeUTC: pulumi.Input.fromValue(map['bucketEndTimeUTC'] as String),
      bucketStartTimeUTC: pulumi.Input.fromValue(map['bucketStartTimeUTC'] as String),
      content: pulumi.Input.fromValue(map['content'] as String),
      firstActivityTimeUTC: pulumi.Input.fromValue(map['firstActivityTimeUTC'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      lastActivityTimeUTC: pulumi.Input.fromValue(map['lastActivityTimeUTC'] as String),
      queryId: pulumi.Input.fromValue(map['queryId'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
