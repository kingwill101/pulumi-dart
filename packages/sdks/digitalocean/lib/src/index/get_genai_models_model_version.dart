// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiModelsModelVersion {
  /// Major version of the model
  final int major;
  /// Minor version of the model
  final int minor;
  /// Patch version of the model
  final int patch;

  /// Creates a new [GetGenaiModelsModelVersion].
  /// [major] Major version of the model
  /// [minor] Minor version of the model
  /// [patch] Patch version of the model
  GetGenaiModelsModelVersion({
    required this.major,
    required this.minor,
    required this.patch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'major': major,
      'minor': minor,
      'patch': patch,
    };
  }

  factory GetGenaiModelsModelVersion.fromMap(Map<String, dynamic> map) {
    return GetGenaiModelsModelVersion(
      major: map['major'] as int,
      minor: map['minor'] as int,
      patch: map['patch'] as int,
    );
  }
}

