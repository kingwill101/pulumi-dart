// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_fleet_spec_response.dart';
import 'fleet_observability_feature_spec_response.dart';
import 'multi_cluster_ingress_feature_spec_response.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpecResponse {
  /// Appdevexperience specific spec.
  final pulumi.Input<Map<String, dynamic>> appdevexperience;
  /// ClusterUpgrade (fleet-based) feature spec.
  final pulumi.Input<ClusterUpgradeFleetSpecResponse> clusterupgrade;
  /// FleetObservability feature spec.
  final pulumi.Input<FleetObservabilityFeatureSpecResponse> fleetobservability;
  /// Multicluster Ingress-specific spec.
  final pulumi.Input<MultiClusterIngressFeatureSpecResponse> multiclusteringress;

  /// Creates a new [CommonFeatureSpecResponse].
  /// [appdevexperience] Appdevexperience specific spec.
  /// [clusterupgrade] ClusterUpgrade (fleet-based) feature spec.
  /// [fleetobservability] FleetObservability feature spec.
  /// [multiclusteringress] Multicluster Ingress-specific spec.
  CommonFeatureSpecResponse({
    required this.appdevexperience,
    required this.clusterupgrade,
    required this.fleetobservability,
    required this.multiclusteringress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appdevexperience': appdevexperience,
      'clusterupgrade': pulumi.Input.mapInputValue<ClusterUpgradeFleetSpecResponse, Map<String, dynamic>>(clusterupgrade, (value) => value.toMap()),
      'fleetobservability': pulumi.Input.mapInputValue<FleetObservabilityFeatureSpecResponse, Map<String, dynamic>>(fleetobservability, (value) => value.toMap()),
      'multiclusteringress': pulumi.Input.mapInputValue<MultiClusterIngressFeatureSpecResponse, Map<String, dynamic>>(multiclusteringress, (value) => value.toMap()),
    };
  }

  factory CommonFeatureSpecResponse.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpecResponse(
      appdevexperience: pulumi.Input.fromValue((map['appdevexperience']! as Map).cast<String, dynamic>()),
      clusterupgrade: pulumi.Input.fromValue(ClusterUpgradeFleetSpecResponse.fromMap((map['clusterupgrade']! as Map).cast<String, dynamic>())),
      fleetobservability: pulumi.Input.fromValue(FleetObservabilityFeatureSpecResponse.fromMap((map['fleetobservability']! as Map).cast<String, dynamic>())),
      multiclusteringress: pulumi.Input.fromValue(MultiClusterIngressFeatureSpecResponse.fromMap((map['multiclusteringress']! as Map).cast<String, dynamic>())),
    );
  }
}

