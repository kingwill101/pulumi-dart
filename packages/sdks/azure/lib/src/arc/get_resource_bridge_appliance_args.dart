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

  factory GetResourceBridgeApplianceArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceBridgeApplianceArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

