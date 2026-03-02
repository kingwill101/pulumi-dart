// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_conversion.dart';
import 'custom_resource_definition_names.dart';
import 'custom_resource_definition_version.dart';

/// CustomResourceDefinitionSpec describes how a user wants their resource to appear
class CustomResourceDefinitionSpec {
  /// conversion defines conversion settings for the CRD.
  final pulumi.Input<CustomResourceConversion>? conversion;
  /// group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
  final pulumi.Input<String> group;
  /// names specify the resource and kind names for the custom resource.
  final pulumi.Input<CustomResourceDefinitionNames> names;
  /// preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/#field-pruning for details.
  final pulumi.Input<bool>? preserveUnknownFields;
  /// scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`.
  final pulumi.Input<String> scope;
  /// versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  final pulumi.Input<List<CustomResourceDefinitionVersion>> versions;

  /// Creates a new [CustomResourceDefinitionSpec].
  /// [conversion] conversion defines conversion settings for the CRD.
  /// [group] group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
  /// [names] names specify the resource and kind names for the custom resource.
  /// [preserveUnknownFields] preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/#field-pruning for details.
  /// [scope] scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`.
  /// [versions] versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  CustomResourceDefinitionSpec({
    this.conversion,
    required this.group,
    required this.names,
    this.preserveUnknownFields,
    required this.scope,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversion': ?pulumi.Input.mapOptionalInputValue<CustomResourceConversion, Map<String, dynamic>>(conversion, (value) => value.toMap()),
      'group': group,
      'names': pulumi.Input.mapInputValue<CustomResourceDefinitionNames, Map<String, dynamic>>(names, (value) => value.toMap()),
      'preserveUnknownFields': ?preserveUnknownFields,
      'scope': scope,
      'versions': pulumi.Input.mapInputValue<List<CustomResourceDefinitionVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<CustomResourceDefinitionVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomResourceDefinitionSpec.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionSpec(
      conversion: map['conversion'] == null ? null : (CustomResourceConversion.fromMap((map['conversion']! as Map).cast<String, dynamic>())).input(),
      group: (map['group'] as String).input(),
      names: (CustomResourceDefinitionNames.fromMap((map['names'] as Map).cast<String, dynamic>())).input(),
      preserveUnknownFields: map['preserveUnknownFields'] == null ? null : (map['preserveUnknownFields']! as bool).input(),
      scope: (map['scope'] as String).input(),
      versions: (pulumi.Input.decodeList<CustomResourceDefinitionVersion>(map['versions'], (value) => CustomResourceDefinitionVersion.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

