// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_r2_bucket_lifecycle_rule_abort_multipart_uploads_transition.dart';
import 'get_r2_bucket_lifecycle_rule_conditions.dart';
import 'get_r2_bucket_lifecycle_rule_delete_objects_transition.dart';
import 'get_r2_bucket_lifecycle_rule_storage_class_transition.dart';

class GetR2BucketLifecycleRule {
  /// Transition to abort ongoing multipart uploads.
  final pulumi.Input<GetR2BucketLifecycleRuleAbortMultipartUploadsTransition> abortMultipartUploadsTransition;
  /// Conditions that apply to all transitions of this rule.
  final pulumi.Input<GetR2BucketLifecycleRuleConditions> conditions;
  /// Transition to delete objects.
  final pulumi.Input<GetR2BucketLifecycleRuleDeleteObjectsTransition> deleteObjectsTransition;
  /// Whether or not this rule is in effect.
  final pulumi.Input<bool> enabled;
  /// Unique identifier for this rule.
  final pulumi.Input<String> id;
  /// Transitions to change the storage class of objects.
  final pulumi.Input<List<GetR2BucketLifecycleRuleStorageClassTransition>> storageClassTransitions;

  /// Creates a new [GetR2BucketLifecycleRule].
  /// [abortMultipartUploadsTransition] Transition to abort ongoing multipart uploads.
  /// [conditions] Conditions that apply to all transitions of this rule.
  /// [deleteObjectsTransition] Transition to delete objects.
  /// [enabled] Whether or not this rule is in effect.
  /// [id] Unique identifier for this rule.
  /// [storageClassTransitions] Transitions to change the storage class of objects.
  const GetR2BucketLifecycleRule({
    required this.abortMultipartUploadsTransition,
    required this.conditions,
    required this.deleteObjectsTransition,
    required this.enabled,
    required this.id,
    required this.storageClassTransitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abortMultipartUploadsTransition': pulumi.Input.mapInputValue<GetR2BucketLifecycleRuleAbortMultipartUploadsTransition, Map<String, dynamic>>(abortMultipartUploadsTransition, (value) => value.toMap()),
      'conditions': pulumi.Input.mapInputValue<GetR2BucketLifecycleRuleConditions, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'deleteObjectsTransition': pulumi.Input.mapInputValue<GetR2BucketLifecycleRuleDeleteObjectsTransition, Map<String, dynamic>>(deleteObjectsTransition, (value) => value.toMap()),
      'enabled': enabled,
      'id': id,
      'storageClassTransitions': pulumi.Input.mapInputValue<List<GetR2BucketLifecycleRuleStorageClassTransition>, List<Map<String, dynamic>>>(storageClassTransitions, (value) => pulumi.Input.encodeList<GetR2BucketLifecycleRuleStorageClassTransition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetR2BucketLifecycleRule.fromMap(Map<String, dynamic> map) {
    return GetR2BucketLifecycleRule(
      abortMultipartUploadsTransition: pulumi.Input.fromValue(GetR2BucketLifecycleRuleAbortMultipartUploadsTransition.fromMap((map['abortMultipartUploadsTransition']! as Map).cast<String, dynamic>())),
      conditions: pulumi.Input.fromValue(GetR2BucketLifecycleRuleConditions.fromMap((map['conditions']! as Map).cast<String, dynamic>())),
      deleteObjectsTransition: pulumi.Input.fromValue(GetR2BucketLifecycleRuleDeleteObjectsTransition.fromMap((map['deleteObjectsTransition']! as Map).cast<String, dynamic>())),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      storageClassTransitions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetR2BucketLifecycleRuleStorageClassTransition>(map['storageClassTransitions']!, (value) => GetR2BucketLifecycleRuleStorageClassTransition.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
