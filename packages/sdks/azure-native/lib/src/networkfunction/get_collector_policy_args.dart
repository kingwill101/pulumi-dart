// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkfunction_get_collector_policy_args_doc}
/// Arguments for getCollectorPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkfunction_get_collector_policy_args_doc}
class GetCollectorPolicyArgs {
  /// Azure Traffic Collector name
  final pulumi.Input<String> azureTrafficCollectorName;
  /// Collector Policy Name
  final pulumi.Input<String> collectorPolicyName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCollectorPolicyArgs].
  /// [azureTrafficCollectorName] Azure Traffic Collector name
  /// [collectorPolicyName] Collector Policy Name
  /// [resourceGroupName] The name of the resource group.
  GetCollectorPolicyArgs({
    required pulumi.Output<String> azureTrafficCollectorName,
    required pulumi.Output<String> collectorPolicyName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      azureTrafficCollectorName = pulumi.Input.asInput<String>(azureTrafficCollectorName),
      collectorPolicyName = pulumi.Input.asInput<String>(collectorPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureTrafficCollectorName': azureTrafficCollectorName,
      'collectorPolicyName': collectorPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCollectorPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetCollectorPolicyArgs(
      azureTrafficCollectorName: pulumi.Output.create<String>(map['azureTrafficCollectorName'] as String),
      collectorPolicyName: pulumi.Output.create<String>(map['collectorPolicyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

