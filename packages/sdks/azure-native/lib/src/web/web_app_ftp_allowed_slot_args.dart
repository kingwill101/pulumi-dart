// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_ftp_allowed_slot_args_doc}
/// The set of arguments for WebAppFtpAllowedSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_ftp_allowed_slot_args_doc}
class WebAppFtpAllowedSlotArgs {
  /// &lt;code&gt;true&lt;/code&gt; to allow access to a publishing method; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool> allow;
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String> slot;

  /// Creates a new [WebAppFtpAllowedSlotArgs].
  /// [allow] &lt;code&gt;true&lt;/code&gt; to allow access to a publishing method; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [slot] Required.
  const WebAppFtpAllowedSlotArgs({
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
      allow: pulumi.Input.fromValue(map['allow'] as bool),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
