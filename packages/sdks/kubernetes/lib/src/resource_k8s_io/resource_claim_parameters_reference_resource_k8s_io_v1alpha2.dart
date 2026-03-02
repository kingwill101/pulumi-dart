// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceClaimParametersReference contains enough information to let you locate the parameters for a ResourceClaim. The object must be in the same namespace as the ResourceClaim.
class ResourceClaimParametersReferenceResourceK8sIoV1alpha2 {
  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  final pulumi.Input<String>? apiGroup;
  /// Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata, for example "ConfigMap".
  final pulumi.Input<String> kind;
  /// Name is the name of resource being referenced.
  final pulumi.Input<String> name;

  /// Creates a new [ResourceClaimParametersReferenceResourceK8sIoV1alpha2].
  /// [apiGroup] APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  /// [kind] Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata, for example "ConfigMap".
  /// [name] Name is the name of resource being referenced.
  ResourceClaimParametersReferenceResourceK8sIoV1alpha2({
    this.apiGroup,
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroup': ?apiGroup,
      'kind': kind,
      'name': name,
    };
  }

  factory ResourceClaimParametersReferenceResourceK8sIoV1alpha2.fromMap(Map<String, dynamic> map) {
    return ResourceClaimParametersReferenceResourceK8sIoV1alpha2(
      apiGroup: map['apiGroup'] == null ? null : (map['apiGroup']! as String).input(),
      kind: (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

