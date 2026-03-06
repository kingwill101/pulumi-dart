// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties defining the mapping between a cloud secret store object and a Kubernetes Secret.
class KubernetesSecretObjectMappingResponse {
  /// SourcePath is the identifier for the secret data as defined by the external secret provider. This is the key or path to the secret in the provider's system, which gets mounted to a specific path in the pod. The value should match the name of the secret as specified in the SecretProviderClass's objects array.
  final pulumi.Input<String> sourcePath;
  /// TargetKey is the key in the Kubernetes secret's data field where the secret value will be stored. This key is used to reference the secret data within Kubernetes, and it should be unique within the secret.
  final pulumi.Input<String> targetKey;

  /// Creates a new [KubernetesSecretObjectMappingResponse].
  /// [sourcePath] SourcePath is the identifier for the secret data as defined by the external secret provider. This is the key or path to the secret in the provider's system, which gets mounted to a specific path in the pod. The value should match the name of the secret as specified in the SecretProviderClass's objects array.
  /// [targetKey] TargetKey is the key in the Kubernetes secret's data field where the secret value will be stored. This key is used to reference the secret data within Kubernetes, and it should be unique within the secret.
  const KubernetesSecretObjectMappingResponse({
    required this.sourcePath,
    required this.targetKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourcePath': sourcePath,
      'targetKey': targetKey,
    };
  }

  factory KubernetesSecretObjectMappingResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesSecretObjectMappingResponse(
      sourcePath: pulumi.Input.fromValue(map['sourcePath'] as String),
      targetKey: pulumi.Input.fromValue(map['targetKey'] as String),
    );
  }
}

