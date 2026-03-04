// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_public_certificate_slot_args_doc}
/// Arguments for getWebAppPublicCertificateSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_public_certificate_slot_args_doc}
class GetWebAppPublicCertificateSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;

  /// Public certificate name.
  final pulumi.Input<String> publicCertificateName;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the deployment slot. If a slot is not specified, the API the named binding for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppPublicCertificateSlotArgs].
  /// [name] Name of the app.
  /// [publicCertificateName] Public certificate name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API the named binding for the production slot.
  GetWebAppPublicCertificateSlotArgs({
    required this.name,
    required this.publicCertificateName,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicCertificateName': publicCertificateName,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory GetWebAppPublicCertificateSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppPublicCertificateSlotArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      publicCertificateName: pulumi.Input.fromValue(
        map['publicCertificateName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
