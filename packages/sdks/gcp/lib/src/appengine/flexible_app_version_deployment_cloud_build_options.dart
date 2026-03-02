// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionDeploymentCloudBuildOptions {
  /// Path to the yaml file used in deployment, used to determine runtime configuration details.
  final pulumi.Input<String> appYamlPath;
  /// The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? cloudBuildTimeout;

  /// Creates a new [FlexibleAppVersionDeploymentCloudBuildOptions].
  /// [appYamlPath] Path to the yaml file used in deployment, used to determine runtime configuration details.
  /// [cloudBuildTimeout] The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
  FlexibleAppVersionDeploymentCloudBuildOptions({
    required this.appYamlPath,
    this.cloudBuildTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appYamlPath': appYamlPath,
      'cloudBuildTimeout': ?cloudBuildTimeout,
    };
  }

  factory FlexibleAppVersionDeploymentCloudBuildOptions.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionDeploymentCloudBuildOptions(
      appYamlPath: (map['appYamlPath'] as String).input(),
      cloudBuildTimeout: map['cloudBuildTimeout'] == null ? null : (map['cloudBuildTimeout']! as String).input(),
    );
  }
}

