// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayDnsDestinationIpsListResult {
  final pulumi.Input<String> backupIp;
  final pulumi.Input<String> id;
  /// Specify whether the pair shared across multiple accounts (shared) or available exclusively to this account. Non-shared pairs can contain Cloudflare-owned IPs (dedicated) or customer-provided IPs (byoip).
  /// Available values: "shared", "dedicated", "byoip".
  final pulumi.Input<String> pairType;
  final pulumi.Input<String> primaryIp;

  /// Creates a new [GetZeroTrustGatewayDnsDestinationIpsListResult].
  /// [backupIp] Required.
  /// [id] Required.
  /// [pairType] Specify whether the pair shared across multiple accounts (shared) or available exclusively to this account. Non-shared pairs can contain Cloudflare-owned IPs (dedicated) or customer-provided IPs (byoip).
  /// [primaryIp] Required.
  const GetZeroTrustGatewayDnsDestinationIpsListResult({
    required this.backupIp,
    required this.id,
    required this.pairType,
    required this.primaryIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupIp': backupIp,
      'id': id,
      'pairType': pairType,
      'primaryIp': primaryIp,
    };
  }

  factory GetZeroTrustGatewayDnsDestinationIpsListResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayDnsDestinationIpsListResult(
      backupIp: pulumi.Input.fromValue(map['backupIp'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      pairType: pulumi.Input.fromValue(map['pairType'] as String),
      primaryIp: pulumi.Input.fromValue(map['primaryIp'] as String),
    );
  }
}
