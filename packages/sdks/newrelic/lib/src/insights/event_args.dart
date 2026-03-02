// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_event.dart';

/// {@template pulumi_insights_event_event_args_doc}
/// The set of arguments for Event.
/// {@endtemplate}
/// {@macro pulumi_insights_event_event_args_doc}
class EventArgs {
  /// An event to insert into Insights. Multiple event blocks can be defined. See Events below for details.
  final pulumi.Input<List<EventEvent>> events;

  /// Creates a new [EventArgs].
  /// [events] An event to insert into Insights. Multiple event blocks can be defined. See Events below for details.
  EventArgs({
    required this.events,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'events': pulumi.Input.mapInputValue<List<EventEvent>, List<Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeList<EventEvent, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EventArgs.fromMap(Map<String, dynamic> map) {
    return EventArgs(
      events: (pulumi.Input.decodeList<EventEvent>(map['events'], (value) => EventEvent.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

