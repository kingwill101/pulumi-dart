// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'custom_resource_definition_spec_apiextensions_k8s_io_v1beta1.dart';

/// {@template pulumi_apiextensions_k8s_io_v1beta1_custom_resource_definition_apiextensions_k8s_io_v1beta1_args_doc}
/// The set of arguments for CustomResourceDefinition.
/// {@endtemplate}
/// {@macro pulumi_apiextensions_k8s_io_v1beta1_custom_resource_definition_apiextensions_k8s_io_v1beta1_args_doc}
class CustomResourceDefinitionApiextensionsK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  final pulumi.Input<ObjectMeta>? metadata;
  /// spec describes how the user wants the resources to appear
  final pulumi.Input<CustomResourceDefinitionSpecApiextensionsK8sIoV1beta1> spec;

  /// Creates a new [CustomResourceDefinitionApiextensionsK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] spec describes how the user wants the resources to appear
  const CustomResourceDefinitionApiextensionsK8sIoV1beta1Args({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': pulumi.Input.mapInputValue<CustomResourceDefinitionSpecApiextensionsK8sIoV1beta1, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory CustomResourceDefinitionApiextensionsK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionApiextensionsK8sIoV1beta1Args(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: pulumi.Input.fromValue(CustomResourceDefinitionSpecApiextensionsK8sIoV1beta1.fromMap((map['spec']! as Map).cast<String, dynamic>())),
    );
  }
}
