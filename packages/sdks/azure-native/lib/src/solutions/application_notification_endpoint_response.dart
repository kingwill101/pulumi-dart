// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed application notification endpoint.
class ApplicationNotificationEndpointResponse {
  /// The managed application notification endpoint uri.
  final pulumi.Input<String> uri;

  /// Creates a new [ApplicationNotificationEndpointResponse].
  /// [uri] The managed application notification endpoint uri.
  const ApplicationNotificationEndpointResponse({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory ApplicationNotificationEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationNotificationEndpointResponse(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

