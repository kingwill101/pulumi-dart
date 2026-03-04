// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_lifecycle_rule_action.dart';
import 'get_bucket_lifecycle_rule_condition.dart';

class GetBucketLifecycleRule {
  /// The Lifecycle Rule's action configuration. A single block of this type is supported.
  final pulumi.Input<List<GetBucketLifecycleRuleAction>> actions;

  /// The Lifecycle Rule's condition configuration.
  final pulumi.Input<List<GetBucketLifecycleRuleCondition>> conditions;

  /// Creates a new [GetBucketLifecycleRule].
  /// [actions] The Lifecycle Rule's action configuration. A single block of this type is supported.
  /// [conditions] The Lifecycle Rule's condition configuration.
  GetBucketLifecycleRule({required this.actions, required this.conditions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          pulumi.Input.mapInputValue<
            List<GetBucketLifecycleRuleAction>,
            List<Map<String, dynamic>>
          >(
            actions,
            (value) =>
                pulumi.Input.encodeList<
                  GetBucketLifecycleRuleAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'conditions':
          pulumi.Input.mapInputValue<
            List<GetBucketLifecycleRuleCondition>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) =>
                pulumi.Input.encodeList<
                  GetBucketLifecycleRuleCondition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetBucketLifecycleRule.fromMap(Map<String, dynamic> map) {
    return GetBucketLifecycleRule(
      actions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetBucketLifecycleRuleAction>(
          map['actions']!,
          (value) => GetBucketLifecycleRuleAction.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      conditions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetBucketLifecycleRuleCondition>(
          map['conditions']!,
          (value) => GetBucketLifecycleRuleCondition.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
