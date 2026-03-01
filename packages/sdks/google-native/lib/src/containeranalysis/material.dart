// ignore_for_file: unused_element, unnecessary_cast


class Material {
  final Map<String, String>? digest;
  final String? uri;

  /// Creates a new [Material].
  /// [digest] Optional.
  /// [uri] Optional.
  Material({
    this.digest,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'uri': ?uri,
    };
  }

  factory Material.fromMap(Map<String, dynamic> map) {
    return Material(
      digest: map['digest'] == null ? null : (map['digest'] as Map).cast<String, String>(),
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

