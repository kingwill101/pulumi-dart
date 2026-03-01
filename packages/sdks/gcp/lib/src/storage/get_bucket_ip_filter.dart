// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_ip_filter_public_network_source.dart';
import 'get_bucket_ip_filter_vpc_network_source.dart';

class GetBucketIpFilter {
  /// Whether to allow all service agents to access the bucket regardless of the IP filter configuration.
  final bool allowAllServiceAgentAccess;
  /// Whether to allow cross-org VPCs in the bucket's IP filter configuration.
  final bool allowCrossOrgVpcs;
  /// The mode of the IP filter. Valid values are 'Enabled' and 'Disabled'.
  final String mode;
  /// The public network IP address ranges that can access the bucket and its data.
  final List<GetBucketIpFilterPublicNetworkSource> publicNetworkSources;
  /// The list of VPC networks that can access the bucket.
  final List<GetBucketIpFilterVpcNetworkSource> vpcNetworkSources;

  /// Creates a new [GetBucketIpFilter].
  /// [allowAllServiceAgentAccess] Whether to allow all service agents to access the bucket regardless of the IP filter configuration.
  /// [allowCrossOrgVpcs] Whether to allow cross-org VPCs in the bucket's IP filter configuration.
  /// [mode] The mode of the IP filter. Valid values are 'Enabled' and 'Disabled'.
  /// [publicNetworkSources] The public network IP address ranges that can access the bucket and its data.
  /// [vpcNetworkSources] The list of VPC networks that can access the bucket.
  GetBucketIpFilter({
    required this.allowAllServiceAgentAccess,
    required this.allowCrossOrgVpcs,
    required this.mode,
    required this.publicNetworkSources,
    required this.vpcNetworkSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAllServiceAgentAccess': allowAllServiceAgentAccess,
      'allowCrossOrgVpcs': allowCrossOrgVpcs,
      'mode': mode,
      'publicNetworkSources': pulumi.Input.encodeList<GetBucketIpFilterPublicNetworkSource, Map<String, dynamic>>(publicNetworkSources, (value) => value.toMap()),
      'vpcNetworkSources': pulumi.Input.encodeList<GetBucketIpFilterVpcNetworkSource, Map<String, dynamic>>(vpcNetworkSources, (value) => value.toMap()),
    };
  }

  factory GetBucketIpFilter.fromMap(Map<String, dynamic> map) {
    return GetBucketIpFilter(
      allowAllServiceAgentAccess: map['allowAllServiceAgentAccess'] as bool,
      allowCrossOrgVpcs: map['allowCrossOrgVpcs'] as bool,
      mode: map['mode'] as String,
      publicNetworkSources: pulumi.Input.decodeList<GetBucketIpFilterPublicNetworkSource>(map['publicNetworkSources'], (value) => GetBucketIpFilterPublicNetworkSource.fromMap((value as Map).cast<String, dynamic>())),
      vpcNetworkSources: pulumi.Input.decodeList<GetBucketIpFilterVpcNetworkSource>(map['vpcNetworkSources'], (value) => GetBucketIpFilterVpcNetworkSource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

