// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time.
class EventSeriesPatch {
  /// Number of occurrences in this series up to the last heartbeat time
  final pulumi.Input<int>? count;

  /// Time of the last occurrence observed
  final pulumi.Input<String>? lastObservedTime;

  /// State of this Series: Ongoing or Finished Deprecated. Planned removal for 1.18
  final pulumi.Input<String>? state;

  /// Creates a new [EventSeriesPatch].
  /// [count] Number of occurrences in this series up to the last heartbeat time
  /// [lastObservedTime] Time of the last occurrence observed
  /// [state] State of this Series: Ongoing or Finished Deprecated. Planned removal for 1.18
  EventSeriesPatch({this.count, this.lastObservedTime, this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'lastObservedTime': ?lastObservedTime,
      'state': ?state,
    };
  }

  factory EventSeriesPatch.fromMap(Map<String, dynamic> map) {
    return EventSeriesPatch(
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      lastObservedTime: (() {
        final guardedValue = map['lastObservedTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
