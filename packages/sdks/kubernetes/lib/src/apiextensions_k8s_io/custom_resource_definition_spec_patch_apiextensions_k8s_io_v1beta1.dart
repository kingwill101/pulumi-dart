// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_column_definition_patch_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_conversion_patch_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_definition_names_patch_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_definition_version_patch_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_subresources_patch_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_validation_patch_apiextensions_k8s_io_v1beta1.dart';

/// CustomResourceDefinitionSpec describes how a user wants their resource to appear
class CustomResourceDefinitionSpecPatchApiextensionsK8sIoV1beta1 {
  /// additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If present, this field configures columns for all versions. Top-level and per-version columns are mutually exclusive. If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.
  final pulumi.Input<List<CustomResourceColumnDefinitionPatchApiextensionsK8sIoV1beta1>>? additionalPrinterColumns;
  /// conversion defines conversion settings for the CRD.
  final pulumi.Input<CustomResourceConversionPatchApiextensionsK8sIoV1beta1>? conversion;
  /// group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
  final pulumi.Input<String>? group;
  /// names specify the resource and kind names for the custom resource.
  final pulumi.Input<CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1>? names;
  /// preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. If false, schemas must be defined for all versions. Defaults to true in v1beta for backwards compatibility. Deprecated: will be required to be false in v1. Preservation of unknown fields can be specified in the validation schema using the `x-kubernetes-preserve-unknown-fields: true` extension. See https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.
  final pulumi.Input<bool>? preserveUnknownFields;
  /// scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`. Default is `Namespaced`.
  final pulumi.Input<String>? scope;
  /// subresources specify what subresources the defined custom resource has. If present, this field configures subresources for all versions. Top-level and per-version subresources are mutually exclusive.
  final pulumi.Input<CustomResourceSubresourcesPatchApiextensionsK8sIoV1beta1>? subresources;
  /// validation describes the schema used for validation and pruning of the custom resource. If present, this validation schema is used to validate all versions. Top-level and per-version schemas are mutually exclusive.
  final pulumi.Input<CustomResourceValidationPatchApiextensionsK8sIoV1beta1>? validation;
  /// version is the API version of the defined custom resource. The custom resources are served under `/apis/<group>/<version>/...`. Must match the name of the first item in the `versions` list if `version` and `versions` are both specified. Optional if `versions` is specified. Deprecated: use `versions` instead.
  final pulumi.Input<String>? version;
  /// versions is the list of all API versions of the defined custom resource. Optional if `version` is specified. The name of the first item in the `versions` list must match the `version` field if `version` and `versions` are both specified. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  final pulumi.Input<List<CustomResourceDefinitionVersionPatchApiextensionsK8sIoV1beta1>>? versions;

  /// Creates a new [CustomResourceDefinitionSpecPatchApiextensionsK8sIoV1beta1].
  /// [additionalPrinterColumns] additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If present, this field configures columns for all versions. Top-level and per-version columns are mutually exclusive. If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.
  /// [conversion] conversion defines conversion settings for the CRD.
  /// [group] group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
  /// [names] names specify the resource and kind names for the custom resource.
  /// [preserveUnknownFields] preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. If false, schemas must be defined for all versions. Defaults to true in v1beta for backwards compatibility. Deprecated: will be required to be false in v1. Preservation of unknown fields can be specified in the validation schema using the `x-kubernetes-preserve-unknown-fields: true` extension. See https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.
  /// [scope] scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`. Default is `Namespaced`.
  /// [subresources] subresources specify what subresources the defined custom resource has. If present, this field configures subresources for all versions. Top-level and per-version subresources are mutually exclusive.
  /// [validation] validation describes the schema used for validation and pruning of the custom resource. If present, this validation schema is used to validate all versions. Top-level and per-version schemas are mutually exclusive.
  /// [version] version is the API version of the defined custom resource. The custom resources are served under `/apis/<group>/<version>/...`. Must match the name of the first item in the `versions` list if `version` and `versions` are both specified. Optional if `versions` is specified. Deprecated: use `versions` instead.
  /// [versions] versions is the list of all API versions of the defined custom resource. Optional if `version` is specified. The name of the first item in the `versions` list must match the `version` field if `version` and `versions` are both specified. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  CustomResourceDefinitionSpecPatchApiextensionsK8sIoV1beta1({
    this.additionalPrinterColumns,
    this.conversion,
    this.group,
    this.names,
    this.preserveUnknownFields,
    this.scope,
    this.subresources,
    this.validation,
    this.version,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalPrinterColumns': ?pulumi.Input.mapOptionalInputValue<List<CustomResourceColumnDefinitionPatchApiextensionsK8sIoV1beta1>, List<Map<String, dynamic>>>(additionalPrinterColumns, (value) => pulumi.Input.encodeList<CustomResourceColumnDefinitionPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conversion': ?pulumi.Input.mapOptionalInputValue<CustomResourceConversionPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(conversion, (value) => value.toMap()),
      'group': ?group,
      'names': ?pulumi.Input.mapOptionalInputValue<CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(names, (value) => value.toMap()),
      'preserveUnknownFields': ?preserveUnknownFields,
      'scope': ?scope,
      'subresources': ?pulumi.Input.mapOptionalInputValue<CustomResourceSubresourcesPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(subresources, (value) => value.toMap()),
      'validation': ?pulumi.Input.mapOptionalInputValue<CustomResourceValidationPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(validation, (value) => value.toMap()),
      'version': ?version,
      'versions': ?pulumi.Input.mapOptionalInputValue<List<CustomResourceDefinitionVersionPatchApiextensionsK8sIoV1beta1>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<CustomResourceDefinitionVersionPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomResourceDefinitionSpecPatchApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionSpecPatchApiextensionsK8sIoV1beta1(
      additionalPrinterColumns: map['additionalPrinterColumns'] == null ? null : (pulumi.Input.decodeList<CustomResourceColumnDefinitionPatchApiextensionsK8sIoV1beta1>(map['additionalPrinterColumns'], (value) => CustomResourceColumnDefinitionPatchApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      conversion: map['conversion'] == null ? null : (CustomResourceConversionPatchApiextensionsK8sIoV1beta1.fromMap((map['conversion'] as Map).cast<String, dynamic>())).input(),
      group: map['group'] == null ? null : (map['group'] as String).input(),
      names: map['names'] == null ? null : (CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1.fromMap((map['names'] as Map).cast<String, dynamic>())).input(),
      preserveUnknownFields: map['preserveUnknownFields'] == null ? null : (map['preserveUnknownFields'] as bool).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      subresources: map['subresources'] == null ? null : (CustomResourceSubresourcesPatchApiextensionsK8sIoV1beta1.fromMap((map['subresources'] as Map).cast<String, dynamic>())).input(),
      validation: map['validation'] == null ? null : (CustomResourceValidationPatchApiextensionsK8sIoV1beta1.fromMap((map['validation'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      versions: map['versions'] == null ? null : (pulumi.Input.decodeList<CustomResourceDefinitionVersionPatchApiextensionsK8sIoV1beta1>(map['versions'], (value) => CustomResourceDefinitionVersionPatchApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

