// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_ftp_allowed_slot_args_doc}
/// The set of arguments for WebAppFtpAllowedSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_ftp_allowed_slot_args_doc}
class WebAppFtpAllowedSlotArgs {
  /// <code>true</code> to allow access to a publishing method; otherwise, <code>false</code>.
  final pulumi.Input<bool> allow;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String> slot;

  /// Creates a new [WebAppFtpAllowedSlotArgs].
  /// [allow] <code>true</code> to allow access to a publishing method; otherwise, <code>false</code>.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Required.
  WebAppFtpAllowedSlotArgs({
    required this.allow,
    this.kind,
    required this.name,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': allow,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory WebAppFtpAllowedSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppFtpAllowedSlotArgs(
      allow: (map['allow'] as bool).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      slot: (map['slot'] as String).input(),
    );
  }
}

