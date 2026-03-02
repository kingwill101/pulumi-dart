// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time.
class EventSeriesPatchEventsK8sIoV1beta1 {
  /// Number of occurrences in this series up to the last heartbeat time
  final pulumi.Input<int>? count;
  /// Time when last Event from the series was seen before last heartbeat.
  final pulumi.Input<String>? lastObservedTime;
  /// Information whether this series is ongoing or finished. Deprecated. Planned removal for 1.18
  final pulumi.Input<String>? state;

  /// Creates a new [EventSeriesPatchEventsK8sIoV1beta1].
  /// [count] Number of occurrences in this series up to the last heartbeat time
  /// [lastObservedTime] Time when last Event from the series was seen before last heartbeat.
  /// [state] Information whether this series is ongoing or finished. Deprecated. Planned removal for 1.18
  EventSeriesPatchEventsK8sIoV1beta1({
    this.count,
    this.lastObservedTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'lastObservedTime': ?lastObservedTime,
      'state': ?state,
    };
  }

  factory EventSeriesPatchEventsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return EventSeriesPatchEventsK8sIoV1beta1(
      count: map['count'] == null ? null : (map['count'] as int).input(),
      lastObservedTime: map['lastObservedTime'] == null ? null : (map['lastObservedTime'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

