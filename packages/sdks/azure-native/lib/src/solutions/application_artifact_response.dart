// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed application artifact.
class ApplicationArtifactResponse {
  /// The managed application artifact name.
  final pulumi.Input<String> name;

  /// The managed application artifact type.
  final pulumi.Input<String> type;

  /// The managed application artifact blob uri.
  final pulumi.Input<String> uri;

  /// Creates a new [ApplicationArtifactResponse].
  /// [name] The managed application artifact name.
  /// [type] The managed application artifact type.
  /// [uri] The managed application artifact blob uri.
  ApplicationArtifactResponse({
    required this.name,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type, 'uri': uri};
  }

  factory ApplicationArtifactResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationArtifactResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
