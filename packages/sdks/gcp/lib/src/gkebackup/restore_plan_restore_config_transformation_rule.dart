// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_plan_restore_config_transformation_rule_field_action.dart';
import 'restore_plan_restore_config_transformation_rule_resource_filter.dart';

class RestorePlanRestoreConfigTransformationRule {
  /// The description is a user specified string description
  /// of the transformation rule.
  final pulumi.Input<String>? description;
  /// A list of transformation rule actions to take against candidate
  /// resources. Actions are executed in order defined - this order
  /// matters, as they could potentially interfere with each other and
  /// the first operation could affect the outcome of the second operation.
  /// Structure is documented below.
  final pulumi.Input<List<RestorePlanRestoreConfigTransformationRuleFieldAction>> fieldActions;
  /// This field is used to specify a set of fields that should be used to
  /// determine which resources in backup should be acted upon by the
  /// supplied transformation rule actions, and this will ensure that only
  /// specific resources are affected by transformation rule actions.
  /// Structure is documented below.
  final pulumi.Input<RestorePlanRestoreConfigTransformationRuleResourceFilter>? resourceFilter;

  /// Creates a new [RestorePlanRestoreConfigTransformationRule].
  /// [description] The description is a user specified string description
  /// [fieldActions] A list of transformation rule actions to take against candidate
  /// [resourceFilter] This field is used to specify a set of fields that should be used to
  RestorePlanRestoreConfigTransformationRule({
    this.description,
    required this.fieldActions,
    this.resourceFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'fieldActions': pulumi.Input.mapInputValue<List<RestorePlanRestoreConfigTransformationRuleFieldAction>, List<Map<String, dynamic>>>(fieldActions, (value) => pulumi.Input.encodeList<RestorePlanRestoreConfigTransformationRuleFieldAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceFilter': ?pulumi.Input.mapOptionalInputValue<RestorePlanRestoreConfigTransformationRuleResourceFilter, Map<String, dynamic>>(resourceFilter, (value) => value.toMap()),
    };
  }

  factory RestorePlanRestoreConfigTransformationRule.fromMap(Map<String, dynamic> map) {
    return RestorePlanRestoreConfigTransformationRule(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      fieldActions: (pulumi.Input.decodeList<RestorePlanRestoreConfigTransformationRuleFieldAction>(map['fieldActions'], (value) => RestorePlanRestoreConfigTransformationRuleFieldAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceFilter: map['resourceFilter'] == null ? null : (RestorePlanRestoreConfigTransformationRuleResourceFilter.fromMap((map['resourceFilter']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

