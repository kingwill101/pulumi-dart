// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_event_handler_auth.dart';

class HubEventHandler {
  /// An `auth` block as defined below.
  final pulumi.Input<HubEventHandlerAuth>? auth;
  /// Specifies the list of system events. Supported values are `connect`, `connected` and `disconnected`.
  final pulumi.Input<List<String>>? systemEvents;
  /// The Event Handler URL Template. Two predefined parameters `{hub}` and `{event}` are available to use in the template. The value of the EventHandler URL is dynamically calculated when the client request comes in. Example: `http://example.com/api/{hub}/{event}`.
  final pulumi.Input<String> urlTemplate;
  /// Specifies the matching event names. There are 3 kind of patterns supported: * `*` matches any event name * `,` Combine multiple events with `,` for example `event1,event2`, it matches event `event1` and `event2` * The single event name, for example `event1`, it matches `event1`.
  final pulumi.Input<String>? userEventPattern;

  /// Creates a new [HubEventHandler].
  /// [auth] An `auth` block as defined below.
  /// [systemEvents] Specifies the list of system events. Supported values are `connect`, `connected` and `disconnected`.
  /// [urlTemplate] The Event Handler URL Template. Two predefined parameters `{hub}` and `{event}` are available to use in the template. The value of the EventHandler URL is dynamically calculated when the client request comes in. Example: `http://example.com/api/{hub}/{event}`.
  /// [userEventPattern] Specifies the matching event names. There are 3 kind of patterns supported: * `*` matches any event name * `,` Combine multiple events with `,` for example `event1,event2`, it matches event `event1` and `event2` * The single event name, for example `event1`, it matches `event1`.
  HubEventHandler({
    this.auth,
    this.systemEvents,
    required this.urlTemplate,
    this.userEventPattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<HubEventHandlerAuth, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'systemEvents': ?systemEvents,
      'urlTemplate': urlTemplate,
      'userEventPattern': ?userEventPattern,
    };
  }

  factory HubEventHandler.fromMap(Map<String, dynamic> map) {
    return HubEventHandler(
      auth: (() { final guardedValue = map['auth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HubEventHandlerAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      systemEvents: (() { final guardedValue = map['systemEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      urlTemplate: pulumi.Input.fromValue(map['urlTemplate'] as String),
      userEventPattern: (() { final guardedValue = map['userEventPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

