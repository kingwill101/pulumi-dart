// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cidr_block.dart';

/// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfig {
  /// Up to 50 external networks that could access Kubernetes master through HTTPS.
  final pulumi.Input<List<CidrBlock>>? cidrBlocks;
  /// Whether or not master authorized networks feature is enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [MasterAuthorizedNetworksConfig].
  /// [cidrBlocks] Up to 50 external networks that could access Kubernetes master through HTTPS.
  /// [enabled] Whether or not master authorized networks feature is enabled.
  MasterAuthorizedNetworksConfig({
    this.cidrBlocks,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': ?pulumi.Input.mapOptionalInputValue<List<CidrBlock>, List<Map<String, dynamic>>>(cidrBlocks, (value) => pulumi.Input.encodeList<CidrBlock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
    };
  }

  factory MasterAuthorizedNetworksConfig.fromMap(Map<String, dynamic> map) {
    return MasterAuthorizedNetworksConfig(
      cidrBlocks: map['cidrBlocks'] == null ? null : (pulumi.Input.decodeList<CidrBlock>(map['cidrBlocks'], (value) => CidrBlock.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

