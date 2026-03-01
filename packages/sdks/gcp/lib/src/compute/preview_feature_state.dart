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
  PreviewFeatureState({
    pulumi.Output<String>? activationStatus,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<PreviewFeatureRolloutOperation>? rolloutOperation,
  }) :
      activationStatus = pulumi.Input.asOptionalInput<String>(activationStatus),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rolloutOperation = pulumi.Input.asOptionalInput<PreviewFeatureRolloutOperation>(rolloutOperation);

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
      activationStatus: map['activationStatus'] == null ? null : pulumi.Output.create<String>(map['activationStatus'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rolloutOperation: map['rolloutOperation'] == null ? null : pulumi.Output.create<PreviewFeatureRolloutOperation>(PreviewFeatureRolloutOperation.fromMap((map['rolloutOperation'] as Map).cast<String, dynamic>())),
    );
  }
}

