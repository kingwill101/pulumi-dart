// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_site_container_slot_args_doc}
/// Arguments for getWebAppSiteContainerSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_site_container_slot_args_doc}
class GetWebAppSiteContainerSlotArgs {
  /// Site Container Name
  final pulumi.Input<String> containerName;

  /// Name of the app.
  final pulumi.Input<String> name;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the deployment slot. If a slot is not specified, the API will get the Site Container for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppSiteContainerSlotArgs].
  /// [containerName] Site Container Name
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get the Site Container for the production slot.
  GetWebAppSiteContainerSlotArgs({
    required this.containerName,
    required this.name,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory GetWebAppSiteContainerSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppSiteContainerSlotArgs(
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
