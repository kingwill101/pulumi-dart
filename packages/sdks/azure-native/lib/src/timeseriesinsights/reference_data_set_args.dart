// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_data_set_key_property.dart';

/// {@template pulumi_timeseriesinsights_reference_data_set_args_doc}
/// The set of arguments for ReferenceDataSet.
/// {@endtemplate}
/// {@macro pulumi_timeseriesinsights_reference_data_set_args_doc}
class ReferenceDataSetArgs {
  /// The reference data set key comparison behavior can be set using this property. By default, the value is 'Ordinal' - which means case sensitive key comparison will be performed while joining reference data with events or while adding new reference data. When 'OrdinalIgnoreCase' is set, case insensitive comparison will be used.
  final pulumi.Input<String>? dataStringComparisonBehavior;
  /// The name of the Time Series Insights environment associated with the specified resource group.
  final pulumi.Input<String> environmentName;
  /// The list of key properties for the reference data set.
  final pulumi.Input<List<ReferenceDataSetKeyProperty>> keyProperties;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// Name of the reference data set.
  final pulumi.Input<String>? referenceDataSetName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Key-value pairs of additional properties for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ReferenceDataSetArgs].
  /// [dataStringComparisonBehavior] The reference data set key comparison behavior can be set using this property. By default, the value is 'Ordinal' - which means case sensitive key comparison will be performed while joining reference data with events or while adding new reference data. When 'OrdinalIgnoreCase' is set, case insensitive comparison will be used.
  /// [environmentName] The name of the Time Series Insights environment associated with the specified resource group.
  /// [keyProperties] The list of key properties for the reference data set.
  /// [location] The location of the resource.
  /// [referenceDataSetName] Name of the reference data set.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [tags] Key-value pairs of additional properties for the resource.
  const ReferenceDataSetArgs({
    this.dataStringComparisonBehavior,
    required this.environmentName,
    required this.keyProperties,
    this.location,
    this.referenceDataSetName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStringComparisonBehavior': ?dataStringComparisonBehavior,
      'environmentName': environmentName,
      'keyProperties': pulumi.Input.mapInputValue<List<ReferenceDataSetKeyProperty>, List<Map<String, dynamic>>>(keyProperties, (value) => pulumi.Input.encodeList<ReferenceDataSetKeyProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'referenceDataSetName': ?referenceDataSetName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ReferenceDataSetArgs.fromMap(Map<String, dynamic> map) {
    return ReferenceDataSetArgs(
      dataStringComparisonBehavior: (() { final guardedValue = map['dataStringComparisonBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      keyProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<ReferenceDataSetKeyProperty>(map['keyProperties']!, (value) => ReferenceDataSetKeyProperty.fromMap((value as Map).cast<String, dynamic>()))),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceDataSetName: (() { final guardedValue = map['referenceDataSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
