// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_site_extension_slot_args_doc}
/// Arguments for getWebAppSiteExtensionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_site_extension_slot_args_doc}
class GetWebAppSiteExtensionSlotArgs {
  /// Site name.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Site extension name.
  final pulumi.Input<String> siteExtensionId;
  /// Name of the deployment slot. If a slot is not specified, the API uses the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppSiteExtensionSlotArgs].
  /// [name] Site name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [siteExtensionId] Site extension name.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API uses the production slot.
  GetWebAppSiteExtensionSlotArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> siteExtensionId,
    required pulumi.Output<String> slot,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteExtensionId = pulumi.Input.asInput<String>(siteExtensionId),
      slot = pulumi.Input.asInput<String>(slot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'siteExtensionId': siteExtensionId,
      'slot': slot,
    };
  }

  factory GetWebAppSiteExtensionSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppSiteExtensionSlotArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteExtensionId: pulumi.Output.create<String>(map['siteExtensionId'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
    );
  }
}

