// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_site_extension_slot_args_doc}
/// The set of arguments for WebAppSiteExtensionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_site_extension_slot_args_doc}
class WebAppSiteExtensionSlotArgs {
  /// Site name.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Site extension name.
  final pulumi.Input<String>? siteExtensionId;
  /// Name of the deployment slot. If a slot is not specified, the API uses the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [WebAppSiteExtensionSlotArgs].
  /// [name] Site name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [siteExtensionId] Site extension name.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API uses the production slot.
  WebAppSiteExtensionSlotArgs({
    required this.name,
    required this.resourceGroupName,
    this.siteExtensionId,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'siteExtensionId': ?siteExtensionId,
      'slot': slot,
    };
  }

  factory WebAppSiteExtensionSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppSiteExtensionSlotArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      siteExtensionId: map['siteExtensionId'] == null ? null : (map['siteExtensionId'] as String).input(),
      slot: (map['slot'] as String).input(),
    );
  }
}

