// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_site_certificate_slot_args_doc}
/// Arguments for getSiteCertificateSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_site_certificate_slot_args_doc}
class GetSiteCertificateSlotArgs {
  /// Name of the certificate.
  final pulumi.Input<String> certificateName;
  /// Name of the site.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will create a binding for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetSiteCertificateSlotArgs].
  /// [certificateName] Name of the certificate.
  /// [name] Name of the site.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will create a binding for the production slot.
  GetSiteCertificateSlotArgs({
    required this.certificateName,
    required this.name,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory GetSiteCertificateSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetSiteCertificateSlotArgs(
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}

