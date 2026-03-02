// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anthos_observability_feature_spec_gkehub_v1beta.dart';
import 'cluster_upgrade_fleet_spec_gkehub_v1beta.dart';
import 'fleet_observability_feature_spec_gkehub_v1beta.dart';
import 'multi_cluster_ingress_feature_spec_gkehub_v1beta.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpecGkehubV1beta {
  /// Anthos Observability spec
  final pulumi.Input<AnthosObservabilityFeatureSpecGkehubV1beta>? anthosobservability;
  /// Appdevexperience specific spec.
  final pulumi.Input<Map<String, dynamic>>? appdevexperience;
  /// ClusterUpgrade (fleet-based) feature spec.
  final pulumi.Input<ClusterUpgradeFleetSpecGkehubV1beta>? clusterupgrade;
  /// FleetObservability feature spec.
  final pulumi.Input<FleetObservabilityFeatureSpecGkehubV1beta>? fleetobservability;
  /// Multicluster Ingress-specific spec.
  final pulumi.Input<MultiClusterIngressFeatureSpecGkehubV1beta>? multiclusteringress;

  /// Creates a new [CommonFeatureSpecGkehubV1beta].
  /// [anthosobservability] Anthos Observability spec
  /// [appdevexperience] Appdevexperience specific spec.
  /// [clusterupgrade] ClusterUpgrade (fleet-based) feature spec.
  /// [fleetobservability] FleetObservability feature spec.
  /// [multiclusteringress] Multicluster Ingress-specific spec.
  CommonFeatureSpecGkehubV1beta({
    this.anthosobservability,
    this.appdevexperience,
    this.clusterupgrade,
    this.fleetobservability,
    this.multiclusteringress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anthosobservability': ?pulumi.Input.mapOptionalInputValue<AnthosObservabilityFeatureSpecGkehubV1beta, Map<String, dynamic>>(anthosobservability, (value) => value.toMap()),
      'appdevexperience': ?appdevexperience,
      'clusterupgrade': ?pulumi.Input.mapOptionalInputValue<ClusterUpgradeFleetSpecGkehubV1beta, Map<String, dynamic>>(clusterupgrade, (value) => value.toMap()),
      'fleetobservability': ?pulumi.Input.mapOptionalInputValue<FleetObservabilityFeatureSpecGkehubV1beta, Map<String, dynamic>>(fleetobservability, (value) => value.toMap()),
      'multiclusteringress': ?pulumi.Input.mapOptionalInputValue<MultiClusterIngressFeatureSpecGkehubV1beta, Map<String, dynamic>>(multiclusteringress, (value) => value.toMap()),
    };
  }

  factory CommonFeatureSpecGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpecGkehubV1beta(
      anthosobservability: map['anthosobservability'] == null ? null : (AnthosObservabilityFeatureSpecGkehubV1beta.fromMap((map['anthosobservability']! as Map).cast<String, dynamic>())).input(),
      appdevexperience: map['appdevexperience'] == null ? null : ((map['appdevexperience']! as Map).cast<String, dynamic>()).input(),
      clusterupgrade: map['clusterupgrade'] == null ? null : (ClusterUpgradeFleetSpecGkehubV1beta.fromMap((map['clusterupgrade']! as Map).cast<String, dynamic>())).input(),
      fleetobservability: map['fleetobservability'] == null ? null : (FleetObservabilityFeatureSpecGkehubV1beta.fromMap((map['fleetobservability']! as Map).cast<String, dynamic>())).input(),
      multiclusteringress: map['multiclusteringress'] == null ? null : (MultiClusterIngressFeatureSpecGkehubV1beta.fromMap((map['multiclusteringress']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

