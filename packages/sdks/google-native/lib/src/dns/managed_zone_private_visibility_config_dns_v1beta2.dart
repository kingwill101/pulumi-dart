// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_private_visibility_config_gkecluster_dns_v1beta2.dart';
import 'managed_zone_private_visibility_config_network_dns_v1beta2.dart';

class ManagedZonePrivateVisibilityConfigDnsV1beta2 {
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  final pulumi.Input<List<ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2>>? gkeClusters;
  final pulumi.Input<String>? kind;
  /// The list of VPC networks that can see this zone.
  final pulumi.Input<List<ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2>>? networks;

  /// Creates a new [ManagedZonePrivateVisibilityConfigDnsV1beta2].
  /// [gkeClusters] The list of Google Kubernetes Engine clusters that can see this zone.
  /// [kind] Optional.
  /// [networks] The list of VPC networks that can see this zone.
  const ManagedZonePrivateVisibilityConfigDnsV1beta2({
    this.gkeClusters,
    this.kind,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusters': ?pulumi.Input.mapOptionalInputValue<List<ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2>, List<Map<String, dynamic>>>(gkeClusters, (value) => pulumi.Input.encodeList<ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedZonePrivateVisibilityConfigDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigDnsV1beta2(
      gkeClusters: (() { final guardedValue = map['gkeClusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2>(guardedValue, (value) => ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2>(guardedValue, (value) => ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
