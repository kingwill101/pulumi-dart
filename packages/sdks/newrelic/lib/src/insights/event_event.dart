// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_event_attribute.dart';

class EventEvent {
  /// An attribute to include in your event payload. Multiple attribute blocks can be defined for an event.
  final List<EventEventAttribute> attributes;
  /// Must be a Unix epoch timestamp. You can define timestamps either in seconds or in milliseconds.
  final int? timestamp;
  /// The event's name. Can be a combination of alphanumeric characters, underscores, and colons.
  final String type;

  /// Creates a new [EventEvent].
  /// [attributes] An attribute to include in your event payload. Multiple attribute blocks can be defined for an event.
  /// [timestamp] Must be a Unix epoch timestamp. You can define timestamps either in seconds or in milliseconds.
  /// [type] The event's name. Can be a combination of alphanumeric characters, underscores, and colons.
  EventEvent({
    required this.attributes,
    this.timestamp,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': pulumi.Input.encodeList<EventEventAttribute, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'timestamp': ?timestamp,
      'type': type,
    };
  }

  factory EventEvent.fromMap(Map<String, dynamic> map) {
    return EventEvent(
      attributes: pulumi.Input.decodeList<EventEventAttribute>(map['attributes'], (value) => EventEventAttribute.fromMap((value as Map).cast<String, dynamic>())),
      timestamp: map['timestamp'] == null ? null : map['timestamp'] as int,
      type: map['type'] as String,
    );
  }
}

