// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KubernetesVersionValue describes a specific Kubernetes version that can be deployed.
class KubernetesVersionValueResponse {
  /// Additional description for the Kubernetes version.
  final pulumi.Input<String> description;
  /// The Kubernetes version identifier.
  final pulumi.Input<String> version;

  /// Creates a new [KubernetesVersionValueResponse].
  /// [description] Additional description for the Kubernetes version.
  /// [version] The Kubernetes version identifier.
  const KubernetesVersionValueResponse({
    required this.description,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'version': version,
    };
  }

  factory KubernetesVersionValueResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesVersionValueResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
