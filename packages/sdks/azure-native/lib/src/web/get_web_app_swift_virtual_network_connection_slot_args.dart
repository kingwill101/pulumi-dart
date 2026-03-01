// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_swift_virtual_network_connection_slot_args_doc}
/// Arguments for getWebAppSwiftVirtualNetworkConnectionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_swift_virtual_network_connection_slot_args_doc}
class GetWebAppSwiftVirtualNetworkConnectionSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will get a gateway for the production slot's Virtual Network.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppSwiftVirtualNetworkConnectionSlotArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get a gateway for the production slot's Virtual Network.
  GetWebAppSwiftVirtualNetworkConnectionSlotArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> slot,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory GetWebAppSwiftVirtualNetworkConnectionSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppSwiftVirtualNetworkConnectionSlotArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
    );
  }
}

