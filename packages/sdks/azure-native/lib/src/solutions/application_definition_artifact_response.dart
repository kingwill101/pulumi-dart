// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application definition artifact.
class ApplicationDefinitionArtifactResponse {
  /// The managed application definition artifact name.
  final pulumi.Input<String> name;
  /// The managed application definition artifact type.
  final pulumi.Input<String> type;
  /// The managed application definition artifact blob uri.
  final pulumi.Input<String> uri;

  /// Creates a new [ApplicationDefinitionArtifactResponse].
  /// [name] The managed application definition artifact name.
  /// [type] The managed application definition artifact type.
  /// [uri] The managed application definition artifact blob uri.
  const ApplicationDefinitionArtifactResponse({
    required this.name,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
      'uri': uri,
    };
  }

  factory ApplicationDefinitionArtifactResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationDefinitionArtifactResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

