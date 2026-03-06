// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for the build operations performed as a part of the version deployment. Only applicable for App Engine flexible environment when creating a version using source code directly.
class CloudBuildOptionsResponseAppengineV1beta {
  /// Path to the yaml file used in deployment, used to determine runtime configuration details.Required for flexible environment builds.See https://cloud.google.com/appengine/docs/standard/python/config/appref for more details.
  final pulumi.Input<String> appYamlPath;
  /// The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
  final pulumi.Input<String> cloudBuildTimeout;

  /// Creates a new [CloudBuildOptionsResponseAppengineV1beta].
  /// [appYamlPath] Path to the yaml file used in deployment, used to determine runtime configuration details.Required for flexible environment builds.See https://cloud.google.com/appengine/docs/standard/python/config/appref for more details.
  /// [cloudBuildTimeout] The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
  const CloudBuildOptionsResponseAppengineV1beta({
    required this.appYamlPath,
    required this.cloudBuildTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appYamlPath': appYamlPath,
      'cloudBuildTimeout': cloudBuildTimeout,
    };
  }

  factory CloudBuildOptionsResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return CloudBuildOptionsResponseAppengineV1beta(
      appYamlPath: pulumi.Input.fromValue(map['appYamlPath'] as String),
      cloudBuildTimeout: pulumi.Input.fromValue(map['cloudBuildTimeout'] as String),
    );
  }
}

