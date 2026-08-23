// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_island_mode_cidr_config_response.dart';

/// BareMetalAdminNetworkConfig specifies the cluster network configuration.
class BareMetalAdminNetworkConfigResponse {
  /// Configuration for Island mode CIDR.
  final pulumi.Input<BareMetalAdminIslandModeCidrConfigResponse> islandModeCidr;

  /// Creates a new [BareMetalAdminNetworkConfigResponse].
  /// [islandModeCidr] Configuration for Island mode CIDR.
  const BareMetalAdminNetworkConfigResponse({
    required this.islandModeCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'islandModeCidr': pulumi.Input.mapInputValue<BareMetalAdminIslandModeCidrConfigResponse, Map<String, dynamic>>(islandModeCidr, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminNetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminNetworkConfigResponse(
      islandModeCidr: pulumi.Input.fromValue(BareMetalAdminIslandModeCidrConfigResponse.fromMap((map['islandModeCidr']! as Map).cast<String, dynamic>())),
    );
  }
}
