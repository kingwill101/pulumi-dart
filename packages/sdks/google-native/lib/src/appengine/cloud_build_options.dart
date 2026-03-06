// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for the build operations performed as a part of the version deployment. Only applicable for App Engine flexible environment when creating a version using source code directly.
class CloudBuildOptions {
  /// Path to the yaml file used in deployment, used to determine runtime configuration details.Required for flexible environment builds.See https://cloud.google.com/appengine/docs/standard/python/config/appref for more details.
  final pulumi.Input<String>? appYamlPath;
  /// The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
  final pulumi.Input<String>? cloudBuildTimeout;

  /// Creates a new [CloudBuildOptions].
  /// [appYamlPath] Path to the yaml file used in deployment, used to determine runtime configuration details.Required for flexible environment builds.See https://cloud.google.com/appengine/docs/standard/python/config/appref for more details.
  /// [cloudBuildTimeout] The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
  const CloudBuildOptions({
    this.appYamlPath,
    this.cloudBuildTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appYamlPath': ?appYamlPath,
      'cloudBuildTimeout': ?cloudBuildTimeout,
    };
  }

  factory CloudBuildOptions.fromMap(Map<String, dynamic> map) {
    return CloudBuildOptions(
      appYamlPath: (() { final guardedValue = map['appYamlPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudBuildTimeout: (() { final guardedValue = map['cloudBuildTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

