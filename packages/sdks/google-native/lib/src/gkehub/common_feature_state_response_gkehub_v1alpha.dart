// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_dev_experience_feature_state_response_gkehub_v1alpha.dart';
import 'cluster_upgrade_fleet_state_response_gkehub_v1alpha.dart';
import 'feature_state_response_gkehub_v1alpha.dart';
import 'fleet_observability_feature_state_response_gkehub_v1alpha.dart';
import 'service_mesh_feature_state_response.dart';

/// CommonFeatureState contains Hub-wide Feature status information.
class CommonFeatureStateResponseGkehubV1alpha {
  /// Appdevexperience specific state.
  final pulumi.Input<AppDevExperienceFeatureStateResponseGkehubV1alpha> appdevexperience;
  /// ClusterUpgrade fleet-level state.
  final pulumi.Input<ClusterUpgradeFleetStateResponseGkehubV1alpha> clusterupgrade;
  /// FleetObservability feature state.
  final pulumi.Input<FleetObservabilityFeatureStateResponseGkehubV1alpha> fleetobservability;
  /// Namespace Actuation feature state.
  final pulumi.Input<Map<String, dynamic>> namespaceactuation;
  /// Service Mesh-specific state.
  final pulumi.Input<ServiceMeshFeatureStateResponse> servicemesh;
  /// The "running state" of the Feature in this Hub.
  final pulumi.Input<FeatureStateResponseGkehubV1alpha> state;

  /// Creates a new [CommonFeatureStateResponseGkehubV1alpha].
  /// [appdevexperience] Appdevexperience specific state.
  /// [clusterupgrade] ClusterUpgrade fleet-level state.
  /// [fleetobservability] FleetObservability feature state.
  /// [namespaceactuation] Namespace Actuation feature state.
  /// [servicemesh] Service Mesh-specific state.
  /// [state] The "running state" of the Feature in this Hub.
  CommonFeatureStateResponseGkehubV1alpha({
    required this.appdevexperience,
    required this.clusterupgrade,
    required this.fleetobservability,
    required this.namespaceactuation,
    required this.servicemesh,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appdevexperience': pulumi.Input.mapInputValue<AppDevExperienceFeatureStateResponseGkehubV1alpha, Map<String, dynamic>>(appdevexperience, (value) => value.toMap()),
      'clusterupgrade': pulumi.Input.mapInputValue<ClusterUpgradeFleetStateResponseGkehubV1alpha, Map<String, dynamic>>(clusterupgrade, (value) => value.toMap()),
      'fleetobservability': pulumi.Input.mapInputValue<FleetObservabilityFeatureStateResponseGkehubV1alpha, Map<String, dynamic>>(fleetobservability, (value) => value.toMap()),
      'namespaceactuation': namespaceactuation,
      'servicemesh': pulumi.Input.mapInputValue<ServiceMeshFeatureStateResponse, Map<String, dynamic>>(servicemesh, (value) => value.toMap()),
      'state': pulumi.Input.mapInputValue<FeatureStateResponseGkehubV1alpha, Map<String, dynamic>>(state, (value) => value.toMap()),
    };
  }

  factory CommonFeatureStateResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return CommonFeatureStateResponseGkehubV1alpha(
      appdevexperience: (AppDevExperienceFeatureStateResponseGkehubV1alpha.fromMap((map['appdevexperience'] as Map).cast<String, dynamic>())).input(),
      clusterupgrade: (ClusterUpgradeFleetStateResponseGkehubV1alpha.fromMap((map['clusterupgrade'] as Map).cast<String, dynamic>())).input(),
      fleetobservability: (FleetObservabilityFeatureStateResponseGkehubV1alpha.fromMap((map['fleetobservability'] as Map).cast<String, dynamic>())).input(),
      namespaceactuation: ((map['namespaceactuation'] as Map).cast<String, dynamic>()).input(),
      servicemesh: (ServiceMeshFeatureStateResponse.fromMap((map['servicemesh'] as Map).cast<String, dynamic>())).input(),
      state: (FeatureStateResponseGkehubV1alpha.fromMap((map['state'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

