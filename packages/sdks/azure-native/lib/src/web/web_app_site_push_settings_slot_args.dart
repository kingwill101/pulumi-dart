// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_site_push_settings_slot_args_doc}
/// The set of arguments for WebAppSitePushSettingsSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_site_push_settings_slot_args_doc}
class WebAppSitePushSettingsSlotArgs {
  /// Gets or sets a JSON string containing a list of dynamic tags that will be evaluated from user claims in the push registration endpoint.
  final pulumi.Input<String?>? dynamicTagsJson;
  /// Gets or sets a flag indicating whether the Push endpoint is enabled.
  final pulumi.Input<bool> isPushEnabled;
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. By default, this API returns the production slot.
  final pulumi.Input<String> slot;
  /// Gets or sets a JSON string containing a list of tags that are whitelisted for use by the push registration endpoint.
  final pulumi.Input<String?>? tagWhitelistJson;
  /// Gets or sets a JSON string containing a list of tags that require user authentication to be used in the push registration endpoint.
  /// Tags can consist of alphanumeric characters and the following:
  /// '_', '@', '#', '.', ':', '-'.
  /// Validation should be performed at the PushRequestHandler.
  final pulumi.Input<String?>? tagsRequiringAuth;

  /// Creates a new [WebAppSitePushSettingsSlotArgs].
  /// [dynamicTagsJson] Gets or sets a JSON string containing a list of dynamic tags that will be evaluated from user claims in the push registration endpoint.
  /// [isPushEnabled] Gets or sets a flag indicating whether the Push endpoint is enabled.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [slot] Name of the deployment slot. By default, this API returns the production slot.
  /// [tagWhitelistJson] Gets or sets a JSON string containing a list of tags that are whitelisted for use by the push registration endpoint.
  /// [tagsRequiringAuth] Gets or sets a JSON string containing a list of tags that require user authentication to be used in the push registration endpoint.
  const WebAppSitePushSettingsSlotArgs({
    this.dynamicTagsJson,
    required this.isPushEnabled,
    this.kind,
    required this.name,
    required this.resourceGroupName,
    required this.slot,
    this.tagWhitelistJson,
    this.tagsRequiringAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicTagsJson': ?dynamicTagsJson,
      'isPushEnabled': isPushEnabled,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
      'tagWhitelistJson': ?tagWhitelistJson,
      'tagsRequiringAuth': ?tagsRequiringAuth,
    };
  }

  factory WebAppSitePushSettingsSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppSitePushSettingsSlotArgs(
      dynamicTagsJson: (() { final guardedValue = map['dynamicTagsJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPushEnabled: pulumi.Input.fromValue(map['isPushEnabled'] as bool),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
      tagWhitelistJson: (() { final guardedValue = map['tagWhitelistJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagsRequiringAuth: (() { final guardedValue = map['tagsRequiringAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
