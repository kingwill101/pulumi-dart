// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arc_get_resource_bridge_appliance_get_resource_bridge_appliance_args_doc}
/// Arguments for getResourceBridgeAppliance.
/// {@endtemplate}
/// {@macro pulumi_arc_get_resource_bridge_appliance_get_resource_bridge_appliance_args_doc}
class GetResourceBridgeApplianceArgs {
  /// The name of this Arc Resource Bridge Appliance.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Arc Resource Bridge Appliance exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetResourceBridgeApplianceArgs].
  /// [name] The name of this Arc Resource Bridge Appliance.
  /// [resourceGroupName] The name of the Resource Group where the Arc Resource Bridge Appliance exists.
  GetResourceBridgeApplianceArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetResourceBridgeApplianceArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceBridgeApplianceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

