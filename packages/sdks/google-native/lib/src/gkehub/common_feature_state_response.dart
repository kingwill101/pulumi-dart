// ignore_for_file: unused_element, unnecessary_cast

import 'app_dev_experience_feature_state_response.dart';
import 'cluster_upgrade_fleet_state_response.dart';
import 'feature_state_response.dart';
import 'fleet_observability_feature_state_response.dart';

/// CommonFeatureState contains Hub-wide Feature status information.
class CommonFeatureStateResponse {
  /// Appdevexperience specific state.
  final AppDevExperienceFeatureStateResponse appdevexperience;
  /// ClusterUpgrade fleet-level state.
  final ClusterUpgradeFleetStateResponse clusterupgrade;
  /// FleetObservability feature state.
  final FleetObservabilityFeatureStateResponse fleetobservability;
  /// The "running state" of the Feature in this Hub.
  final FeatureStateResponse state;

  /// Creates a new [CommonFeatureStateResponse].
  /// [appdevexperience] Appdevexperience specific state.
  /// [clusterupgrade] ClusterUpgrade fleet-level state.
  /// [fleetobservability] FleetObservability feature state.
  /// [state] The "running state" of the Feature in this Hub.
  CommonFeatureStateResponse({
    required this.appdevexperience,
    required this.clusterupgrade,
    required this.fleetobservability,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appdevexperience': appdevexperience.toMap(),
      'clusterupgrade': clusterupgrade.toMap(),
      'fleetobservability': fleetobservability.toMap(),
      'state': state.toMap(),
    };
  }

  factory CommonFeatureStateResponse.fromMap(Map<String, dynamic> map) {
    return CommonFeatureStateResponse(
      appdevexperience: AppDevExperienceFeatureStateResponse.fromMap((map['appdevexperience'] as Map).cast<String, dynamic>()),
      clusterupgrade: ClusterUpgradeFleetStateResponse.fromMap((map['clusterupgrade'] as Map).cast<String, dynamic>()),
      fleetobservability: FleetObservabilityFeatureStateResponse.fromMap((map['fleetobservability'] as Map).cast<String, dynamic>()),
      state: FeatureStateResponse.fromMap((map['state'] as Map).cast<String, dynamic>()),
    );
  }
}

