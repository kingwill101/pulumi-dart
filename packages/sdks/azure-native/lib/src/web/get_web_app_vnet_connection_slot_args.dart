// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_vnet_connection_slot_args_doc}
/// Arguments for getWebAppVnetConnectionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_vnet_connection_slot_args_doc}
class GetWebAppVnetConnectionSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will get the named virtual network for the production slot.
  final pulumi.Input<String> slot;
  /// Name of the virtual network.
  final pulumi.Input<String> vnetName;

  /// Creates a new [GetWebAppVnetConnectionSlotArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get the named virtual network for the production slot.
  /// [vnetName] Name of the virtual network.
  GetWebAppVnetConnectionSlotArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> slot,
    required pulumi.Output<String> vnetName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot),
      vnetName = pulumi.Input.asInput<String>(vnetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
      'vnetName': vnetName,
    };
  }

  factory GetWebAppVnetConnectionSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppVnetConnectionSlotArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
      vnetName: pulumi.Output.create<String>(map['vnetName'] as String),
    );
  }
}

