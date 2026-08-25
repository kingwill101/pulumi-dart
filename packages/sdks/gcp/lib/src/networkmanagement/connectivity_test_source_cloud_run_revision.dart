// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectivityTestSourceCloudRunRevision {
  /// A Cloud Run revision URI.
  final pulumi.Input<String?>? uri;

  /// Creates a new [ConnectivityTestSourceCloudRunRevision].
  /// [uri] A Cloud Run revision URI.
  const ConnectivityTestSourceCloudRunRevision({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory ConnectivityTestSourceCloudRunRevision.fromMap(Map<String, dynamic> map) {
    return ConnectivityTestSourceCloudRunRevision(
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
