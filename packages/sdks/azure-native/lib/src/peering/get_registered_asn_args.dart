// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_get_registered_asn_args_doc}
/// Arguments for getRegisteredAsn.
/// {@endtemplate}
/// {@macro pulumi_peering_get_registered_asn_args_doc}
class GetRegisteredAsnArgs {
  /// The name of the peering.
  final pulumi.Input<String> peeringName;
  /// The name of the registered ASN.
  final pulumi.Input<String> registeredAsnName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRegisteredAsnArgs].
  /// [peeringName] The name of the peering.
  /// [registeredAsnName] The name of the registered ASN.
  /// [resourceGroupName] The name of the resource group.
  GetRegisteredAsnArgs({
    required pulumi.Output<String> peeringName,
    required pulumi.Output<String> registeredAsnName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      peeringName = pulumi.Input.asInput<String>(peeringName),
      registeredAsnName = pulumi.Input.asInput<String>(registeredAsnName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringName': peeringName,
      'registeredAsnName': registeredAsnName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRegisteredAsnArgs.fromMap(Map<String, dynamic> map) {
    return GetRegisteredAsnArgs(
      peeringName: pulumi.Output.create<String>(map['peeringName'] as String),
      registeredAsnName: pulumi.Output.create<String>(map['registeredAsnName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

