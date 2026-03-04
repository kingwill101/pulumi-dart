// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_timeseriesinsights_get_reference_data_set_args_doc}
/// Arguments for getReferenceDataSet.
/// {@endtemplate}
/// {@macro pulumi_timeseriesinsights_get_reference_data_set_args_doc}
class GetReferenceDataSetArgs {
  /// The name of the Time Series Insights environment associated with the specified resource group.
  final pulumi.Input<String> environmentName;

  /// The name of the Time Series Insights reference data set associated with the specified environment.
  final pulumi.Input<String> referenceDataSetName;

  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetReferenceDataSetArgs].
  /// [environmentName] The name of the Time Series Insights environment associated with the specified resource group.
  /// [referenceDataSetName] The name of the Time Series Insights reference data set associated with the specified environment.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetReferenceDataSetArgs({
    required this.environmentName,
    required this.referenceDataSetName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'referenceDataSetName': referenceDataSetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetReferenceDataSetArgs.fromMap(Map<String, dynamic> map) {
    return GetReferenceDataSetArgs(
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      referenceDataSetName: pulumi.Input.fromValue(
        map['referenceDataSetName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
