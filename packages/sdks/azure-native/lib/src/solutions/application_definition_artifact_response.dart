// ignore_for_file: unused_element, unnecessary_cast


/// Application definition artifact.
class ApplicationDefinitionArtifactResponse {
  /// The managed application definition artifact name.
  final String name;
  /// The managed application definition artifact type.
  final String type;
  /// The managed application definition artifact blob uri.
  final String uri;

  /// Creates a new [ApplicationDefinitionArtifactResponse].
  /// [name] The managed application definition artifact name.
  /// [type] The managed application definition artifact type.
  /// [uri] The managed application definition artifact blob uri.
  ApplicationDefinitionArtifactResponse({
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
      name: map['name'] as String,
      type: map['type'] as String,
      uri: map['uri'] as String,
    );
  }
}

