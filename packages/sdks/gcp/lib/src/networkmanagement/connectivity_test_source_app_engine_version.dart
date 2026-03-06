// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectivityTestSourceAppEngineVersion {
  /// An App Engine service version name.
  final pulumi.Input<String>? uri;

  /// Creates a new [ConnectivityTestSourceAppEngineVersion].
  /// [uri] An App Engine service version name.
  const ConnectivityTestSourceAppEngineVersion({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory ConnectivityTestSourceAppEngineVersion.fromMap(Map<String, dynamic> map) {
    return ConnectivityTestSourceAppEngineVersion(
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

