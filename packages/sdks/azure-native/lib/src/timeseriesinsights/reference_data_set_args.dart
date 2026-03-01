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
  ReferenceDataSetArgs({
    pulumi.Output<String>? dataStringComparisonBehavior,
    required pulumi.Output<String> environmentName,
    required pulumi.Output<List<ReferenceDataSetKeyProperty>> keyProperties,
    pulumi.Output<String>? location,
    pulumi.Output<String>? referenceDataSetName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dataStringComparisonBehavior = pulumi.Input.asOptionalInput<String>(dataStringComparisonBehavior),
      environmentName = pulumi.Input.asInput<String>(environmentName),
      keyProperties = pulumi.Input.asInput<List<ReferenceDataSetKeyProperty>>(keyProperties),
      location = pulumi.Input.asOptionalInput<String>(location),
      referenceDataSetName = pulumi.Input.asOptionalInput<String>(referenceDataSetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      dataStringComparisonBehavior: map['dataStringComparisonBehavior'] == null ? null : pulumi.Output.create<String>(map['dataStringComparisonBehavior'] as String),
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      keyProperties: pulumi.Output.create<List<ReferenceDataSetKeyProperty>>(pulumi.Input.decodeList<ReferenceDataSetKeyProperty>(map['keyProperties'], (value) => ReferenceDataSetKeyProperty.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      referenceDataSetName: map['referenceDataSetName'] == null ? null : pulumi.Output.create<String>(map['referenceDataSetName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

