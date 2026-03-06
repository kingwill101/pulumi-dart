// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_iam_policy_bindings_item.dart';

/// {@template pulumi_storage_v1_object_iam_policy_args_doc}
/// The set of arguments for ObjectIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_object_iam_policy_args_doc}
class ObjectIamPolicyArgs {
  /// An association between a role, which comes with a set of permissions, and members who may assume that role.
  final pulumi.Input<List<ObjectIamPolicyBindingsItem>>? bindings;
  final pulumi.Input<String> bucket;
  /// HTTP 1.1  Entity tag for the policy.
  final pulumi.Input<String>? etag;
  /// If present, selects a specific revision of this object (as opposed to the latest version, the default).
  final pulumi.Input<String>? generation;
  /// The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  final pulumi.Input<String>? kind;
  final pulumi.Input<String> object_;
  /// The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  final pulumi.Input<String>? resourceId;
  /// The project to be billed for this request. Required for Requester Pays buckets.
  final pulumi.Input<String>? userProject;
  /// The IAM policy format version.
  final pulumi.Input<int>? version;

  /// Creates a new [ObjectIamPolicyArgs].
  /// [bindings] An association between a role, which comes with a set of permissions, and members who may assume that role.
  /// [bucket] Required.
  /// [etag] HTTP 1.1  Entity tag for the policy.
  /// [generation] If present, selects a specific revision of this object (as opposed to the latest version, the default).
  /// [kind] The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  /// [object_] Required.
  /// [resourceId] The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  /// [userProject] The project to be billed for this request. Required for Requester Pays buckets.
  /// [version] The IAM policy format version.
  const ObjectIamPolicyArgs({
    this.bindings,
    required this.bucket,
    this.etag,
    this.generation,
    this.kind,
    required this.object_,
    this.resourceId,
    this.userProject,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<ObjectIamPolicyBindingsItem>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<ObjectIamPolicyBindingsItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bucket': bucket,
      'etag': ?etag,
      'generation': ?generation,
      'kind': ?kind,
      'object': object_,
      'resourceId': ?resourceId,
      'userProject': ?userProject,
      'version': ?version,
    };
  }

  factory ObjectIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ObjectIamPolicyArgs(
      bindings: (() { final guardedValue = map['bindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ObjectIamPolicyBindingsItem>(guardedValue, (value) => ObjectIamPolicyBindingsItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      object_: pulumi.Input.fromValue(map['object'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userProject: (() { final guardedValue = map['userProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

