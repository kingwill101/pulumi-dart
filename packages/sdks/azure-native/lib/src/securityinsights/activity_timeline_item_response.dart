// ignore_for_file: unused_element, unnecessary_cast


/// Represents Activity timeline item.
class ActivityTimelineItemResponse {
  /// The grouping bucket end time.
  final String bucketEndTimeUTC;
  /// The grouping bucket start time.
  final String bucketStartTimeUTC;
  /// The activity timeline content.
  final String content;
  /// The time of the first activity in the grouping bucket.
  final String firstActivityTimeUTC;
  /// The entity query kind
  /// Expected value is 'Activity'.
  final String kind;
  /// The time of the last activity in the grouping bucket.
  final String lastActivityTimeUTC;
  /// The activity query id.
  final String queryId;
  /// The activity timeline title.
  final String title;

  /// Creates a new [ActivityTimelineItemResponse].
  /// [bucketEndTimeUTC] The grouping bucket end time.
  /// [bucketStartTimeUTC] The grouping bucket start time.
  /// [content] The activity timeline content.
  /// [firstActivityTimeUTC] The time of the first activity in the grouping bucket.
  /// [kind] The entity query kind
  /// [lastActivityTimeUTC] The time of the last activity in the grouping bucket.
  /// [queryId] The activity query id.
  /// [title] The activity timeline title.
  ActivityTimelineItemResponse({
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
      bucketEndTimeUTC: map['bucketEndTimeUTC'] as String,
      bucketStartTimeUTC: map['bucketStartTimeUTC'] as String,
      content: map['content'] as String,
      firstActivityTimeUTC: map['firstActivityTimeUTC'] as String,
      kind: map['kind'] as String,
      lastActivityTimeUTC: map['lastActivityTimeUTC'] as String,
      queryId: map['queryId'] as String,
      title: map['title'] as String,
    );
  }
}

