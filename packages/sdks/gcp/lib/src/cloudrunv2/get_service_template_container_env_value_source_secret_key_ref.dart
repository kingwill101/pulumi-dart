// ignore_for_file: unused_element, unnecessary_cast


class GetServiceTemplateContainerEnvValueSourceSecretKeyRef {
  /// The name of the secret in Cloud Secret Manager. Format: {secretName} if the secret is in the same project. projects/{project}/secrets/{secretName} if the secret is in a different project.
  final String secret;
  /// The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version.
  final String version;

  /// Creates a new [GetServiceTemplateContainerEnvValueSourceSecretKeyRef].
  /// [secret] The name of the secret in Cloud Secret Manager. Format: {secretName} if the secret is in the same project. projects/{project}/secrets/{secretName} if the secret is in a different project.
  /// [version] The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version.
  GetServiceTemplateContainerEnvValueSourceSecretKeyRef({
    required this.secret,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': secret,
      'version': version,
    };
  }

  factory GetServiceTemplateContainerEnvValueSourceSecretKeyRef.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainerEnvValueSourceSecretKeyRef(
      secret: map['secret'] as String,
      version: map['version'] as String,
    );
  }
}

