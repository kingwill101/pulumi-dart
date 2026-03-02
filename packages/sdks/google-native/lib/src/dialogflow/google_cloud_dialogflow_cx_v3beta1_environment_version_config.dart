// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the version.
class GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig {
  /// Format: projects//locations//agents//flows//versions/.
  final pulumi.Input<String> version;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig].
  /// [version] Format: projects//locations//agents//flows//versions/.
  GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig(
      version: (map['version'] as String).input(),
    );
  }
}

