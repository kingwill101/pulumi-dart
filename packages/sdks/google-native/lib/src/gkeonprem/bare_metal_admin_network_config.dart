// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_island_mode_cidr_config.dart';

/// BareMetalAdminNetworkConfig specifies the cluster network configuration.
class BareMetalAdminNetworkConfig {
  /// Configuration for Island mode CIDR.
  final pulumi.Input<BareMetalAdminIslandModeCidrConfig>? islandModeCidr;

  /// Creates a new [BareMetalAdminNetworkConfig].
  /// [islandModeCidr] Configuration for Island mode CIDR.
  BareMetalAdminNetworkConfig({
    this.islandModeCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'islandModeCidr': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminIslandModeCidrConfig, Map<String, dynamic>>(islandModeCidr, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminNetworkConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminNetworkConfig(
      islandModeCidr: (() { final guardedValue = map['islandModeCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalAdminIslandModeCidrConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

