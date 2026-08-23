// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Wrapper for the App Engine service version attributes.
class AppEngineVersionEndpointResponse {
  /// An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions) name.
  final pulumi.Input<String> uri;

  /// Creates a new [AppEngineVersionEndpointResponse].
  /// [uri] An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions) name.
  const AppEngineVersionEndpointResponse({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory AppEngineVersionEndpointResponse.fromMap(Map<String, dynamic> map) {
    return AppEngineVersionEndpointResponse(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
