// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateContainerEnvValueSourceSecretKeyRef {
  /// The name of the secret in Cloud Secret Manager. Format: {secretName} if the secret is in the same project. projects/{project}/secrets/{secretName} if the secret is in a different project.
  final pulumi.Input<String> secret;
  /// The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version.
  final pulumi.Input<String>? version;

  /// Creates a new [ServiceTemplateContainerEnvValueSourceSecretKeyRef].
  /// [secret] The name of the secret in Cloud Secret Manager. Format: {secretName} if the secret is in the same project. projects/{project}/secrets/{secretName} if the secret is in a different project.
  /// [version] The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version.
  ServiceTemplateContainerEnvValueSourceSecretKeyRef({
    required this.secret,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': secret,
      'version': ?version,
    };
  }

  factory ServiceTemplateContainerEnvValueSourceSecretKeyRef.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerEnvValueSourceSecretKeyRef(
      secret: (map['secret'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

