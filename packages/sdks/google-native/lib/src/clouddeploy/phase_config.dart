// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postdeploy.dart';
import 'predeploy.dart';

/// PhaseConfig represents the configuration for a phase in the custom canary deployment.
class PhaseConfig {
  /// Percentage deployment for the phase.
  final pulumi.Input<int> percentage;
  /// The ID to assign to the `Rollout` phase. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  final pulumi.Input<String> phaseId;
  /// Optional. Configuration for the postdeploy job of this phase. If this is not configured, there will be no postdeploy job for this phase.
  final pulumi.Input<Postdeploy>? postdeploy;
  /// Optional. Configuration for the predeploy job of this phase. If this is not configured, there will be no predeploy job for this phase.
  final pulumi.Input<Predeploy>? predeploy;
  /// Skaffold profiles to use when rendering the manifest for this phase. These are in addition to the profiles list specified in the `DeliveryPipeline` stage.
  final pulumi.Input<List<String>>? profiles;
  /// Whether to run verify tests after the deployment.
  final pulumi.Input<bool>? verify;

  /// Creates a new [PhaseConfig].
  /// [percentage] Percentage deployment for the phase.
  /// [phaseId] The ID to assign to the `Rollout` phase. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  /// [postdeploy] Optional. Configuration for the postdeploy job of this phase. If this is not configured, there will be no postdeploy job for this phase.
  /// [predeploy] Optional. Configuration for the predeploy job of this phase. If this is not configured, there will be no predeploy job for this phase.
  /// [profiles] Skaffold profiles to use when rendering the manifest for this phase. These are in addition to the profiles list specified in the `DeliveryPipeline` stage.
  /// [verify] Whether to run verify tests after the deployment.
  const PhaseConfig({
    required this.percentage,
    required this.phaseId,
    this.postdeploy,
    this.predeploy,
    this.profiles,
    this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': percentage,
      'phaseId': phaseId,
      'postdeploy': ?pulumi.Input.mapOptionalInputValue<Postdeploy, Map<String, dynamic>>(postdeploy, (value) => value.toMap()),
      'predeploy': ?pulumi.Input.mapOptionalInputValue<Predeploy, Map<String, dynamic>>(predeploy, (value) => value.toMap()),
      'profiles': ?profiles,
      'verify': ?verify,
    };
  }

  factory PhaseConfig.fromMap(Map<String, dynamic> map) {
    return PhaseConfig(
      percentage: pulumi.Input.fromValue(map['percentage'] as int),
      phaseId: pulumi.Input.fromValue(map['phaseId'] as String),
      postdeploy: (() { final guardedValue = map['postdeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Postdeploy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predeploy: (() { final guardedValue = map['predeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Predeploy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profiles: (() { final guardedValue = map['profiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      verify: (() { final guardedValue = map['verify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

