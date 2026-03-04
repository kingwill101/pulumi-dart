// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Wrapper for the App Engine service version attributes.
class AppEngineVersionEndpointResponseNetworkmanagementV1beta1 {
  /// An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions) name.
  final pulumi.Input<String> uri;

  /// Creates a new [AppEngineVersionEndpointResponseNetworkmanagementV1beta1].
  /// [uri] An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions) name.
  AppEngineVersionEndpointResponseNetworkmanagementV1beta1({required this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': uri};
  }

  factory AppEngineVersionEndpointResponseNetworkmanagementV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppEngineVersionEndpointResponseNetworkmanagementV1beta1(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
