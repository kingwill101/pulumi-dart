// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_private_visibility_config_gke_cluster.dart';
import 'managed_zone_private_visibility_config_network.dart';

class ManagedZonePrivateVisibilityConfig {
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  /// Structure is documented below.
  final pulumi.Input<List<ManagedZonePrivateVisibilityConfigGkeCluster>>? gkeClusters;
  /// The list of VPC networks that can see this zone. Until the provider updates to use the Terraform 0.12 SDK in a future release, you
  /// may experience issues with this resource while updating. If you've defined a `networks` block and
  /// add another `networks` block while keeping the old block, Terraform will see an incorrect diff
  /// and apply an incorrect update to the resource. If you encounter this issue, remove all `networks`
  /// blocks in an update and then apply another update adding all of them back simultaneously.
  /// Structure is documented below.
  final pulumi.Input<List<ManagedZonePrivateVisibilityConfigNetwork>>? networks;

  /// Creates a new [ManagedZonePrivateVisibilityConfig].
  /// [gkeClusters] The list of Google Kubernetes Engine clusters that can see this zone.
  /// [networks] The list of VPC networks that can see this zone. Until the provider updates to use the Terraform 0.12 SDK in a future release, you
  const ManagedZonePrivateVisibilityConfig({
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
      gkeClusters: (() { final guardedValue = map['gkeClusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedZonePrivateVisibilityConfigGkeCluster>(guardedValue, (value) => ManagedZonePrivateVisibilityConfigGkeCluster.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedZonePrivateVisibilityConfigNetwork>(guardedValue, (value) => ManagedZonePrivateVisibilityConfigNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
