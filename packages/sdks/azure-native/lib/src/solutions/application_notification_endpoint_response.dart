// ignore_for_file: unused_element, unnecessary_cast


/// Managed application notification endpoint.
class ApplicationNotificationEndpointResponse {
  /// The managed application notification endpoint uri.
  final String uri;

  /// Creates a new [ApplicationNotificationEndpointResponse].
  /// [uri] The managed application notification endpoint uri.
  ApplicationNotificationEndpointResponse({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory ApplicationNotificationEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationNotificationEndpointResponse(
      uri: map['uri'] as String,
    );
  }
}

