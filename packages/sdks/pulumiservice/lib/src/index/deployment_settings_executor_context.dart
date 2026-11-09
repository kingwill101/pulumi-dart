// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_settings_executor_image_credentials.dart';

/// The executor context defines information about the executor where the deployment is executed. If unspecified, the default 'pulumi/pulumi' image is used.
class DeploymentSettingsExecutorContext {
  /// Credentials for pulling `executorImage` from a private container registry. Only needed when the image is not publicly accessible.
  final pulumi.Input<DeploymentSettingsExecutorImageCredentials?>? credentials;
  /// Allows overriding the default executor image with a custom image. E.g. 'pulumi/pulumi-nodejs:latest'
  final pulumi.Input<String> executorImage;

  /// Creates a new [DeploymentSettingsExecutorContext].
  /// [credentials] Credentials for pulling `executorImage` from a private container registry. Only needed when the image is not publicly accessible.
  /// [executorImage] Allows overriding the default executor image with a custom image. E.g. 'pulumi/pulumi-nodejs:latest'
  const DeploymentSettingsExecutorContext({
    this.credentials,
    required this.executorImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?pulumi.Input.mapOptionalInputValue<DeploymentSettingsExecutorImageCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'executorImage': executorImage,
    };
  }

  factory DeploymentSettingsExecutorContext.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsExecutorContext(
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentSettingsExecutorImageCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executorImage: pulumi.Input.fromValue(map['executorImage'] as String),
    );
  }
}
