// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef {
  /// A Cloud Secret Manager secret version. Must be 'latest' for the latest
  /// version or an integer for a specific version.
  final pulumi.Input<String> key;
  /// Name must be unique within a Google Cloud project and region.
  /// Is required when creating resources. Name is primarily intended
  /// for creation idempotence and configuration definition. Cannot be updated.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String> name;

  /// Creates a new [GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef].
  /// [key] A Cloud Secret Manager secret version. Must be 'latest' for the latest
  /// [name] Name must be unique within a Google Cloud project and region.
  const GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': name,
    };
  }

  factory GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef(
      key: pulumi.Input.fromValue(map['key'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
