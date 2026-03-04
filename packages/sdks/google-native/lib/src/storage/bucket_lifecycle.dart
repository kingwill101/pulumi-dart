// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_rule_item.dart';

/// The bucket's lifecycle configuration. See lifecycle management for more information.
class BucketLifecycle {
  /// A lifecycle management rule, which is made of an action to take and the condition(s) under which the action will be taken.
  final pulumi.Input<List<BucketLifecycleRuleItem>>? rule;

  /// Creates a new [BucketLifecycle].
  /// [rule] A lifecycle management rule, which is made of an action to take and the condition(s) under which the action will be taken.
  BucketLifecycle({this.rule});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rule':
          ?pulumi.Input.mapOptionalInputValue<
            List<BucketLifecycleRuleItem>,
            List<Map<String, dynamic>>
          >(
            rule,
            (value) =>
                pulumi.Input.encodeList<
                  BucketLifecycleRuleItem,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory BucketLifecycle.fromMap(Map<String, dynamic> map) {
    return BucketLifecycle(
      rule: (() {
        final guardedValue = map['rule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BucketLifecycleRuleItem>(
            guardedValue,
            (value) => BucketLifecycleRuleItem.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
