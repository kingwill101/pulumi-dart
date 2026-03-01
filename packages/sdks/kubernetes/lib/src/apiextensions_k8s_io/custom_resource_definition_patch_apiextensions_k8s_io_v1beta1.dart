// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta_patch.dart';
import 'custom_resource_definition_spec_patch_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_definition_status_patch_apiextensions_k8s_io_v1beta1.dart';

/// CustomResourceDefinition represents a resource that should be exposed on the API server.  Its name MUST be in the format <.spec.name>.<.spec.group>. Deprecated in v1.16, planned for removal in v1.19. Use apiextensions.k8s.io/v1 CustomResourceDefinition instead.
class CustomResourceDefinitionPatchApiextensionsK8sIoV1beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  final ObjectMetaPatch? metadata;
  /// spec describes how the user wants the resources to appear
  final CustomResourceDefinitionSpecPatchApiextensionsK8sIoV1beta1? spec;
  /// status indicates the actual state of the CustomResourceDefinition
  final CustomResourceDefinitionStatusPatchApiextensionsK8sIoV1beta1? status;

  /// Creates a new [CustomResourceDefinitionPatchApiextensionsK8sIoV1beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] spec describes how the user wants the resources to appear
  /// [status] status indicates the actual state of the CustomResourceDefinition
  CustomResourceDefinitionPatchApiextensionsK8sIoV1beta1({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory CustomResourceDefinitionPatchApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionPatchApiextensionsK8sIoV1beta1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : CustomResourceDefinitionSpecPatchApiextensionsK8sIoV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : CustomResourceDefinitionStatusPatchApiextensionsK8sIoV1beta1.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

