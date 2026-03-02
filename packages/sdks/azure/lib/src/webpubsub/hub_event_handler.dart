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
      auth: map['auth'] == null ? null : (HubEventHandlerAuth.fromMap((map['auth']! as Map).cast<String, dynamic>())).input(),
      systemEvents: map['systemEvents'] == null ? null : ((map['systemEvents']! as List).cast<String>()).input(),
      urlTemplate: (map['urlTemplate'] as String).input(),
      userEventPattern: map['userEventPattern'] == null ? null : (map['userEventPattern']! as String).input(),
    );
  }
}

