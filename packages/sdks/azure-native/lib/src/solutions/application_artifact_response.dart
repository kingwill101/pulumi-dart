// ignore_for_file: unused_element, unnecessary_cast


/// Managed application artifact.
class ApplicationArtifactResponse {
  /// The managed application artifact name.
  final String name;
  /// The managed application artifact type.
  final String type;
  /// The managed application artifact blob uri.
  final String uri;

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
    return <String, dynamic>{
      'name': name,
      'type': type,
      'uri': uri,
    };
  }

  factory ApplicationArtifactResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationArtifactResponse(
      name: map['name'] as String,
      type: map['type'] as String,
      uri: map['uri'] as String,
    );
  }
}

