// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preview_feature_rollout_operation.dart';

/// {@template pulumi_compute_preview_feature_preview_feature_args_doc}
/// The set of arguments for PreviewFeature.
/// {@endtemplate}
/// {@macro pulumi_compute_preview_feature_preview_feature_args_doc}
class PreviewFeatureArgs {
  /// The activation status of the preview feature.
  /// Possible values are: `ENABLED`, `ACTIVATION_STATE_UNSPECIFIED`.
  final pulumi.Input<String> activationStatus;
  /// The name of the preview feature.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The rollout operation of the feature.
  /// Structure is documented below.
  final pulumi.Input<PreviewFeatureRolloutOperation>? rolloutOperation;

  /// Creates a new [PreviewFeatureArgs].
  /// [activationStatus] The activation status of the preview feature.
  /// [name] The name of the preview feature.
  /// [project] The ID of the project in which the resource belongs.
  /// [rolloutOperation] The rollout operation of the feature.
  PreviewFeatureArgs({
    required pulumi.Output<String> activationStatus,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<PreviewFeatureRolloutOperation>? rolloutOperation,
  }) :
      activationStatus = pulumi.Input.asInput<String>(activationStatus),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rolloutOperation = pulumi.Input.asOptionalInput<PreviewFeatureRolloutOperation>(rolloutOperation);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationStatus': activationStatus,
      'name': ?name,
      'project': ?project,
      'rolloutOperation': ?pulumi.Input.mapOptionalInputValue<PreviewFeatureRolloutOperation, Map<String, dynamic>>(rolloutOperation, (value) => value.toMap()),
    };
  }

  factory PreviewFeatureArgs.fromMap(Map<String, dynamic> map) {
    return PreviewFeatureArgs(
      activationStatus: pulumi.Output.create<String>(map['activationStatus'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rolloutOperation: map['rolloutOperation'] == null ? null : pulumi.Output.create<PreviewFeatureRolloutOperation>(PreviewFeatureRolloutOperation.fromMap((map['rolloutOperation'] as Map).cast<String, dynamic>())),
    );
  }
}

