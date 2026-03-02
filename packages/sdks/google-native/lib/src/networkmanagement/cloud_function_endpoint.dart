// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Wrapper for Cloud Function attributes.
class CloudFunctionEndpoint {
  /// A [Cloud Function](https://cloud.google.com/functions) name.
  final pulumi.Input<String>? uri;

  /// Creates a new [CloudFunctionEndpoint].
  /// [uri] A [Cloud Function](https://cloud.google.com/functions) name.
  CloudFunctionEndpoint({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory CloudFunctionEndpoint.fromMap(Map<String, dynamic> map) {
    return CloudFunctionEndpoint(
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

