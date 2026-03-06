// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_private_visibility_config_gkecluster_response_dns_v1beta2.dart';
import 'managed_zone_private_visibility_config_network_response_dns_v1beta2.dart';

class ManagedZonePrivateVisibilityConfigResponseDnsV1beta2 {
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  final pulumi.Input<List<ManagedZonePrivateVisibilityConfigGKEClusterResponseDnsV1beta2>> gkeClusters;
  final pulumi.Input<String> kind;
  /// The list of VPC networks that can see this zone.
  final pulumi.Input<List<ManagedZonePrivateVisibilityConfigNetworkResponseDnsV1beta2>> networks;

  /// Creates a new [ManagedZonePrivateVisibilityConfigResponseDnsV1beta2].
  /// [gkeClusters] The list of Google Kubernetes Engine clusters that can see this zone.
  /// [kind] Required.
  /// [networks] The list of VPC networks that can see this zone.
  const ManagedZonePrivateVisibilityConfigResponseDnsV1beta2({
    required this.gkeClusters,
    required this.kind,
    required this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusters': pulumi.Input.mapInputValue<List<ManagedZonePrivateVisibilityConfigGKEClusterResponseDnsV1beta2>, List<Map<String, dynamic>>>(gkeClusters, (value) => pulumi.Input.encodeList<ManagedZonePrivateVisibilityConfigGKEClusterResponseDnsV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': kind,
      'networks': pulumi.Input.mapInputValue<List<ManagedZonePrivateVisibilityConfigNetworkResponseDnsV1beta2>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ManagedZonePrivateVisibilityConfigNetworkResponseDnsV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedZonePrivateVisibilityConfigResponseDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigResponseDnsV1beta2(
      gkeClusters: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedZonePrivateVisibilityConfigGKEClusterResponseDnsV1beta2>(map['gkeClusters']!, (value) => ManagedZonePrivateVisibilityConfigGKEClusterResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>()))),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      networks: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedZonePrivateVisibilityConfigNetworkResponseDnsV1beta2>(map['networks']!, (value) => ManagedZonePrivateVisibilityConfigNetworkResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

