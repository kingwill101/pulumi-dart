// ignore_for_file: unused_element, unnecessary_cast


/// Defines a hash object for use in Materials and Products.
class ArtifactHashes {
  final String? sha256;

  /// Creates a new [ArtifactHashes].
  /// [sha256] Optional.
  ArtifactHashes({
    this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sha256': ?sha256,
    };
  }

  factory ArtifactHashes.fromMap(Map<String, dynamic> map) {
    return ArtifactHashes(
      sha256: map['sha256'] == null ? null : map['sha256'] as String,
    );
  }
}

