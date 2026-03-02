// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_column_definition_patch_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_subresources_patch_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_validation_patch_apiextensions_k8s_io_v1beta1.dart';

/// CustomResourceDefinitionVersion describes a version for CRD.
class CustomResourceDefinitionVersionPatchApiextensionsK8sIoV1beta1 {
  /// additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. Top-level and per-version columns are mutually exclusive. Per-version columns must not all be set to identical values (top-level columns should be used instead). If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.
  final pulumi.Input<List<CustomResourceColumnDefinitionPatchApiextensionsK8sIoV1beta1>>? additionalPrinterColumns;
  /// deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
  final pulumi.Input<bool>? deprecated;
  /// deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
  final pulumi.Input<String>? deprecationWarning;
  /// name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true.
  final pulumi.Input<String>? name;
  /// schema describes the schema used for validation and pruning of this version of the custom resource. Top-level and per-version schemas are mutually exclusive. Per-version schemas must not all be set to identical values (top-level validation schema should be used instead).
  final pulumi.Input<CustomResourceValidationPatchApiextensionsK8sIoV1beta1>? schema;
  /// served is a flag enabling/disabling this version from being served via REST APIs
  final pulumi.Input<bool>? served;
  /// storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
  final pulumi.Input<bool>? storage;
  /// subresources specify what subresources this version of the defined custom resource have. Top-level and per-version subresources are mutually exclusive. Per-version subresources must not all be set to identical values (top-level subresources should be used instead).
  final pulumi.Input<CustomResourceSubresourcesPatchApiextensionsK8sIoV1beta1>? subresources;

  /// Creates a new [CustomResourceDefinitionVersionPatchApiextensionsK8sIoV1beta1].
  /// [additionalPrinterColumns] additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. Top-level and per-version columns are mutually exclusive. Per-version columns must not all be set to identical values (top-level columns should be used instead). If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.
  /// [deprecated] deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
  /// [deprecationWarning] deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
  /// [name] name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true.
  /// [schema] schema describes the schema used for validation and pruning of this version of the custom resource. Top-level and per-version schemas are mutually exclusive. Per-version schemas must not all be set to identical values (top-level validation schema should be used instead).
  /// [served] served is a flag enabling/disabling this version from being served via REST APIs
  /// [storage] storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
  /// [subresources] subresources specify what subresources this version of the defined custom resource have. Top-level and per-version subresources are mutually exclusive. Per-version subresources must not all be set to identical values (top-level subresources should be used instead).
  CustomResourceDefinitionVersionPatchApiextensionsK8sIoV1beta1({
    this.additionalPrinterColumns,
    this.deprecated,
    this.deprecationWarning,
    this.name,
    this.schema,
    this.served,
    this.storage,
    this.subresources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalPrinterColumns': ?pulumi.Input.mapOptionalInputValue<List<CustomResourceColumnDefinitionPatchApiextensionsK8sIoV1beta1>, List<Map<String, dynamic>>>(additionalPrinterColumns, (value) => pulumi.Input.encodeList<CustomResourceColumnDefinitionPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deprecated': ?deprecated,
      'deprecationWarning': ?deprecationWarning,
      'name': ?name,
      'schema': ?pulumi.Input.mapOptionalInputValue<CustomResourceValidationPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'served': ?served,
      'storage': ?storage,
      'subresources': ?pulumi.Input.mapOptionalInputValue<CustomResourceSubresourcesPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(subresources, (value) => value.toMap()),
    };
  }

  factory CustomResourceDefinitionVersionPatchApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionVersionPatchApiextensionsK8sIoV1beta1(
      additionalPrinterColumns: map['additionalPrinterColumns'] == null ? null : (pulumi.Input.decodeList<CustomResourceColumnDefinitionPatchApiextensionsK8sIoV1beta1>(map['additionalPrinterColumns']!, (value) => CustomResourceColumnDefinitionPatchApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deprecated: map['deprecated'] == null ? null : (map['deprecated']! as bool).input(),
      deprecationWarning: map['deprecationWarning'] == null ? null : (map['deprecationWarning']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      schema: map['schema'] == null ? null : (CustomResourceValidationPatchApiextensionsK8sIoV1beta1.fromMap((map['schema']! as Map).cast<String, dynamic>())).input(),
      served: map['served'] == null ? null : (map['served']! as bool).input(),
      storage: map['storage'] == null ? null : (map['storage']! as bool).input(),
      subresources: map['subresources'] == null ? null : (CustomResourceSubresourcesPatchApiextensionsK8sIoV1beta1.fromMap((map['subresources']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

