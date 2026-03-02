// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_column_definition_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_conversion_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_definition_names_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_definition_version_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_subresources_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_validation_apiextensions_k8s_io_v1beta1.dart';

/// CustomResourceDefinitionSpec describes how a user wants their resource to appear
class CustomResourceDefinitionSpecApiextensionsK8sIoV1beta1 {
  /// additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If present, this field configures columns for all versions. Top-level and per-version columns are mutually exclusive. If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.
  final pulumi.Input<List<CustomResourceColumnDefinitionApiextensionsK8sIoV1beta1>>? additionalPrinterColumns;
  /// conversion defines conversion settings for the CRD.
  final pulumi.Input<CustomResourceConversionApiextensionsK8sIoV1beta1>? conversion;
  /// group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
  final pulumi.Input<String> group;
  /// names specify the resource and kind names for the custom resource.
  final pulumi.Input<CustomResourceDefinitionNamesApiextensionsK8sIoV1beta1> names;
  /// preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. If false, schemas must be defined for all versions. Defaults to true in v1beta for backwards compatibility. Deprecated: will be required to be false in v1. Preservation of unknown fields can be specified in the validation schema using the `x-kubernetes-preserve-unknown-fields: true` extension. See https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.
  final pulumi.Input<bool>? preserveUnknownFields;
  /// scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`. Default is `Namespaced`.
  final pulumi.Input<String> scope;
  /// subresources specify what subresources the defined custom resource has. If present, this field configures subresources for all versions. Top-level and per-version subresources are mutually exclusive.
  final pulumi.Input<CustomResourceSubresourcesApiextensionsK8sIoV1beta1>? subresources;
  /// validation describes the schema used for validation and pruning of the custom resource. If present, this validation schema is used to validate all versions. Top-level and per-version schemas are mutually exclusive.
  final pulumi.Input<CustomResourceValidationApiextensionsK8sIoV1beta1>? validation;
  /// version is the API version of the defined custom resource. The custom resources are served under `/apis/<group>/<version>/...`. Must match the name of the first item in the `versions` list if `version` and `versions` are both specified. Optional if `versions` is specified. Deprecated: use `versions` instead.
  final pulumi.Input<String>? version;
  /// versions is the list of all API versions of the defined custom resource. Optional if `version` is specified. The name of the first item in the `versions` list must match the `version` field if `version` and `versions` are both specified. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  final pulumi.Input<List<CustomResourceDefinitionVersionApiextensionsK8sIoV1beta1>>? versions;

  /// Creates a new [CustomResourceDefinitionSpecApiextensionsK8sIoV1beta1].
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
  CustomResourceDefinitionSpecApiextensionsK8sIoV1beta1({
    this.additionalPrinterColumns,
    this.conversion,
    required this.group,
    required this.names,
    this.preserveUnknownFields,
    required this.scope,
    this.subresources,
    this.validation,
    this.version,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalPrinterColumns': ?pulumi.Input.mapOptionalInputValue<List<CustomResourceColumnDefinitionApiextensionsK8sIoV1beta1>, List<Map<String, dynamic>>>(additionalPrinterColumns, (value) => pulumi.Input.encodeList<CustomResourceColumnDefinitionApiextensionsK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conversion': ?pulumi.Input.mapOptionalInputValue<CustomResourceConversionApiextensionsK8sIoV1beta1, Map<String, dynamic>>(conversion, (value) => value.toMap()),
      'group': group,
      'names': pulumi.Input.mapInputValue<CustomResourceDefinitionNamesApiextensionsK8sIoV1beta1, Map<String, dynamic>>(names, (value) => value.toMap()),
      'preserveUnknownFields': ?preserveUnknownFields,
      'scope': scope,
      'subresources': ?pulumi.Input.mapOptionalInputValue<CustomResourceSubresourcesApiextensionsK8sIoV1beta1, Map<String, dynamic>>(subresources, (value) => value.toMap()),
      'validation': ?pulumi.Input.mapOptionalInputValue<CustomResourceValidationApiextensionsK8sIoV1beta1, Map<String, dynamic>>(validation, (value) => value.toMap()),
      'version': ?version,
      'versions': ?pulumi.Input.mapOptionalInputValue<List<CustomResourceDefinitionVersionApiextensionsK8sIoV1beta1>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<CustomResourceDefinitionVersionApiextensionsK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomResourceDefinitionSpecApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionSpecApiextensionsK8sIoV1beta1(
      additionalPrinterColumns: map['additionalPrinterColumns'] == null ? null : (pulumi.Input.decodeList<CustomResourceColumnDefinitionApiextensionsK8sIoV1beta1>(map['additionalPrinterColumns']!, (value) => CustomResourceColumnDefinitionApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      conversion: map['conversion'] == null ? null : (CustomResourceConversionApiextensionsK8sIoV1beta1.fromMap((map['conversion']! as Map).cast<String, dynamic>())).input(),
      group: (map['group'] as String).input(),
      names: (CustomResourceDefinitionNamesApiextensionsK8sIoV1beta1.fromMap((map['names'] as Map).cast<String, dynamic>())).input(),
      preserveUnknownFields: map['preserveUnknownFields'] == null ? null : (map['preserveUnknownFields']! as bool).input(),
      scope: (map['scope'] as String).input(),
      subresources: map['subresources'] == null ? null : (CustomResourceSubresourcesApiextensionsK8sIoV1beta1.fromMap((map['subresources']! as Map).cast<String, dynamic>())).input(),
      validation: map['validation'] == null ? null : (CustomResourceValidationApiextensionsK8sIoV1beta1.fromMap((map['validation']! as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
      versions: map['versions'] == null ? null : (pulumi.Input.decodeList<CustomResourceDefinitionVersionApiextensionsK8sIoV1beta1>(map['versions']!, (value) => CustomResourceDefinitionVersionApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

