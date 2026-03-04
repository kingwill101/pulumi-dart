// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectivityTestsConnectivityTestSourceCloudRunRevision {
  /// A Cloud Run revision URI.
  final pulumi.Input<String> uri;

  /// Creates a new [GetConnectivityTestsConnectivityTestSourceCloudRunRevision].
  /// [uri] A Cloud Run revision URI.
  GetConnectivityTestsConnectivityTestSourceCloudRunRevision({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': uri};
  }

  factory GetConnectivityTestsConnectivityTestSourceCloudRunRevision.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConnectivityTestsConnectivityTestSourceCloudRunRevision(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
