// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Wrapper for Cloud Function attributes.
class CloudFunctionEndpointResponse {
  /// A [Cloud Function](https://cloud.google.com/functions) name.
  final pulumi.Input<String> uri;

  /// Creates a new [CloudFunctionEndpointResponse].
  /// [uri] A [Cloud Function](https://cloud.google.com/functions) name.
  const CloudFunctionEndpointResponse({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory CloudFunctionEndpointResponse.fromMap(Map<String, dynamic> map) {
    return CloudFunctionEndpointResponse(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

