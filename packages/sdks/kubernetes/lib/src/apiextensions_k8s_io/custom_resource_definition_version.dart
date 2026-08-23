// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_column_definition.dart';
import 'custom_resource_subresources.dart';
import 'custom_resource_validation.dart';
import 'selectable_field.dart';

/// CustomResourceDefinitionVersion describes a version for CRD.
class CustomResourceDefinitionVersion {
  /// additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.
  final pulumi.Input<List<CustomResourceColumnDefinition>>? additionalPrinterColumns;
  /// deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
  final pulumi.Input<bool>? deprecated;
  /// deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
  final pulumi.Input<String>? deprecationWarning;
  /// name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/&lt;group&gt;/&lt;version&gt;/...` if `served` is true.
  final pulumi.Input<String> name;
  /// schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
  final pulumi.Input<CustomResourceValidation>? schema;
  /// selectableFields specifies paths to fields that may be used as field selectors. A maximum of 8 selectable fields are allowed. See https://kubernetes.io/docs/concepts/overview/working-with-objects/field-selectors
  final pulumi.Input<List<SelectableField>>? selectableFields;
  /// served is a flag enabling/disabling this version from being served via REST APIs
  final pulumi.Input<bool> served;
  /// storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
  final pulumi.Input<bool> storage;
  /// subresources specify what subresources this version of the defined custom resource have.
  final pulumi.Input<CustomResourceSubresources>? subresources;

  /// Creates a new [CustomResourceDefinitionVersion].
  /// [additionalPrinterColumns] additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.
  /// [deprecated] deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
  /// [deprecationWarning] deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
  /// [name] name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/&lt;group&gt;/&lt;version&gt;/...` if `served` is true.
  /// [schema] schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
  /// [selectableFields] selectableFields specifies paths to fields that may be used as field selectors. A maximum of 8 selectable fields are allowed. See https://kubernetes.io/docs/concepts/overview/working-with-objects/field-selectors
  /// [served] served is a flag enabling/disabling this version from being served via REST APIs
  /// [storage] storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
  /// [subresources] subresources specify what subresources this version of the defined custom resource have.
  const CustomResourceDefinitionVersion({
    this.additionalPrinterColumns,
    this.deprecated,
    this.deprecationWarning,
    required this.name,
    this.schema,
    this.selectableFields,
    required this.served,
    required this.storage,
    this.subresources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalPrinterColumns': ?pulumi.Input.mapOptionalInputValue<List<CustomResourceColumnDefinition>, List<Map<String, dynamic>>>(additionalPrinterColumns, (value) => pulumi.Input.encodeList<CustomResourceColumnDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deprecated': ?deprecated,
      'deprecationWarning': ?deprecationWarning,
      'name': name,
      'schema': ?pulumi.Input.mapOptionalInputValue<CustomResourceValidation, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'selectableFields': ?pulumi.Input.mapOptionalInputValue<List<SelectableField>, List<Map<String, dynamic>>>(selectableFields, (value) => pulumi.Input.encodeList<SelectableField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'served': served,
      'storage': storage,
      'subresources': ?pulumi.Input.mapOptionalInputValue<CustomResourceSubresources, Map<String, dynamic>>(subresources, (value) => value.toMap()),
    };
  }

  factory CustomResourceDefinitionVersion.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionVersion(
      additionalPrinterColumns: (() { final guardedValue = map['additionalPrinterColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomResourceColumnDefinition>(guardedValue, (value) => CustomResourceColumnDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deprecated: (() { final guardedValue = map['deprecated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deprecationWarning: (() { final guardedValue = map['deprecationWarning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomResourceValidation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selectableFields: (() { final guardedValue = map['selectableFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SelectableField>(guardedValue, (value) => SelectableField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      served: pulumi.Input.fromValue(map['served'] as bool),
      storage: pulumi.Input.fromValue(map['storage'] as bool),
      subresources: (() { final guardedValue = map['subresources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomResourceSubresources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
