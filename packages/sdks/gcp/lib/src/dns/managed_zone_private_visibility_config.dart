// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_private_visibility_config_gke_cluster.dart';
import 'managed_zone_private_visibility_config_network.dart';

class ManagedZonePrivateVisibilityConfig {
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  /// Structure is documented below.
  final pulumi.Input<List<ManagedZonePrivateVisibilityConfigGkeCluster>>? gkeClusters;
  final pulumi.Input<List<ManagedZonePrivateVisibilityConfigNetwork>>? networks;

  /// Creates a new [ManagedZonePrivateVisibilityConfig].
  /// [gkeClusters] The list of Google Kubernetes Engine clusters that can see this zone.
  /// [networks] Optional.
  ManagedZonePrivateVisibilityConfig({
    this.gkeClusters,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusters': ?pulumi.Input.mapOptionalInputValue<List<ManagedZonePrivateVisibilityConfigGkeCluster>, List<Map<String, dynamic>>>(gkeClusters, (value) => pulumi.Input.encodeList<ManagedZonePrivateVisibilityConfigGkeCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ManagedZonePrivateVisibilityConfigNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ManagedZonePrivateVisibilityConfigNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedZonePrivateVisibilityConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfig(
      gkeClusters: map['gkeClusters'] == null ? null : (pulumi.Input.decodeList<ManagedZonePrivateVisibilityConfigGkeCluster>(map['gkeClusters'], (value) => ManagedZonePrivateVisibilityConfigGkeCluster.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networks: map['networks'] == null ? null : (pulumi.Input.decodeList<ManagedZonePrivateVisibilityConfigNetwork>(map['networks'], (value) => ManagedZonePrivateVisibilityConfigNetwork.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

