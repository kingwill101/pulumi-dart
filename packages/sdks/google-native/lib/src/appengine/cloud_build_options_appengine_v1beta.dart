// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for the build operations performed as a part of the version deployment. Only applicable for App Engine flexible environment when creating a version using source code directly.
class CloudBuildOptionsAppengineV1beta {
  /// Path to the yaml file used in deployment, used to determine runtime configuration details.Required for flexible environment builds.See https://cloud.google.com/appengine/docs/standard/python/config/appref for more details.
  final pulumi.Input<String>? appYamlPath;
  /// The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
  final pulumi.Input<String>? cloudBuildTimeout;

  /// Creates a new [CloudBuildOptionsAppengineV1beta].
  /// [appYamlPath] Path to the yaml file used in deployment, used to determine runtime configuration details.Required for flexible environment builds.See https://cloud.google.com/appengine/docs/standard/python/config/appref for more details.
  /// [cloudBuildTimeout] The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
  CloudBuildOptionsAppengineV1beta({
    this.appYamlPath,
    this.cloudBuildTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appYamlPath': ?appYamlPath,
      'cloudBuildTimeout': ?cloudBuildTimeout,
    };
  }

  factory CloudBuildOptionsAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return CloudBuildOptionsAppengineV1beta(
      appYamlPath: map['appYamlPath'] == null ? null : (map['appYamlPath'] as String).input(),
      cloudBuildTimeout: map['cloudBuildTimeout'] == null ? null : (map['cloudBuildTimeout'] as String).input(),
    );
  }
}

