// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Wrapper for Cloud Run revision attributes.
class CloudRunRevisionEndpointNetworkmanagementV1beta1 {
  /// A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get) URI. The format is: projects/{project}/locations/{location}/revisions/{revision}
  final pulumi.Input<String>? uri;

  /// Creates a new [CloudRunRevisionEndpointNetworkmanagementV1beta1].
  /// [uri] A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get) URI. The format is: projects/{project}/locations/{location}/revisions/{revision}
  const CloudRunRevisionEndpointNetworkmanagementV1beta1({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory CloudRunRevisionEndpointNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return CloudRunRevisionEndpointNetworkmanagementV1beta1(
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
