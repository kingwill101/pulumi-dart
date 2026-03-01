// ignore_for_file: unused_element, unnecessary_cast


class ShareExportLocation {
  final String? path;
  final String? preferred;

  /// Creates a new [ShareExportLocation].
  /// [path] Optional.
  /// [preferred] Optional.
  ShareExportLocation({
    this.path,
    this.preferred,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'preferred': ?preferred,
    };
  }

  factory ShareExportLocation.fromMap(Map<String, dynamic> map) {
    return ShareExportLocation(
      path: map['path'] == null ? null : map['path'] as String,
      preferred: map['preferred'] == null ? null : map['preferred'] as String,
    );
  }
}

