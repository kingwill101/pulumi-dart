// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_certificate_location.dart';

/// {@template pulumi_web_web_app_public_certificate_slot_args_doc}
/// The set of arguments for WebAppPublicCertificateSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_public_certificate_slot_args_doc}
class WebAppPublicCertificateSlotArgs {
  /// Public Certificate byte array
  final pulumi.Input<String>? blob;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Public Certificate Location
  final pulumi.Input<PublicCertificateLocation>? publicCertificateLocation;
  /// Public certificate name.
  final pulumi.Input<String>? publicCertificateName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API the named binding for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [WebAppPublicCertificateSlotArgs].
  /// [blob] Public Certificate byte array
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [publicCertificateLocation] Public Certificate Location
  /// [publicCertificateName] Public certificate name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API the named binding for the production slot.
  const WebAppPublicCertificateSlotArgs({
    this.blob,
    this.kind,
    required this.name,
    this.publicCertificateLocation,
    this.publicCertificateName,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blob': ?blob,
      'kind': ?kind,
      'name': name,
      'publicCertificateLocation': ?pulumi.Input.mapOptionalInputValue<PublicCertificateLocation, String>(publicCertificateLocation, (value) => value.wireValue),
      'publicCertificateName': ?publicCertificateName,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory WebAppPublicCertificateSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppPublicCertificateSlotArgs(
      blob: (() { final guardedValue = map['blob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      publicCertificateLocation: (() { final guardedValue = map['publicCertificateLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicCertificateLocation.fromValue(guardedValue as String)); })(),
      publicCertificateName: (() { final guardedValue = map['publicCertificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
