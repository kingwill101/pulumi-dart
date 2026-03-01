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
  RegisteredAsnArgs({
    pulumi.Output<int>? asn,
    required pulumi.Output<String> peeringName,
    pulumi.Output<String>? registeredAsnName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      asn = pulumi.Input.asOptionalInput<int>(asn),
      peeringName = pulumi.Input.asInput<String>(peeringName),
      registeredAsnName = pulumi.Input.asOptionalInput<String>(registeredAsnName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      asn: map['asn'] == null ? null : pulumi.Output.create<int>(map['asn'] as int),
      peeringName: pulumi.Output.create<String>(map['peeringName'] as String),
      registeredAsnName: map['registeredAsnName'] == null ? null : pulumi.Output.create<String>(map['registeredAsnName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

