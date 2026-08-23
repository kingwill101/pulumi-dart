// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_nat_address_args_doc}
/// Arguments for getNatAddress.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_nat_address_args_doc}
class GetNatAddressArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> natAddressId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetNatAddressArgs].
  /// [instanceId] Required.
  /// [natAddressId] Required.
  /// [organizationId] Required.
  const GetNatAddressArgs({
    required this.instanceId,
    required this.natAddressId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'natAddressId': natAddressId,
      'organizationId': organizationId,
    };
  }

  factory GetNatAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetNatAddressArgs(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      natAddressId: pulumi.Input.fromValue(map['natAddressId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
