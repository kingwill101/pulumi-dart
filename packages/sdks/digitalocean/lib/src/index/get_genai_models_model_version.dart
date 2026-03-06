// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiModelsModelVersion {
  /// Major version of the model
  final pulumi.Input<int> major;
  /// Minor version of the model
  final pulumi.Input<int> minor;
  /// Patch version of the model
  final pulumi.Input<int> patch;

  /// Creates a new [GetGenaiModelsModelVersion].
  /// [major] Major version of the model
  /// [minor] Minor version of the model
  /// [patch] Patch version of the model
  const GetGenaiModelsModelVersion({
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
      major: pulumi.Input.fromValue(map['major'] as int),
      minor: pulumi.Input.fromValue(map['minor'] as int),
      patch: pulumi.Input.fromValue(map['patch'] as int),
    );
  }
}

