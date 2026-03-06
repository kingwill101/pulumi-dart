// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Wrapper for Cloud Function attributes.
class CloudFunctionEndpointNetworkmanagementV1beta1 {
  /// A [Cloud Function](https://cloud.google.com/functions) name.
  final pulumi.Input<String>? uri;

  /// Creates a new [CloudFunctionEndpointNetworkmanagementV1beta1].
  /// [uri] A [Cloud Function](https://cloud.google.com/functions) name.
  const CloudFunctionEndpointNetworkmanagementV1beta1({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory CloudFunctionEndpointNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return CloudFunctionEndpointNetworkmanagementV1beta1(
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

