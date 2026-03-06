// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_event.dart';

/// Input properties used for looking up and filtering Event resources.
class EventState {
  /// An event to insert into Insights. Multiple event blocks can be defined. See Events below for details.
  final pulumi.Input<List<EventEvent>>? events;

  /// Creates a new [EventState].
  /// [events] An event to insert into Insights. Multiple event blocks can be defined. See Events below for details.
  const EventState({
    this.events,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'events': ?pulumi.Input.mapOptionalInputValue<List<EventEvent>, List<Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeList<EventEvent, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EventState.fromMap(Map<String, dynamic> map) {
    return EventState(
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventEvent>(guardedValue, (value) => EventEvent.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

