// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_registered_asn_args_doc}
/// The set of arguments for RegisteredAsn.
/// {@endtemplate}
/// {@macro pulumi_peering_registered_asn_args_doc}
class RegisteredAsnArgs {
  /// The customer's ASN from which traffic originates.
  final pulumi.Input<int>? asn;
  /// The name of the peering.
  final pulumi.Input<String> peeringName;
  /// The name of the ASN.
  final pulumi.Input<String>? registeredAsnName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RegisteredAsnArgs].
  /// [asn] The customer's ASN from which traffic originates.
  /// [peeringName] The name of the peering.
  /// [registeredAsnName] The name of the ASN.
  /// [resourceGroupName] The name of the resource group.
  const RegisteredAsnArgs({
    this.asn,
    required this.peeringName,
    this.registeredAsnName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'peeringName': peeringName,
      'registeredAsnName': ?registeredAsnName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RegisteredAsnArgs.fromMap(Map<String, dynamic> map) {
    return RegisteredAsnArgs(
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peeringName: pulumi.Input.fromValue(map['peeringName'] as String),
      registeredAsnName: (() { final guardedValue = map['registeredAsnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

