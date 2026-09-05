// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time. How often to update the EventSeries is up to the event reporters. The default event reporter in "k8s.io/client-go/tools/events/event_broadcaster.go" shows how this struct is updated on heartbeats and can guide customized reporter implementations.
class EventSeries {
  /// count is the number of occurrences in this series up to the last heartbeat time.
  final pulumi.Input<int> count;
  /// lastObservedTime is the time when last Event from the series was seen before last heartbeat.
  final pulumi.Input<String> lastObservedTime;

  /// Creates a new [EventSeries].
  /// [count] count is the number of occurrences in this series up to the last heartbeat time.
  /// [lastObservedTime] lastObservedTime is the time when last Event from the series was seen before last heartbeat.
  const EventSeries({
    required this.count,
    required this.lastObservedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'lastObservedTime': lastObservedTime,
    };
  }

  factory EventSeries.fromMap(Map<String, dynamic> map) {
    return EventSeries(
      count: pulumi.Input.fromValue((map['count'] as num).toInt()),
      lastObservedTime: pulumi.Input.fromValue(map['lastObservedTime'] as String),
    );
  }
}
