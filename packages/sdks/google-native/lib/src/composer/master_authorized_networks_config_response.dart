// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cidr_block_response.dart';

/// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfigResponse {
  /// Up to 50 external networks that could access Kubernetes master through HTTPS.
  final pulumi.Input<List<CidrBlockResponse>> cidrBlocks;
  /// Whether or not master authorized networks feature is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [MasterAuthorizedNetworksConfigResponse].
  /// [cidrBlocks] Up to 50 external networks that could access Kubernetes master through HTTPS.
  /// [enabled] Whether or not master authorized networks feature is enabled.
  MasterAuthorizedNetworksConfigResponse({
    required this.cidrBlocks,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': pulumi.Input.mapInputValue<List<CidrBlockResponse>, List<Map<String, dynamic>>>(cidrBlocks, (value) => pulumi.Input.encodeList<CidrBlockResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
    };
  }

  factory MasterAuthorizedNetworksConfigResponse.fromMap(Map<String, dynamic> map) {
    return MasterAuthorizedNetworksConfigResponse(
      cidrBlocks: (pulumi.Input.decodeList<CidrBlockResponse>(map['cidrBlocks'], (value) => CidrBlockResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

