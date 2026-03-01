// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_ddos_protection_plan_get_network_ddos_protection_plan_args_doc}
/// Arguments for getNetworkDdosProtectionPlan.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_ddos_protection_plan_get_network_ddos_protection_plan_args_doc}
class GetNetworkDdosProtectionPlanArgs {
  /// The name of the Network DDoS Protection Plan.
  final pulumi.Input<String> name;
  /// The name of the resource group where the Network DDoS Protection Plan exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkDdosProtectionPlanArgs].
  /// [name] The name of the Network DDoS Protection Plan.
  /// [resourceGroupName] The name of the resource group where the Network DDoS Protection Plan exists.
  GetNetworkDdosProtectionPlanArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkDdosProtectionPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkDdosProtectionPlanArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

