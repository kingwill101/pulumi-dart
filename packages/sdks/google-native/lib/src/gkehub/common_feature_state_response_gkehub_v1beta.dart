// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_dev_experience_feature_state_response_gkehub_v1beta.dart';
import 'cluster_upgrade_fleet_state_response_gkehub_v1beta.dart';
import 'feature_state_response_gkehub_v1beta.dart';
import 'fleet_observability_feature_state_response_gkehub_v1beta.dart';

/// CommonFeatureState contains Hub-wide Feature status information.
class CommonFeatureStateResponseGkehubV1beta {
  /// Appdevexperience specific state.
  final pulumi.Input<AppDevExperienceFeatureStateResponseGkehubV1beta>
  appdevexperience;

  /// ClusterUpgrade fleet-level state.
  final pulumi.Input<ClusterUpgradeFleetStateResponseGkehubV1beta>
  clusterupgrade;

  /// FleetObservability feature state.
  final pulumi.Input<FleetObservabilityFeatureStateResponseGkehubV1beta>
  fleetobservability;

  /// The "running state" of the Feature in this Hub.
  final pulumi.Input<FeatureStateResponseGkehubV1beta> state;

  /// Creates a new [CommonFeatureStateResponseGkehubV1beta].
  /// [appdevexperience] Appdevexperience specific state.
  /// [clusterupgrade] ClusterUpgrade fleet-level state.
  /// [fleetobservability] FleetObservability feature state.
  /// [state] The "running state" of the Feature in this Hub.
  CommonFeatureStateResponseGkehubV1beta({
    required this.appdevexperience,
    required this.clusterupgrade,
    required this.fleetobservability,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appdevexperience':
          pulumi.Input.mapInputValue<
            AppDevExperienceFeatureStateResponseGkehubV1beta,
            Map<String, dynamic>
          >(appdevexperience, (value) => value.toMap()),
      'clusterupgrade':
          pulumi.Input.mapInputValue<
            ClusterUpgradeFleetStateResponseGkehubV1beta,
            Map<String, dynamic>
          >(clusterupgrade, (value) => value.toMap()),
      'fleetobservability':
          pulumi.Input.mapInputValue<
            FleetObservabilityFeatureStateResponseGkehubV1beta,
            Map<String, dynamic>
          >(fleetobservability, (value) => value.toMap()),
      'state':
          pulumi.Input.mapInputValue<
            FeatureStateResponseGkehubV1beta,
            Map<String, dynamic>
          >(state, (value) => value.toMap()),
    };
  }

  factory CommonFeatureStateResponseGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return CommonFeatureStateResponseGkehubV1beta(
      appdevexperience: pulumi.Input.fromValue(
        AppDevExperienceFeatureStateResponseGkehubV1beta.fromMap(
          (map['appdevexperience']! as Map).cast<String, dynamic>(),
        ),
      ),
      clusterupgrade: pulumi.Input.fromValue(
        ClusterUpgradeFleetStateResponseGkehubV1beta.fromMap(
          (map['clusterupgrade']! as Map).cast<String, dynamic>(),
        ),
      ),
      fleetobservability: pulumi.Input.fromValue(
        FleetObservabilityFeatureStateResponseGkehubV1beta.fromMap(
          (map['fleetobservability']! as Map).cast<String, dynamic>(),
        ),
      ),
      state: pulumi.Input.fromValue(
        FeatureStateResponseGkehubV1beta.fromMap(
          (map['state']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
