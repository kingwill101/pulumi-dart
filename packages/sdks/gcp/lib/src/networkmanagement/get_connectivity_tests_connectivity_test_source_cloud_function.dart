// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectivityTestsConnectivityTestSourceCloudFunction {
  /// A Cloud Run revision URI.
  final pulumi.Input<String> uri;

  /// Creates a new [GetConnectivityTestsConnectivityTestSourceCloudFunction].
  /// [uri] A Cloud Run revision URI.
  const GetConnectivityTestsConnectivityTestSourceCloudFunction({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory GetConnectivityTestsConnectivityTestSourceCloudFunction.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestsConnectivityTestSourceCloudFunction(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
