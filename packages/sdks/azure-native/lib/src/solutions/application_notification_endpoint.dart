// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed application notification endpoint.
class ApplicationNotificationEndpoint {
  /// The managed application notification endpoint uri.
  final pulumi.Input<String> uri;

  /// Creates a new [ApplicationNotificationEndpoint].
  /// [uri] The managed application notification endpoint uri.
  const ApplicationNotificationEndpoint({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory ApplicationNotificationEndpoint.fromMap(Map<String, dynamic> map) {
    return ApplicationNotificationEndpoint(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
