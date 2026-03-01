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
  final List<CustomResourceColumnDefinitionPatchApiextensionsK8sIoV1beta1>? additionalPrinterColumns;
  /// conversion defines conversion settings for the CRD.
  final CustomResourceConversionPatchApiextensionsK8sIoV1beta1? conversion;
  /// group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
  final String? group;
  /// names specify the resource and kind names for the custom resource.
  final CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1? names;
  /// preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. If false, schemas must be defined for all versions. Defaults to true in v1beta for backwards compatibility. Deprecated: will be required to be false in v1. Preservation of unknown fields can be specified in the validation schema using the `x-kubernetes-preserve-unknown-fields: true` extension. See https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.
  final bool? preserveUnknownFields;
  /// scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`. Default is `Namespaced`.
  final String? scope;
  /// subresources specify what subresources the defined custom resource has. If present, this field configures subresources for all versions. Top-level and per-version subresources are mutually exclusive.
  final CustomResourceSubresourcesPatchApiextensionsK8sIoV1beta1? subresources;
  /// validation describes the schema used for validation and pruning of the custom resource. If present, this validation schema is used to validate all versions. Top-level and per-version schemas are mutually exclusive.
  final CustomResourceValidationPatchApiextensionsK8sIoV1beta1? validation;
  /// version is the API version of the defined custom resource. The custom resources are served under `/apis/<group>/<version>/...`. Must match the name of the first item in the `versions` list if `version` and `versions` are both specified. Optional if `versions` is specified. Deprecated: use `versions` instead.
  final String? version;
  /// versions is the list of all API versions of the defined custom resource. Optional if `version` is specified. The name of the first item in the `versions` list must match the `version` field if `version` and `versions` are both specified. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  final List<CustomResourceDefinitionVersionPatchApiextensionsK8sIoV1beta1>? versions;

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
      'additionalPrinterColumns': ?additionalPrinterColumns == null ? null : pulumi.Input.encodeList<CustomResourceColumnDefinitionPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(additionalPrinterColumns!, (value) => value.toMap()),
      'conversion': ?conversion == null ? null : conversion!.toMap(),
      'group': ?group,
      'names': ?names == null ? null : names!.toMap(),
      'preserveUnknownFields': ?preserveUnknownFields,
      'scope': ?scope,
      'subresources': ?subresources == null ? null : subresources!.toMap(),
      'validation': ?validation == null ? null : validation!.toMap(),
      'version': ?version,
      'versions': ?versions == null ? null : pulumi.Input.encodeList<CustomResourceDefinitionVersionPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(versions!, (value) => value.toMap()),
    };
  }

  factory CustomResourceDefinitionSpecPatchApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionSpecPatchApiextensionsK8sIoV1beta1(
      additionalPrinterColumns: map['additionalPrinterColumns'] == null ? null : pulumi.Input.decodeList<CustomResourceColumnDefinitionPatchApiextensionsK8sIoV1beta1>(map['additionalPrinterColumns'], (value) => CustomResourceColumnDefinitionPatchApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      conversion: map['conversion'] == null ? null : CustomResourceConversionPatchApiextensionsK8sIoV1beta1.fromMap((map['conversion'] as Map).cast<String, dynamic>()),
      group: map['group'] == null ? null : map['group'] as String,
      names: map['names'] == null ? null : CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1.fromMap((map['names'] as Map).cast<String, dynamic>()),
      preserveUnknownFields: map['preserveUnknownFields'] == null ? null : map['preserveUnknownFields'] as bool,
      scope: map['scope'] == null ? null : map['scope'] as String,
      subresources: map['subresources'] == null ? null : CustomResourceSubresourcesPatchApiextensionsK8sIoV1beta1.fromMap((map['subresources'] as Map).cast<String, dynamic>()),
      validation: map['validation'] == null ? null : CustomResourceValidationPatchApiextensionsK8sIoV1beta1.fromMap((map['validation'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
      versions: map['versions'] == null ? null : pulumi.Input.decodeList<CustomResourceDefinitionVersionPatchApiextensionsK8sIoV1beta1>(map['versions'], (value) => CustomResourceDefinitionVersionPatchApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

