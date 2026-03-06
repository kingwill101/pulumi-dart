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
  const GetNetworkDdosProtectionPlanArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkDdosProtectionPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkDdosProtectionPlanArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

