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
      'clusterupgrade':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterUpgradeFleetSpec,
            Map<String, dynamic>
          >(clusterupgrade, (value) => value.toMap()),
      'fleetobservability':
          ?pulumi.Input.mapOptionalInputValue<
            FleetObservabilityFeatureSpec,
            Map<String, dynamic>
          >(fleetobservability, (value) => value.toMap()),
      'multiclusteringress':
          ?pulumi.Input.mapOptionalInputValue<
            MultiClusterIngressFeatureSpec,
            Map<String, dynamic>
          >(multiclusteringress, (value) => value.toMap()),
    };
  }

  factory CommonFeatureSpec.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpec(
      appdevexperience: (() {
        final guardedValue = map['appdevexperience'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      clusterupgrade: (() {
        final guardedValue = map['clusterupgrade'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterUpgradeFleetSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fleetobservability: (() {
        final guardedValue = map['fleetobservability'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FleetObservabilityFeatureSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      multiclusteringress: (() {
        final guardedValue = map['multiclusteringress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MultiClusterIngressFeatureSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
