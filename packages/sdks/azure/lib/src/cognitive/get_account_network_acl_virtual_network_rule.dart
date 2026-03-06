// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountNetworkAclVirtualNetworkRule {
  /// Whether missing vnet service endpoint is ignored or not.
  final pulumi.Input<bool> ignoreMissingVnetServiceEndpoint;
  /// The ID of the subnet which is able to access this Cognitive Services Account.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetAccountNetworkAclVirtualNetworkRule].
  /// [ignoreMissingVnetServiceEndpoint] Whether missing vnet service endpoint is ignored or not.
  /// [subnetId] The ID of the subnet which is able to access this Cognitive Services Account.
  const GetAccountNetworkAclVirtualNetworkRule({
    required this.ignoreMissingVnetServiceEndpoint,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ignoreMissingVnetServiceEndpoint,
      'subnetId': subnetId,
    };
  }

  factory GetAccountNetworkAclVirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return GetAccountNetworkAclVirtualNetworkRule(
      ignoreMissingVnetServiceEndpoint: pulumi.Input.fromValue(map['ignoreMissingVnetServiceEndpoint'] as bool),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

