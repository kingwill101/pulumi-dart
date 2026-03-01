// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';

/// {@template pulumi_apiextensions_k8s_io_custom_resource_patch_args_doc}
/// The set of arguments for CustomResourcePatch.
/// {@endtemplate}
/// {@macro pulumi_apiextensions_k8s_io_custom_resource_patch_args_doc}
class CustomResourcePatchArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String> kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final pulumi.Input<ObjectMeta>? metadata;
  /// This field is not an actual property. It is used to represent custom property names and their values that can be passed in addition to the other input properties.
  final pulumi.Input<Map<String, dynamic>>? others;

  /// Creates a new [CustomResourcePatchArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [others] This field is not an actual property. It is used to represent custom property names and their values that can be passed in addition to the other input properties.
  CustomResourcePatchArgs({
    required pulumi.Output<String> apiVersion,
    required pulumi.Output<String> kind,
    pulumi.Output<ObjectMeta>? metadata,
    pulumi.Output<Map<String, dynamic>>? others,
  }) :
      apiVersion = pulumi.Input.asInput<String>(apiVersion),
      kind = pulumi.Input.asInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      others = pulumi.Input.asOptionalInput<Map<String, dynamic>>(others);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': apiVersion,
      'kind': kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'others': ?others,
    };
  }

  factory CustomResourcePatchArgs.fromMap(Map<String, dynamic> map) {
    return CustomResourcePatchArgs(
      apiVersion: pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      others: map['others'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['others'] as Map).cast<String, dynamic>()),
    );
  }
}

