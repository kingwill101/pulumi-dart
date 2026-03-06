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
  /// name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/&lt;group&gt;/&lt;version&gt;/...` if `served` is true.
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
  /// [name] name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/&lt;group&gt;/&lt;version&gt;/...` if `served` is true.
  /// [schema] schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
  /// [selectableFields] selectableFields specifies paths to fields that may be used as field selectors. A maximum of 8 selectable fields are allowed. See https://kubernetes.io/docs/concepts/overview/working-with-objects/field-selectors
  /// [served] served is a flag enabling/disabling this version from being served via REST APIs
  /// [storage] storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
  /// [subresources] subresources specify what subresources this version of the defined custom resource have.
  const CustomResourceDefinitionVersionPatch({
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
      additionalPrinterColumns: (() { final guardedValue = map['additionalPrinterColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomResourceColumnDefinitionPatch>(guardedValue, (value) => CustomResourceColumnDefinitionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deprecated: (() { final guardedValue = map['deprecated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deprecationWarning: (() { final guardedValue = map['deprecationWarning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomResourceValidationPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selectableFields: (() { final guardedValue = map['selectableFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SelectableFieldPatch>(guardedValue, (value) => SelectableFieldPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      served: (() { final guardedValue = map['served']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subresources: (() { final guardedValue = map['subresources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomResourceSubresourcesPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

