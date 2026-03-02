// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upstream_auth_settings_response.dart';

/// Upstream template item settings. It defines the Upstream URL of the incoming requests.
/// The template defines the pattern of the event, the hub or the category of the incoming request that matches current URL template.
class UpstreamTemplateResponse {
  /// Upstream auth settings. If not set, no auth is used for upstream messages.
  final pulumi.Input<UpstreamAuthSettingsResponse>? auth;
  /// Gets or sets the matching pattern for category names. If not set, it matches any category.
  /// There are 3 kind of patterns supported:
  /// 1. "*", it to matches any category name.
  /// 2. Combine multiple categories with ",", for example "connections,messages", it matches category "connections" and "messages".
  /// 3. The single category name, for example, "connections", it matches the category "connections".
  final pulumi.Input<String>? categoryPattern;
  /// Gets or sets the matching pattern for event names. If not set, it matches any event.
  /// There are 3 kind of patterns supported:
  /// 1. "*", it to matches any event name.
  /// 2. Combine multiple events with ",", for example "connect,disconnect", it matches event "connect" and "disconnect".
  /// 3. The single event name, for example, "connect", it matches "connect".
  final pulumi.Input<String>? eventPattern;
  /// Gets or sets the matching pattern for hub names. If not set, it matches any hub.
  /// There are 3 kind of patterns supported:
  /// 1. "*", it to matches any hub name.
  /// 2. Combine multiple hubs with ",", for example "hub1,hub2", it matches "hub1" and "hub2".
  /// 3. The single hub name, for example, "hub1", it matches "hub1".
  final pulumi.Input<String>? hubPattern;
  /// Gets or sets the Upstream URL template. You can use 3 predefined parameters {hub}, {category} {event} inside the template, the value of the Upstream URL is dynamically calculated when the client request comes in.
  /// For example, if the urlTemplate is `http://example.com/{hub}/api/{event}`, with a client request from hub `chat` connects, it will first POST to this URL: `http://example.com/chat/api/connect`.
  final pulumi.Input<String> urlTemplate;

  /// Creates a new [UpstreamTemplateResponse].
  /// [auth] Upstream auth settings. If not set, no auth is used for upstream messages.
  /// [categoryPattern] Gets or sets the matching pattern for category names. If not set, it matches any category.
  /// [eventPattern] Gets or sets the matching pattern for event names. If not set, it matches any event.
  /// [hubPattern] Gets or sets the matching pattern for hub names. If not set, it matches any hub.
  /// [urlTemplate] Gets or sets the Upstream URL template. You can use 3 predefined parameters {hub}, {category} {event} inside the template, the value of the Upstream URL is dynamically calculated when the client request comes in.
  UpstreamTemplateResponse({
    this.auth,
    this.categoryPattern,
    this.eventPattern,
    this.hubPattern,
    required this.urlTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<UpstreamAuthSettingsResponse, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'categoryPattern': ?categoryPattern,
      'eventPattern': ?eventPattern,
      'hubPattern': ?hubPattern,
      'urlTemplate': urlTemplate,
    };
  }

  factory UpstreamTemplateResponse.fromMap(Map<String, dynamic> map) {
    return UpstreamTemplateResponse(
      auth: map['auth'] == null ? null : (UpstreamAuthSettingsResponse.fromMap((map['auth']! as Map).cast<String, dynamic>())).input(),
      categoryPattern: map['categoryPattern'] == null ? null : (map['categoryPattern']! as String).input(),
      eventPattern: map['eventPattern'] == null ? null : (map['eventPattern']! as String).input(),
      hubPattern: map['hubPattern'] == null ? null : (map['hubPattern']! as String).input(),
      urlTemplate: (map['urlTemplate'] as String).input(),
    );
  }
}

