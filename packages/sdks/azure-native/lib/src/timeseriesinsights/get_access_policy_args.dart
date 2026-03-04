// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_timeseriesinsights_get_access_policy_args_doc}
/// Arguments for getAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_timeseriesinsights_get_access_policy_args_doc}
class GetAccessPolicyArgs {
  /// The name of the Time Series Insights access policy associated with the specified environment.
  final pulumi.Input<String> accessPolicyName;

  /// The name of the Time Series Insights environment associated with the specified resource group.
  final pulumi.Input<String> environmentName;

  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccessPolicyArgs].
  /// [accessPolicyName] The name of the Time Series Insights access policy associated with the specified environment.
  /// [environmentName] The name of the Time Series Insights environment associated with the specified resource group.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetAccessPolicyArgs({
    required this.accessPolicyName,
    required this.environmentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': accessPolicyName,
      'environmentName': environmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyArgs(
      accessPolicyName: pulumi.Input.fromValue(
        map['accessPolicyName'] as String,
      ),
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
