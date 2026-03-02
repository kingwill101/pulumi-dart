// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentsAgentModelVersion {
  /// Major version of the model
  final pulumi.Input<int>? major;
  /// Minor version of the model
  final pulumi.Input<int>? minor;
  /// Patch version of the model
  final pulumi.Input<int>? patch;

  /// Creates a new [GetGradientaiAgentsAgentModelVersion].
  /// [major] Major version of the model
  /// [minor] Minor version of the model
  /// [patch] Patch version of the model
  GetGradientaiAgentsAgentModelVersion({
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

  factory GetGradientaiAgentsAgentModelVersion.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgentModelVersion(
      major: map['major'] == null ? null : (map['major']! as int).input(),
      minor: map['minor'] == null ? null : (map['minor']! as int).input(),
      patch: map['patch'] == null ? null : (map['patch']! as int).input(),
    );
  }
}

