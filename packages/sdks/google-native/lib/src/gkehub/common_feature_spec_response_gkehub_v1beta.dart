// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anthos_observability_feature_spec_response_gkehub_v1beta.dart';
import 'cluster_upgrade_fleet_spec_response_gkehub_v1beta.dart';
import 'fleet_observability_feature_spec_response_gkehub_v1beta.dart';
import 'multi_cluster_ingress_feature_spec_response_gkehub_v1beta.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpecResponseGkehubV1beta {
  /// Anthos Observability spec
  final pulumi.Input<AnthosObservabilityFeatureSpecResponseGkehubV1beta>
  anthosobservability;

  /// Appdevexperience specific spec.
  final pulumi.Input<Map<String, dynamic>> appdevexperience;

  /// ClusterUpgrade (fleet-based) feature spec.
  final pulumi.Input<ClusterUpgradeFleetSpecResponseGkehubV1beta>
  clusterupgrade;

  /// FleetObservability feature spec.
  final pulumi.Input<FleetObservabilityFeatureSpecResponseGkehubV1beta>
  fleetobservability;

  /// Multicluster Ingress-specific spec.
  final pulumi.Input<MultiClusterIngressFeatureSpecResponseGkehubV1beta>
  multiclusteringress;

  /// Creates a new [CommonFeatureSpecResponseGkehubV1beta].
  /// [anthosobservability] Anthos Observability spec
  /// [appdevexperience] Appdevexperience specific spec.
  /// [clusterupgrade] ClusterUpgrade (fleet-based) feature spec.
  /// [fleetobservability] FleetObservability feature spec.
  /// [multiclusteringress] Multicluster Ingress-specific spec.
  CommonFeatureSpecResponseGkehubV1beta({
    required this.anthosobservability,
    required this.appdevexperience,
    required this.clusterupgrade,
    required this.fleetobservability,
    required this.multiclusteringress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anthosobservability':
          pulumi.Input.mapInputValue<
            AnthosObservabilityFeatureSpecResponseGkehubV1beta,
            Map<String, dynamic>
          >(anthosobservability, (value) => value.toMap()),
      'appdevexperience': appdevexperience,
      'clusterupgrade':
          pulumi.Input.mapInputValue<
            ClusterUpgradeFleetSpecResponseGkehubV1beta,
            Map<String, dynamic>
          >(clusterupgrade, (value) => value.toMap()),
      'fleetobservability':
          pulumi.Input.mapInputValue<
            FleetObservabilityFeatureSpecResponseGkehubV1beta,
            Map<String, dynamic>
          >(fleetobservability, (value) => value.toMap()),
      'multiclusteringress':
          pulumi.Input.mapInputValue<
            MultiClusterIngressFeatureSpecResponseGkehubV1beta,
            Map<String, dynamic>
          >(multiclusteringress, (value) => value.toMap()),
    };
  }

  factory CommonFeatureSpecResponseGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return CommonFeatureSpecResponseGkehubV1beta(
      anthosobservability: pulumi.Input.fromValue(
        AnthosObservabilityFeatureSpecResponseGkehubV1beta.fromMap(
          (map['anthosobservability']! as Map).cast<String, dynamic>(),
        ),
      ),
      appdevexperience: pulumi.Input.fromValue(
        (map['appdevexperience']! as Map).cast<String, dynamic>(),
      ),
      clusterupgrade: pulumi.Input.fromValue(
        ClusterUpgradeFleetSpecResponseGkehubV1beta.fromMap(
          (map['clusterupgrade']! as Map).cast<String, dynamic>(),
        ),
      ),
      fleetobservability: pulumi.Input.fromValue(
        FleetObservabilityFeatureSpecResponseGkehubV1beta.fromMap(
          (map['fleetobservability']! as Map).cast<String, dynamic>(),
        ),
      ),
      multiclusteringress: pulumi.Input.fromValue(
        MultiClusterIngressFeatureSpecResponseGkehubV1beta.fromMap(
          (map['multiclusteringress']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
