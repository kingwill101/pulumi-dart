// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EventSource contains information for an event.
class EventSource {
  /// Component from which the event is generated.
  final pulumi.Input<String>? component;
  /// Node name on which the event is generated.
  final pulumi.Input<String>? host;

  /// Creates a new [EventSource].
  /// [component] Component from which the event is generated.
  /// [host] Node name on which the event is generated.
  const EventSource({
    this.component,
    this.host,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'component': ?component,
      'host': ?host,
    };
  }

  factory EventSource.fromMap(Map<String, dynamic> map) {
    return EventSource(
      component: (() { final guardedValue = map['component']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

