// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cidr_block.dart';

/// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfig {
  /// cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS.
  final pulumi.Input<List<CidrBlock>>? cidrBlocks;
  /// Whether or not master authorized networks is enabled.
  final pulumi.Input<bool>? enabled;
  /// Whether master is accessbile via Google Compute Engine Public IP addresses.
  final pulumi.Input<bool>? gcpPublicCidrsAccessEnabled;

  /// Creates a new [MasterAuthorizedNetworksConfig].
  /// [cidrBlocks] cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS.
  /// [enabled] Whether or not master authorized networks is enabled.
  /// [gcpPublicCidrsAccessEnabled] Whether master is accessbile via Google Compute Engine Public IP addresses.
  const MasterAuthorizedNetworksConfig({
    this.cidrBlocks,
    this.enabled,
    this.gcpPublicCidrsAccessEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': ?pulumi.Input.mapOptionalInputValue<List<CidrBlock>, List<Map<String, dynamic>>>(cidrBlocks, (value) => pulumi.Input.encodeList<CidrBlock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'gcpPublicCidrsAccessEnabled': ?gcpPublicCidrsAccessEnabled,
    };
  }

  factory MasterAuthorizedNetworksConfig.fromMap(Map<String, dynamic> map) {
    return MasterAuthorizedNetworksConfig(
      cidrBlocks: (() { final guardedValue = map['cidrBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CidrBlock>(guardedValue, (value) => CidrBlock.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gcpPublicCidrsAccessEnabled: (() { final guardedValue = map['gcpPublicCidrsAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
