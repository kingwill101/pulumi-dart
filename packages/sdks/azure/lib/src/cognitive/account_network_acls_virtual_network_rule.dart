// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountNetworkAclsVirtualNetworkRule {
  /// Whether ignore missing vnet service endpoint or not. Defaults to `false`.
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;
  /// The ID of the subnet which should be able to access this Cognitive Account.
  final pulumi.Input<String> subnetId;

  /// Creates a new [AccountNetworkAclsVirtualNetworkRule].
  /// [ignoreMissingVnetServiceEndpoint] Whether ignore missing vnet service endpoint or not. Defaults to `false`.
  /// [subnetId] The ID of the subnet which should be able to access this Cognitive Account.
  const AccountNetworkAclsVirtualNetworkRule({
    this.ignoreMissingVnetServiceEndpoint,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'subnetId': subnetId,
    };
  }

  factory AccountNetworkAclsVirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return AccountNetworkAclsVirtualNetworkRule(
      ignoreMissingVnetServiceEndpoint: (() { final guardedValue = map['ignoreMissingVnetServiceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
