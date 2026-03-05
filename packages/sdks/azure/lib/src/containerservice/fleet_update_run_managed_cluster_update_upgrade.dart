// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetUpdateRunManagedClusterUpdateUpgrade {
  /// Specifies the Kubernetes version to upgrade the member clusters to. This is required if `type` is set to `Full`.
  final pulumi.Input<String>? kubernetesVersion;
  /// Specifies the type of upgrade to perform. Possible values are `Full` and `NodeImageOnly`.
  final pulumi.Input<String> type;

  /// Creates a new [FleetUpdateRunManagedClusterUpdateUpgrade].
  /// [kubernetesVersion] Specifies the Kubernetes version to upgrade the member clusters to. This is required if `type` is set to `Full`.
  /// [type] Specifies the type of upgrade to perform. Possible values are `Full` and `NodeImageOnly`.
  FleetUpdateRunManagedClusterUpdateUpgrade({
    this.kubernetesVersion,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesVersion': ?kubernetesVersion,
      'type': type,
    };
  }

  factory FleetUpdateRunManagedClusterUpdateUpgrade.fromMap(Map<String, dynamic> map) {
    return FleetUpdateRunManagedClusterUpdateUpgrade(
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

