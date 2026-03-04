// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The JFrog Artifactory connector environment data
class JFrogEnvironmentData {
  /// The type of the environment data.
  /// Expected value is 'JFrogArtifactory'.
  final pulumi.Input<String> environmentType;

  /// Scan interval in hours (value should be between 1-hour to 24-hours)
  final pulumi.Input<int>? scanInterval;

  /// Creates a new [JFrogEnvironmentData].
  /// [environmentType] The type of the environment data.
  /// [scanInterval] Scan interval in hours (value should be between 1-hour to 24-hours)
  JFrogEnvironmentData({required this.environmentType, this.scanInterval});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': environmentType,
      'scanInterval': ?scanInterval,
    };
  }

  factory JFrogEnvironmentData.fromMap(Map<String, dynamic> map) {
    return JFrogEnvironmentData(
      environmentType: pulumi.Input.fromValue(map['environmentType'] as String),
      scanInterval: (() {
        final guardedValue = map['scanInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
