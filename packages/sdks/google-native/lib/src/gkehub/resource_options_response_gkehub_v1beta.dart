// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceOptions represent options for Kubernetes resource generation.
class ResourceOptionsResponseGkehubV1beta {
  /// Optional. The Connect agent version to use for connect_resources. Defaults to the latest GKE Connect version. The version must be a currently supported version, obsolete versions will be rejected.
  final pulumi.Input<String> connectVersion;
  /// Optional. Major version of the Kubernetes cluster. This is only used to determine which version to use for the CustomResourceDefinition resources, `apiextensions/v1beta1` or`apiextensions/v1`.
  final pulumi.Input<String> k8sVersion;
  /// Optional. Use `apiextensions/v1beta1` instead of `apiextensions/v1` for CustomResourceDefinition resources. This option should be set for clusters with Kubernetes apiserver versions <1.16.
  final pulumi.Input<bool> v1beta1Crd;

  /// Creates a new [ResourceOptionsResponseGkehubV1beta].
  /// [connectVersion] Optional. The Connect agent version to use for connect_resources. Defaults to the latest GKE Connect version. The version must be a currently supported version, obsolete versions will be rejected.
  /// [k8sVersion] Optional. Major version of the Kubernetes cluster. This is only used to determine which version to use for the CustomResourceDefinition resources, `apiextensions/v1beta1` or`apiextensions/v1`.
  /// [v1beta1Crd] Optional. Use `apiextensions/v1beta1` instead of `apiextensions/v1` for CustomResourceDefinition resources. This option should be set for clusters with Kubernetes apiserver versions <1.16.
  ResourceOptionsResponseGkehubV1beta({
    required this.connectVersion,
    required this.k8sVersion,
    required this.v1beta1Crd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectVersion': connectVersion,
      'k8sVersion': k8sVersion,
      'v1beta1Crd': v1beta1Crd,
    };
  }

  factory ResourceOptionsResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ResourceOptionsResponseGkehubV1beta(
      connectVersion: (map['connectVersion'] as String).input(),
      k8sVersion: (map['k8sVersion'] as String).input(),
      v1beta1Crd: (map['v1beta1Crd'] as bool).input(),
    );
  }
}

