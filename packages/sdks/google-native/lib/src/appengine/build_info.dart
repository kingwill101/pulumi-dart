// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Google Cloud Build information.
class BuildInfo {
  /// The Google Cloud Build id. Example: "f966068f-08b2-42c8-bdfe-74137dff2bf9"
  final pulumi.Input<String>? cloudBuildId;

  /// Creates a new [BuildInfo].
  /// [cloudBuildId] The Google Cloud Build id. Example: "f966068f-08b2-42c8-bdfe-74137dff2bf9"
  BuildInfo({
    this.cloudBuildId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudBuildId': ?cloudBuildId,
    };
  }

  factory BuildInfo.fromMap(Map<String, dynamic> map) {
    return BuildInfo(
      cloudBuildId: map['cloudBuildId'] == null ? null : (map['cloudBuildId']! as String).input(),
    );
  }
}

