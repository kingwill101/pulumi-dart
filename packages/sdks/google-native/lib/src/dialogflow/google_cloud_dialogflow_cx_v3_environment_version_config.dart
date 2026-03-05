// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the version.
class GoogleCloudDialogflowCxV3EnvironmentVersionConfig {
  /// Format: projects//locations//agents//flows//versions/.
  final pulumi.Input<String> version;

  /// Creates a new [GoogleCloudDialogflowCxV3EnvironmentVersionConfig].
  /// [version] Format: projects//locations//agents//flows//versions/.
  GoogleCloudDialogflowCxV3EnvironmentVersionConfig({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory GoogleCloudDialogflowCxV3EnvironmentVersionConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EnvironmentVersionConfig(
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

