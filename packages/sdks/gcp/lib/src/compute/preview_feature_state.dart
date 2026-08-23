// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preview_feature_rollout_operation.dart';

/// Input properties used for looking up and filtering PreviewFeature resources.
class PreviewFeatureState {
  /// The activation status of the preview feature.
  /// Possible values are: `ENABLED`, `ACTIVATION_STATE_UNSPECIFIED`.
  final pulumi.Input<String>? activationStatus;
  /// The name of the preview feature.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The rollout operation of the feature.
  /// Structure is documented below.
  final pulumi.Input<PreviewFeatureRolloutOperation>? rolloutOperation;

  /// Creates a new [PreviewFeatureState].
  /// [activationStatus] The activation status of the preview feature.
  /// [name] The name of the preview feature.
  /// [project] The ID of the project in which the resource belongs.
  /// [rolloutOperation] The rollout operation of the feature.
  const PreviewFeatureState({
    this.activationStatus,
    this.name,
    this.project,
    this.rolloutOperation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationStatus': ?activationStatus,
      'name': ?name,
      'project': ?project,
      'rolloutOperation': ?pulumi.Input.mapOptionalInputValue<PreviewFeatureRolloutOperation, Map<String, dynamic>>(rolloutOperation, (value) => value.toMap()),
    };
  }

  factory PreviewFeatureState.fromMap(Map<String, dynamic> map) {
    return PreviewFeatureState(
      activationStatus: (() { final guardedValue = map['activationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolloutOperation: (() { final guardedValue = map['rolloutOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreviewFeatureRolloutOperation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
