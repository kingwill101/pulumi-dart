// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectivityTestsConnectivityTestSourceAppEngineVersion {
  /// A Cloud Run revision URI.
  final pulumi.Input<String> uri;

  /// Creates a new [GetConnectivityTestsConnectivityTestSourceAppEngineVersion].
  /// [uri] A Cloud Run revision URI.
  GetConnectivityTestsConnectivityTestSourceAppEngineVersion({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': uri};
  }

  factory GetConnectivityTestsConnectivityTestSourceAppEngineVersion.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConnectivityTestsConnectivityTestSourceAppEngineVersion(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
