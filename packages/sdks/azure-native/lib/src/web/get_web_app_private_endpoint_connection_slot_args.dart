// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_private_endpoint_connection_slot_args_doc}
/// Arguments for getWebAppPrivateEndpointConnectionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_private_endpoint_connection_slot_args_doc}
class GetWebAppPrivateEndpointConnectionSlotArgs {
  /// Name of the site.
  final pulumi.Input<String> name;
  /// Name of the private endpoint connection.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the site deployment slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppPrivateEndpointConnectionSlotArgs].
  /// [name] Name of the site.
  /// [privateEndpointConnectionName] Name of the private endpoint connection.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the site deployment slot.
  const GetWebAppPrivateEndpointConnectionSlotArgs({
    required this.name,
    required this.privateEndpointConnectionName,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory GetWebAppPrivateEndpointConnectionSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppPrivateEndpointConnectionSlotArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      privateEndpointConnectionName: pulumi.Input.fromValue(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}

