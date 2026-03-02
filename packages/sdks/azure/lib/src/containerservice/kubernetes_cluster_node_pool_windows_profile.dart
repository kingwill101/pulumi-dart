// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterNodePoolWindowsProfile {
  /// Should the Windows nodes in this Node Pool have outbound NAT enabled? Defaults to `true`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If a percentage is provided, the number of surge nodes is calculated from the current node count on the cluster. Node surge can allow a cluster to have more nodes than `max_count` during an upgrade. Ensure that your cluster has enough [IP space](https://docs.microsoft.com/azure/aks/upgrade-cluster#customize-node-surge-upgrade) during an upgrade.
  final pulumi.Input<bool>? outboundNatEnabled;

  /// Creates a new [KubernetesClusterNodePoolWindowsProfile].
  /// [outboundNatEnabled] Should the Windows nodes in this Node Pool have outbound NAT enabled? Defaults to `true`. Changing this forces a new resource to be created.
  KubernetesClusterNodePoolWindowsProfile({
    this.outboundNatEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outboundNatEnabled': ?outboundNatEnabled,
    };
  }

  factory KubernetesClusterNodePoolWindowsProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNodePoolWindowsProfile(
      outboundNatEnabled: map['outboundNatEnabled'] == null ? null : (map['outboundNatEnabled']! as bool).input(),
    );
  }
}

