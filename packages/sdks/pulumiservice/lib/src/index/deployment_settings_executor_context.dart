// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The executor context defines information about the executor where the deployment is executed. If unspecified, the default 'pulumi/pulumi' image is used.
class DeploymentSettingsExecutorContext {
  /// Allows overriding the default executor image with a custom image. E.g. 'pulumi/pulumi-nodejs:latest'
  final pulumi.Input<String> executorImage;

  /// Creates a new [DeploymentSettingsExecutorContext].
  /// [executorImage] Allows overriding the default executor image with a custom image. E.g. 'pulumi/pulumi-nodejs:latest'
  DeploymentSettingsExecutorContext({required this.executorImage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'executorImage': executorImage};
  }

  factory DeploymentSettingsExecutorContext.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsExecutorContext(
      executorImage: pulumi.Input.fromValue(map['executorImage'] as String),
    );
  }
}
