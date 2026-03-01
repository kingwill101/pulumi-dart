// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentModelVersion {
  /// Major version of the model
  final int? major;
  /// Minor version of the model
  final int? minor;
  /// Patch version of the model
  final int? patch;

  /// Creates a new [GetGradientaiAgentModelVersion].
  /// [major] Major version of the model
  /// [minor] Minor version of the model
  /// [patch] Patch version of the model
  GetGradientaiAgentModelVersion({
    this.major,
    this.minor,
    this.patch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'major': ?major,
      'minor': ?minor,
      'patch': ?patch,
    };
  }

  factory GetGradientaiAgentModelVersion.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentModelVersion(
      major: map['major'] == null ? null : map['major'] as int,
      minor: map['minor'] == null ? null : map['minor'] as int,
      patch: map['patch'] == null ? null : map['patch'] as int,
    );
  }
}

