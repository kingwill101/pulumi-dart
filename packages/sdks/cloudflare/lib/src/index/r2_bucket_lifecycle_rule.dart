// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_lifecycle_rule_abort_multipart_uploads_transition.dart';
import 'r2_bucket_lifecycle_rule_conditions.dart';
import 'r2_bucket_lifecycle_rule_delete_objects_transition.dart';
import 'r2_bucket_lifecycle_rule_storage_class_transition.dart';

class R2BucketLifecycleRule {
  /// Transition to abort ongoing multipart uploads.
  final pulumi.Input<R2BucketLifecycleRuleAbortMultipartUploadsTransition?>? abortMultipartUploadsTransition;
  /// Conditions that apply to all transitions of this rule.
  final pulumi.Input<R2BucketLifecycleRuleConditions> conditions;
  /// Transition to delete objects.
  final pulumi.Input<R2BucketLifecycleRuleDeleteObjectsTransition?>? deleteObjectsTransition;
  /// Whether or not this rule is in effect.
  final pulumi.Input<bool> enabled;
  /// Unique identifier for this rule.
  final pulumi.Input<String> id;
  /// Transitions to change the storage class of objects.
  final pulumi.Input<List<R2BucketLifecycleRuleStorageClassTransition>?>? storageClassTransitions;

  /// Creates a new [R2BucketLifecycleRule].
  /// [abortMultipartUploadsTransition] Transition to abort ongoing multipart uploads.
  /// [conditions] Conditions that apply to all transitions of this rule.
  /// [deleteObjectsTransition] Transition to delete objects.
  /// [enabled] Whether or not this rule is in effect.
  /// [id] Unique identifier for this rule.
  /// [storageClassTransitions] Transitions to change the storage class of objects.
  const R2BucketLifecycleRule({
    this.abortMultipartUploadsTransition,
    required this.conditions,
    this.deleteObjectsTransition,
    required this.enabled,
    required this.id,
    this.storageClassTransitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abortMultipartUploadsTransition': ?pulumi.Input.mapOptionalInputValue<R2BucketLifecycleRuleAbortMultipartUploadsTransition, Map<String, dynamic>>(abortMultipartUploadsTransition, (value) => value.toMap()),
      'conditions': pulumi.Input.mapInputValue<R2BucketLifecycleRuleConditions, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'deleteObjectsTransition': ?pulumi.Input.mapOptionalInputValue<R2BucketLifecycleRuleDeleteObjectsTransition, Map<String, dynamic>>(deleteObjectsTransition, (value) => value.toMap()),
      'enabled': enabled,
      'id': id,
      'storageClassTransitions': ?pulumi.Input.mapOptionalInputValue<List<R2BucketLifecycleRuleStorageClassTransition>, List<Map<String, dynamic>>>(storageClassTransitions, (value) => pulumi.Input.encodeList<R2BucketLifecycleRuleStorageClassTransition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory R2BucketLifecycleRule.fromMap(Map<String, dynamic> map) {
    return R2BucketLifecycleRule(
      abortMultipartUploadsTransition: (() { final guardedValue = map['abortMultipartUploadsTransition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(R2BucketLifecycleRuleAbortMultipartUploadsTransition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditions: pulumi.Input.fromValue(R2BucketLifecycleRuleConditions.fromMap((map['conditions']! as Map).cast<String, dynamic>())),
      deleteObjectsTransition: (() { final guardedValue = map['deleteObjectsTransition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(R2BucketLifecycleRuleDeleteObjectsTransition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      storageClassTransitions: (() { final guardedValue = map['storageClassTransitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<R2BucketLifecycleRuleStorageClassTransition>(guardedValue, (value) => R2BucketLifecycleRuleStorageClassTransition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
