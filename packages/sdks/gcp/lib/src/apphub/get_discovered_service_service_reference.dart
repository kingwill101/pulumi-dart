// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDiscoveredServiceServiceReference {
  /// Additional path under the resource URI.
  final pulumi.Input<String> path;
  /// The underlying resource URI.
  final pulumi.Input<String> uri;

  /// Creates a new [GetDiscoveredServiceServiceReference].
  /// [path] Additional path under the resource URI.
  /// [uri] The underlying resource URI.
  GetDiscoveredServiceServiceReference({
    required this.path,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'uri': uri,
    };
  }

  factory GetDiscoveredServiceServiceReference.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredServiceServiceReference(
      path: pulumi.Input.fromValue(map['path'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

