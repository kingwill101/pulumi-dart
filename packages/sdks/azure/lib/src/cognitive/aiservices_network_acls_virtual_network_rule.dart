// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AIServicesNetworkAclsVirtualNetworkRule {
  /// Whether to ignore a missing Virtual Network Service Endpoint or not. Default to `false`.
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;
  /// The ID of the subnet which should be able to access this AI Services Account.
  final pulumi.Input<String> subnetId;

  /// Creates a new [AIServicesNetworkAclsVirtualNetworkRule].
  /// [ignoreMissingVnetServiceEndpoint] Whether to ignore a missing Virtual Network Service Endpoint or not. Default to `false`.
  /// [subnetId] The ID of the subnet which should be able to access this AI Services Account.
  AIServicesNetworkAclsVirtualNetworkRule({
    this.ignoreMissingVnetServiceEndpoint,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'subnetId': subnetId,
    };
  }

  factory AIServicesNetworkAclsVirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return AIServicesNetworkAclsVirtualNetworkRule(
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : (map['ignoreMissingVnetServiceEndpoint'] as bool).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

