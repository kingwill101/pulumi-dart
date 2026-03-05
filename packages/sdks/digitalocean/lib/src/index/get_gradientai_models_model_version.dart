// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiModelsModelVersion {
  /// Major version of the model
  final pulumi.Input<int> major;
  /// Minor version of the model
  final pulumi.Input<int> minor;
  /// Patch version of the model
  final pulumi.Input<int> patch;

  /// Creates a new [GetGradientaiModelsModelVersion].
  /// [major] Major version of the model
  /// [minor] Minor version of the model
  /// [patch] Patch version of the model
  GetGradientaiModelsModelVersion({
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

  factory GetGradientaiModelsModelVersion.fromMap(Map<String, dynamic> map) {
    return GetGradientaiModelsModelVersion(
      major: pulumi.Input.fromValue(map['major'] as int),
      minor: pulumi.Input.fromValue(map['minor'] as int),
      patch: pulumi.Input.fromValue(map['patch'] as int),
    );
  }
}

