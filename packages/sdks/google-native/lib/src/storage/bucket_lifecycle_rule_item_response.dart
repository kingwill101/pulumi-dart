// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_rule_item_action_response.dart';
import 'bucket_lifecycle_rule_item_condition_response.dart';

class BucketLifecycleRuleItemResponse {
  /// The action to take.
  final pulumi.Input<BucketLifecycleRuleItemActionResponse> action;
  /// The condition(s) under which the action will be taken.
  final pulumi.Input<BucketLifecycleRuleItemConditionResponse> condition;

  /// Creates a new [BucketLifecycleRuleItemResponse].
  /// [action] The action to take.
  /// [condition] The condition(s) under which the action will be taken.
  const BucketLifecycleRuleItemResponse({
    required this.action,
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<BucketLifecycleRuleItemActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'condition': pulumi.Input.mapInputValue<BucketLifecycleRuleItemConditionResponse, Map<String, dynamic>>(condition, (value) => value.toMap()),
    };
  }

  factory BucketLifecycleRuleItemResponse.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleItemResponse(
      action: pulumi.Input.fromValue(BucketLifecycleRuleItemActionResponse.fromMap((map['action']! as Map).cast<String, dynamic>())),
      condition: pulumi.Input.fromValue(BucketLifecycleRuleItemConditionResponse.fromMap((map['condition']! as Map).cast<String, dynamic>())),
    );
  }
}
