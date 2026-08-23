// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_ip_filter_public_network_source.dart';
import 'bucket_ip_filter_vpc_network_source.dart';

class BucketIpFilter {
  /// While set `true`, allows all service agents to access the bucket regardless of the IP filter configuration.
  final pulumi.Input<bool>? allowAllServiceAgentAccess;
  /// While set `true`, allows cross-org VPCs in the bucket's IP filter configuration.
  final pulumi.Input<bool>? allowCrossOrgVpcs;
  /// The state of the IP filter configuration. Valid values are `Enabled` and `Disabled`. When set to `Enabled`, IP filtering rules are applied to a bucket and all incoming requests to the bucket are evaluated against these rules. When set to `Disabled`, IP filtering rules are not applied to a bucket.
  ///
  /// **Note**: Once ipFilter is setup, it can either be `Enabled` or `Disabled` and cannot be removed from config.
  ///
  /// **Note**: `allowAllServiceAgentAccess` must be supplied when `mode` is set to `Enabled`, it can be ommited for other values.
  final pulumi.Input<String> mode;
  /// The public network IP address ranges that can access the bucket and its data. Structure is documented below.
  final pulumi.Input<BucketIpFilterPublicNetworkSource>? publicNetworkSource;
  /// The list of VPC networks that can access the bucket. Structure is documented below.
  final pulumi.Input<List<BucketIpFilterVpcNetworkSource>>? vpcNetworkSources;

  /// Creates a new [BucketIpFilter].
  /// [allowAllServiceAgentAccess] While set `true`, allows all service agents to access the bucket regardless of the IP filter configuration.
  /// [allowCrossOrgVpcs] While set `true`, allows cross-org VPCs in the bucket's IP filter configuration.
  /// [mode] The state of the IP filter configuration. Valid values are `Enabled` and `Disabled`. When set to `Enabled`, IP filtering rules are applied to a bucket and all incoming requests to the bucket are evaluated against these rules. When set to `Disabled`, IP filtering rules are not applied to a bucket.
  /// [publicNetworkSource] The public network IP address ranges that can access the bucket and its data. Structure is documented below.
  /// [vpcNetworkSources] The list of VPC networks that can access the bucket. Structure is documented below.
  const BucketIpFilter({
    this.allowAllServiceAgentAccess,
    this.allowCrossOrgVpcs,
    required this.mode,
    this.publicNetworkSource,
    this.vpcNetworkSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAllServiceAgentAccess': ?allowAllServiceAgentAccess,
      'allowCrossOrgVpcs': ?allowCrossOrgVpcs,
      'mode': mode,
      'publicNetworkSource': ?pulumi.Input.mapOptionalInputValue<BucketIpFilterPublicNetworkSource, Map<String, dynamic>>(publicNetworkSource, (value) => value.toMap()),
      'vpcNetworkSources': ?pulumi.Input.mapOptionalInputValue<List<BucketIpFilterVpcNetworkSource>, List<Map<String, dynamic>>>(vpcNetworkSources, (value) => pulumi.Input.encodeList<BucketIpFilterVpcNetworkSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketIpFilter.fromMap(Map<String, dynamic> map) {
    return BucketIpFilter(
      allowAllServiceAgentAccess: (() { final guardedValue = map['allowAllServiceAgentAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowCrossOrgVpcs: (() { final guardedValue = map['allowCrossOrgVpcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      publicNetworkSource: (() { final guardedValue = map['publicNetworkSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketIpFilterPublicNetworkSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcNetworkSources: (() { final guardedValue = map['vpcNetworkSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketIpFilterVpcNetworkSource>(guardedValue, (value) => BucketIpFilterVpcNetworkSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
