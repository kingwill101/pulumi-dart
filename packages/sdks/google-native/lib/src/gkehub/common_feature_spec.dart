// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_fleet_spec.dart';
import 'fleet_observability_feature_spec.dart';
import 'multi_cluster_ingress_feature_spec.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpec {
  /// Appdevexperience specific spec.
  final pulumi.Input<Map<String, dynamic>>? appdevexperience;
  /// ClusterUpgrade (fleet-based) feature spec.
  final pulumi.Input<ClusterUpgradeFleetSpec>? clusterupgrade;
  /// FleetObservability feature spec.
  final pulumi.Input<FleetObservabilityFeatureSpec>? fleetobservability;
  /// Multicluster Ingress-specific spec.
  final pulumi.Input<MultiClusterIngressFeatureSpec>? multiclusteringress;

  /// Creates a new [CommonFeatureSpec].
  /// [appdevexperience] Appdevexperience specific spec.
  /// [clusterupgrade] ClusterUpgrade (fleet-based) feature spec.
  /// [fleetobservability] FleetObservability feature spec.
  /// [multiclusteringress] Multicluster Ingress-specific spec.
  CommonFeatureSpec({
    this.appdevexperience,
    this.clusterupgrade,
    this.fleetobservability,
    this.multiclusteringress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appdevexperience': ?appdevexperience,
      'clusterupgrade': ?pulumi.Input.mapOptionalInputValue<ClusterUpgradeFleetSpec, Map<String, dynamic>>(clusterupgrade, (value) => value.toMap()),
      'fleetobservability': ?pulumi.Input.mapOptionalInputValue<FleetObservabilityFeatureSpec, Map<String, dynamic>>(fleetobservability, (value) => value.toMap()),
      'multiclusteringress': ?pulumi.Input.mapOptionalInputValue<MultiClusterIngressFeatureSpec, Map<String, dynamic>>(multiclusteringress, (value) => value.toMap()),
    };
  }

  factory CommonFeatureSpec.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpec(
      appdevexperience: map['appdevexperience'] == null ? null : ((map['appdevexperience'] as Map).cast<String, dynamic>()).input(),
      clusterupgrade: map['clusterupgrade'] == null ? null : (ClusterUpgradeFleetSpec.fromMap((map['clusterupgrade'] as Map).cast<String, dynamic>())).input(),
      fleetobservability: map['fleetobservability'] == null ? null : (FleetObservabilityFeatureSpec.fromMap((map['fleetobservability'] as Map).cast<String, dynamic>())).input(),
      multiclusteringress: map['multiclusteringress'] == null ? null : (MultiClusterIngressFeatureSpec.fromMap((map['multiclusteringress'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

