// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_column_definition_patch.dart';
import 'custom_resource_subresources_patch.dart';
import 'custom_resource_validation_patch.dart';
import 'selectable_field_patch.dart';

/// CustomResourceDefinitionVersion describes a version for CRD.
class CustomResourceDefinitionVersionPatch {
  /// additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.
  final pulumi.Input<List<CustomResourceColumnDefinitionPatch>>? additionalPrinterColumns;
  /// deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
  final pulumi.Input<bool>? deprecated;
  /// deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
  final pulumi.Input<String>? deprecationWarning;
  /// name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true.
  final pulumi.Input<String>? name;
  /// schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
  final pulumi.Input<CustomResourceValidationPatch>? schema;
  /// selectableFields specifies paths to fields that may be used as field selectors. A maximum of 8 selectable fields are allowed. See https://kubernetes.io/docs/concepts/overview/working-with-objects/field-selectors
  final pulumi.Input<List<SelectableFieldPatch>>? selectableFields;
  /// served is a flag enabling/disabling this version from being served via REST APIs
  final pulumi.Input<bool>? served;
  /// storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
  final pulumi.Input<bool>? storage;
  /// subresources specify what subresources this version of the defined custom resource have.
  final pulumi.Input<CustomResourceSubresourcesPatch>? subresources;

  /// Creates a new [CustomResourceDefinitionVersionPatch].
  /// [additionalPrinterColumns] additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.
  /// [deprecated] deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
  /// [deprecationWarning] deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
  /// [name] name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true.
  /// [schema] schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
  /// [selectableFields] selectableFields specifies paths to fields that may be used as field selectors. A maximum of 8 selectable fields are allowed. See https://kubernetes.io/docs/concepts/overview/working-with-objects/field-selectors
  /// [served] served is a flag enabling/disabling this version from being served via REST APIs
  /// [storage] storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
  /// [subresources] subresources specify what subresources this version of the defined custom resource have.
  CustomResourceDefinitionVersionPatch({
    this.additionalPrinterColumns,
    this.deprecated,
    this.deprecationWarning,
    this.name,
    this.schema,
    this.selectableFields,
    this.served,
    this.storage,
    this.subresources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalPrinterColumns': ?pulumi.Input.mapOptionalInputValue<List<CustomResourceColumnDefinitionPatch>, List<Map<String, dynamic>>>(additionalPrinterColumns, (value) => pulumi.Input.encodeList<CustomResourceColumnDefinitionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deprecated': ?deprecated,
      'deprecationWarning': ?deprecationWarning,
      'name': ?name,
      'schema': ?pulumi.Input.mapOptionalInputValue<CustomResourceValidationPatch, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'selectableFields': ?pulumi.Input.mapOptionalInputValue<List<SelectableFieldPatch>, List<Map<String, dynamic>>>(selectableFields, (value) => pulumi.Input.encodeList<SelectableFieldPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'served': ?served,
      'storage': ?storage,
      'subresources': ?pulumi.Input.mapOptionalInputValue<CustomResourceSubresourcesPatch, Map<String, dynamic>>(subresources, (value) => value.toMap()),
    };
  }

  factory CustomResourceDefinitionVersionPatch.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionVersionPatch(
      additionalPrinterColumns: map['additionalPrinterColumns'] == null ? null : (pulumi.Input.decodeList<CustomResourceColumnDefinitionPatch>(map['additionalPrinterColumns']!, (value) => CustomResourceColumnDefinitionPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deprecated: map['deprecated'] == null ? null : (map['deprecated']! as bool).input(),
      deprecationWarning: map['deprecationWarning'] == null ? null : (map['deprecationWarning']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      schema: map['schema'] == null ? null : (CustomResourceValidationPatch.fromMap((map['schema']! as Map).cast<String, dynamic>())).input(),
      selectableFields: map['selectableFields'] == null ? null : (pulumi.Input.decodeList<SelectableFieldPatch>(map['selectableFields']!, (value) => SelectableFieldPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      served: map['served'] == null ? null : (map['served']! as bool).input(),
      storage: map['storage'] == null ? null : (map['storage']! as bool).input(),
      subresources: map['subresources'] == null ? null : (CustomResourceSubresourcesPatch.fromMap((map['subresources']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

