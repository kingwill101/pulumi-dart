// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateSpecContainerEnvValueFromSecretKeyRef {
  /// A Cloud Secret Manager secret version. Must be 'latest' for the latest
  /// version or an integer for a specific version.
  final pulumi.Input<String> key;
  /// The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project.
  /// If the secret is in another project, you must define an alias.
  /// An alias definition has the form:
  /// {alias}:projects/{project-id|project-number}/secrets/{secret-name}.
  /// If multiple alias definitions are needed, they must be separated by commas.
  /// The alias definitions must be set on the run.googleapis.com/secrets annotation.
  final pulumi.Input<String> name;

  /// Creates a new [ServiceTemplateSpecContainerEnvValueFromSecretKeyRef].
  /// [key] A Cloud Secret Manager secret version. Must be 'latest' for the latest
  /// [name] The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project.
  const ServiceTemplateSpecContainerEnvValueFromSecretKeyRef({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': name,
    };
  }

  factory ServiceTemplateSpecContainerEnvValueFromSecretKeyRef.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnvValueFromSecretKeyRef(
      key: pulumi.Input.fromValue(map['key'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
