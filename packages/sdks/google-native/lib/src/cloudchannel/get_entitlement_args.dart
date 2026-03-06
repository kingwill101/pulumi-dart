// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudchannel_v1_get_entitlement_args_doc}
/// Arguments for getEntitlement.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_get_entitlement_args_doc}
class GetEntitlementArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> customerId;
  final pulumi.Input<String> entitlementId;

  /// Creates a new [GetEntitlementArgs].
  /// [accountId] Required.
  /// [customerId] Required.
  /// [entitlementId] Required.
  const GetEntitlementArgs({
    required this.accountId,
    required this.customerId,
    required this.entitlementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'customerId': customerId,
      'entitlementId': entitlementId,
    };
  }

  factory GetEntitlementArgs.fromMap(Map<String, dynamic> map) {
    return GetEntitlementArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      customerId: pulumi.Input.fromValue(map['customerId'] as String),
      entitlementId: pulumi.Input.fromValue(map['entitlementId'] as String),
    );
  }
}

