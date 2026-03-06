// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upstream_auth_settings_response.dart';

/// Properties of event handler.
class EventHandlerResponse {
  /// Upstream auth settings. If not set, no auth is used for upstream messages.
  final pulumi.Input<UpstreamAuthSettingsResponse>? auth;
  /// Gets or sets the list of system events.
  final pulumi.Input<List<String>>? systemEvents;
  /// Gets or sets the EventHandler URL template. You can use a predefined parameter {hub} and {event} inside the template, the value of the EventHandler URL is dynamically calculated when the client request comes in.
  /// For example, UrlTemplate can be `http://example.com/api/{hub}/{event}`. The host part can't contains parameters.
  final pulumi.Input<String> urlTemplate;
  /// Gets or sets the matching pattern for event names.
  /// There are 3 kinds of patterns supported:
  /// 1. "*", it matches any event name
  /// 2. Combine multiple events with ",", for example "event1,event2", it matches event "event1" and "event2"
  /// 3. A single event name, for example, "event1", it matches "event1"
  final pulumi.Input<String>? userEventPattern;

  /// Creates a new [EventHandlerResponse].
  /// [auth] Upstream auth settings. If not set, no auth is used for upstream messages.
  /// [systemEvents] Gets or sets the list of system events.
  /// [urlTemplate] Gets or sets the EventHandler URL template. You can use a predefined parameter {hub} and {event} inside the template, the value of the EventHandler URL is dynamically calculated when the client request comes in.
  /// [userEventPattern] Gets or sets the matching pattern for event names.
  const EventHandlerResponse({
    this.auth,
    this.systemEvents,
    required this.urlTemplate,
    this.userEventPattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<UpstreamAuthSettingsResponse, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'systemEvents': ?systemEvents,
      'urlTemplate': urlTemplate,
      'userEventPattern': ?userEventPattern,
    };
  }

  factory EventHandlerResponse.fromMap(Map<String, dynamic> map) {
    return EventHandlerResponse(
      auth: (() { final guardedValue = map['auth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UpstreamAuthSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      systemEvents: (() { final guardedValue = map['systemEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      urlTemplate: pulumi.Input.fromValue(map['urlTemplate'] as String),
      userEventPattern: (() { final guardedValue = map['userEventPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

