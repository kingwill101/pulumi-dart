// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_slot_virtual_network_swift_connection_slot_virtual_network_swift_connection_args_doc}
/// The set of arguments for SlotVirtualNetworkSwiftConnection.
/// {@endtemplate}
/// {@macro pulumi_appservice_slot_virtual_network_swift_connection_slot_virtual_network_swift_connection_args_doc}
class SlotVirtualNetworkSwiftConnectionArgs {
  /// The ID of the App Service or Function App to associate to the VNet. Changing this forces a new resource to be created.
  final pulumi.Input<String> appServiceId;
  /// The name of the App Service Slot or Function App Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String> slotName;
  /// The ID of the subnet the app service will be associated to (the subnet must have a `serviceDelegation` configured for `Microsoft.Web/serverFarms`).
  final pulumi.Input<String> subnetId;

  /// Creates a new [SlotVirtualNetworkSwiftConnectionArgs].
  /// [appServiceId] The ID of the App Service or Function App to associate to the VNet. Changing this forces a new resource to be created.
  /// [slotName] The name of the App Service Slot or Function App Slot. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the subnet the app service will be associated to (the subnet must have a `serviceDelegation` configured for `Microsoft.Web/serverFarms`).
  const SlotVirtualNetworkSwiftConnectionArgs({
    required this.appServiceId,
    required this.slotName,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceId': appServiceId,
      'slotName': slotName,
      'subnetId': subnetId,
    };
  }

  factory SlotVirtualNetworkSwiftConnectionArgs.fromMap(Map<String, dynamic> map) {
    return SlotVirtualNetworkSwiftConnectionArgs(
      appServiceId: pulumi.Input.fromValue(map['appServiceId'] as String),
      slotName: pulumi.Input.fromValue(map['slotName'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
