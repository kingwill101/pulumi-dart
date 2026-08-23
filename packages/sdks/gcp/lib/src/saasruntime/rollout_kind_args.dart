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
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The configuration for error budget. If the number of failed units exceeds
  /// max(allowed_count, allowedRatio * total_units), the rollout will be paused.
  /// Structure is documented below.
  final pulumi.Input<RolloutKindErrorBudget>? errorBudget;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [errorBudget] The configuration for error budget. If the number of failed units exceeds
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [rolloutKindId] The ID value for the new rollout kind.
  /// [rolloutOrchestrationStrategy] The strategy used for executing a Rollout. This is a required field.
  /// [unitFilter] CEL(https://github.com/google/cel-spec) formatted filter string against
  /// [unitKind] UnitKind that this rollout kind corresponds to. Rollouts stemming from this
  /// [updateUnitKindStrategy] The config for updating the unit kind. By default, the unit kind will be
  const RolloutKindArgs({
    this.annotations,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorBudget: (() { final guardedValue = map['errorBudget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RolloutKindErrorBudget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolloutKindId: pulumi.Input.fromValue(map['rolloutKindId'] as String),
      rolloutOrchestrationStrategy: (() { final guardedValue = map['rolloutOrchestrationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unitFilter: (() { final guardedValue = map['unitFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unitKind: pulumi.Input.fromValue(map['unitKind'] as String),
      updateUnitKindStrategy: (() { final guardedValue = map['updateUnitKindStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
