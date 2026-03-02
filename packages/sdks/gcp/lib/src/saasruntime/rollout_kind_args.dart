// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_kind_error_budget.dart';

/// {@template pulumi_saasruntime_rollout_kind_rollout_kind_args_doc}
/// The set of arguments for RolloutKind.
/// {@endtemplate}
/// {@macro pulumi_saasruntime_rollout_kind_rollout_kind_args_doc}
class RolloutKindArgs {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The configuration for error budget. If the number of failed units exceeds
  /// max(allowed_count, allowed_ratio * total_units), the rollout will be paused.
  /// Structure is documented below.
  final pulumi.Input<RolloutKindErrorBudget>? errorBudget;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID value for the new rollout kind.
  final pulumi.Input<String> rolloutKindId;
  /// The strategy used for executing a Rollout. This is a required field.
  /// There are two supported values strategies which are used to control a rollout.
  /// - "Google.Cloud.Simple.AllAtOnce"
  /// - "Google.Cloud.Simple.OneLocationAtATime"
  /// A rollout with one of these simple strategies will rollout across
  /// all locations defined in the associated UnitKind's Saas Locations.
  final pulumi.Input<String>? rolloutOrchestrationStrategy;
  /// CEL(https://github.com/google/cel-spec) formatted filter string against
  /// Unit. The filter will be applied to determine the eligible unit population.
  /// This filter can only reduce, but not expand the scope of the rollout.
  final pulumi.Input<String>? unitFilter;
  /// UnitKind that this rollout kind corresponds to. Rollouts stemming from this
  /// rollout kind will target the units of this unit kind. In other words, this
  /// defines the population of target units to be upgraded by rollouts.
  final pulumi.Input<String> unitKind;
  /// The config for updating the unit kind. By default, the unit kind will be
  /// updated on the rollout start.
  /// Possible values:
  /// UPDATE_UNIT_KIND_STRATEGY_ON_START
  /// UPDATE_UNIT_KIND_STRATEGY_NEVER
  /// Possible values are: `UPDATE_UNIT_KIND_STRATEGY_ON_START`, `UPDATE_UNIT_KIND_STRATEGY_NEVER`.
  final pulumi.Input<String>? updateUnitKindStrategy;

  /// Creates a new [RolloutKindArgs].
  /// [annotations] Annotations is an unstructured key-value map stored with a resource that
  /// [errorBudget] The configuration for error budget. If the number of failed units exceeds
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [rolloutKindId] The ID value for the new rollout kind.
  /// [rolloutOrchestrationStrategy] The strategy used for executing a Rollout. This is a required field.
  /// [unitFilter] CEL(https://github.com/google/cel-spec) formatted filter string against
  /// [unitKind] UnitKind that this rollout kind corresponds to. Rollouts stemming from this
  /// [updateUnitKindStrategy] The config for updating the unit kind. By default, the unit kind will be
  RolloutKindArgs({
    this.annotations,
    this.errorBudget,
    this.labels,
    required this.location,
    this.project,
    required this.rolloutKindId,
    this.rolloutOrchestrationStrategy,
    this.unitFilter,
    required this.unitKind,
    this.updateUnitKindStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'errorBudget': ?pulumi.Input.mapOptionalInputValue<RolloutKindErrorBudget, Map<String, dynamic>>(errorBudget, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'rolloutKindId': rolloutKindId,
      'rolloutOrchestrationStrategy': ?rolloutOrchestrationStrategy,
      'unitFilter': ?unitFilter,
      'unitKind': unitKind,
      'updateUnitKindStrategy': ?updateUnitKindStrategy,
    };
  }

  factory RolloutKindArgs.fromMap(Map<String, dynamic> map) {
    return RolloutKindArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      errorBudget: map['errorBudget'] == null ? null : (RolloutKindErrorBudget.fromMap((map['errorBudget']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rolloutKindId: (map['rolloutKindId'] as String).input(),
      rolloutOrchestrationStrategy: map['rolloutOrchestrationStrategy'] == null ? null : (map['rolloutOrchestrationStrategy']! as String).input(),
      unitFilter: map['unitFilter'] == null ? null : (map['unitFilter']! as String).input(),
      unitKind: (map['unitKind'] as String).input(),
      updateUnitKindStrategy: map['updateUnitKindStrategy'] == null ? null : (map['updateUnitKindStrategy']! as String).input(),
    );
  }
}

