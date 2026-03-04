// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_filter_response.dart';
import 'transformation_rule_action_response.dart';

/// A transformation rule to be applied against Kubernetes resources as they are selected for restoration from a Backup. A rule contains both filtering logic (which resources are subject to transform) and transformation logic.
class TransformationRuleResponse {
  /// Optional. The description is a user specified string description of the transformation rule.
  final pulumi.Input<String> description;

  /// A list of transformation rule actions to take against candidate resources. Actions are executed in order defined - this order matters, as they could potentially interfere with each other and the first operation could affect the outcome of the second operation.
  final pulumi.Input<List<TransformationRuleActionResponse>> fieldActions;

  /// Optional. This field is used to specify a set of fields that should be used to determine which resources in backup should be acted upon by the supplied transformation rule actions, and this will ensure that only specific resources are affected by transformation rule actions.
  final pulumi.Input<ResourceFilterResponse> resourceFilter;

  /// Creates a new [TransformationRuleResponse].
  /// [description] Optional. The description is a user specified string description of the transformation rule.
  /// [fieldActions] A list of transformation rule actions to take against candidate resources. Actions are executed in order defined - this order matters, as they could potentially interfere with each other and the first operation could affect the outcome of the second operation.
  /// [resourceFilter] Optional. This field is used to specify a set of fields that should be used to determine which resources in backup should be acted upon by the supplied transformation rule actions, and this will ensure that only specific resources are affected by transformation rule actions.
  TransformationRuleResponse({
    required this.description,
    required this.fieldActions,
    required this.resourceFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'fieldActions':
          pulumi.Input.mapInputValue<
            List<TransformationRuleActionResponse>,
            List<Map<String, dynamic>>
          >(
            fieldActions,
            (value) =>
                pulumi.Input.encodeList<
                  TransformationRuleActionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceFilter':
          pulumi.Input.mapInputValue<
            ResourceFilterResponse,
            Map<String, dynamic>
          >(resourceFilter, (value) => value.toMap()),
    };
  }

  factory TransformationRuleResponse.fromMap(Map<String, dynamic> map) {
    return TransformationRuleResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      fieldActions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<TransformationRuleActionResponse>(
          map['fieldActions']!,
          (value) => TransformationRuleActionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      resourceFilter: pulumi.Input.fromValue(
        ResourceFilterResponse.fromMap(
          (map['resourceFilter']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
