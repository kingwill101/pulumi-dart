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
    required pulumi.Output<String> name,
    required pulumi.Output<String> publicCertificateName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> slot,
  }) :
      name = pulumi.Input.asInput<String>(name),
      publicCertificateName = pulumi.Input.asInput<String>(publicCertificateName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot);

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
      name: pulumi.Output.create<String>(map['name'] as String),
      publicCertificateName: pulumi.Output.create<String>(map['publicCertificateName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
    );
  }
}

