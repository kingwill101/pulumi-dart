// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_lifecycle_rule_item_action_response.dart';
import 'bucket_lifecycle_rule_item_condition_response.dart';

class BucketLifecycleRuleItemResponse {
  /// The action to take.
  final BucketLifecycleRuleItemActionResponse action;
  /// The condition(s) under which the action will be taken.
  final BucketLifecycleRuleItemConditionResponse condition;

  /// Creates a new [BucketLifecycleRuleItemResponse].
  /// [action] The action to take.
  /// [condition] The condition(s) under which the action will be taken.
  BucketLifecycleRuleItemResponse({
    required this.action,
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'condition': condition.toMap(),
    };
  }

  factory BucketLifecycleRuleItemResponse.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleItemResponse(
      action: BucketLifecycleRuleItemActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>()),
      condition: BucketLifecycleRuleItemConditionResponse.fromMap((map['condition'] as Map).cast<String, dynamic>()),
    );
  }
}

