// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_dev_experience_feature_state_response.dart';
import 'cluster_upgrade_fleet_state_response.dart';
import 'feature_state_response.dart';
import 'fleet_observability_feature_state_response.dart';

/// CommonFeatureState contains Hub-wide Feature status information.
class CommonFeatureStateResponse {
  /// Appdevexperience specific state.
  final pulumi.Input<AppDevExperienceFeatureStateResponse> appdevexperience;
  /// ClusterUpgrade fleet-level state.
  final pulumi.Input<ClusterUpgradeFleetStateResponse> clusterupgrade;
  /// FleetObservability feature state.
  final pulumi.Input<FleetObservabilityFeatureStateResponse> fleetobservability;
  /// The "running state" of the Feature in this Hub.
  final pulumi.Input<FeatureStateResponse> state;

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
      'appdevexperience': pulumi.Input.mapInputValue<AppDevExperienceFeatureStateResponse, Map<String, dynamic>>(appdevexperience, (value) => value.toMap()),
      'clusterupgrade': pulumi.Input.mapInputValue<ClusterUpgradeFleetStateResponse, Map<String, dynamic>>(clusterupgrade, (value) => value.toMap()),
      'fleetobservability': pulumi.Input.mapInputValue<FleetObservabilityFeatureStateResponse, Map<String, dynamic>>(fleetobservability, (value) => value.toMap()),
      'state': pulumi.Input.mapInputValue<FeatureStateResponse, Map<String, dynamic>>(state, (value) => value.toMap()),
    };
  }

  factory CommonFeatureStateResponse.fromMap(Map<String, dynamic> map) {
    return CommonFeatureStateResponse(
      appdevexperience: (AppDevExperienceFeatureStateResponse.fromMap((map['appdevexperience'] as Map).cast<String, dynamic>())).input(),
      clusterupgrade: (ClusterUpgradeFleetStateResponse.fromMap((map['clusterupgrade'] as Map).cast<String, dynamic>())).input(),
      fleetobservability: (FleetObservabilityFeatureStateResponse.fromMap((map['fleetobservability'] as Map).cast<String, dynamic>())).input(),
      state: (FeatureStateResponse.fromMap((map['state'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

