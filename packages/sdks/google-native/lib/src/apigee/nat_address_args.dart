// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_nat_address_args_doc}
/// The set of arguments for NatAddress.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_nat_address_args_doc}
class NatAddressArgs {
  final pulumi.Input<String> instanceId;
  /// Resource ID of the NAT address.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Creates a new [NatAddressArgs].
  /// [instanceId] Required.
  /// [name] Resource ID of the NAT address.
  /// [organizationId] Required.
  NatAddressArgs({
    required this.instanceId,
    this.name,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'name': ?name,
      'organizationId': organizationId,
    };
  }

  factory NatAddressArgs.fromMap(Map<String, dynamic> map) {
    return NatAddressArgs(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

