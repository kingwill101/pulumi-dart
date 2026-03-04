// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_folder_iam_policy_bindings_item.dart';

/// {@template pulumi_storage_v1_managed_folder_iam_policy_args_doc}
/// The set of arguments for ManagedFolderIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_managed_folder_iam_policy_args_doc}
class ManagedFolderIamPolicyArgs {
  /// An association between a role, which comes with a set of permissions, and members who may assume that role.
  final pulumi.Input<List<ManagedFolderIamPolicyBindingsItem>>? bindings;
  final pulumi.Input<String> bucket;

  /// HTTP 1.1  Entity tag for the policy.
  final pulumi.Input<String>? etag;

  /// The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  final pulumi.Input<String>? kind;
  final pulumi.Input<String> managedFolder;

  /// The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  final pulumi.Input<String>? resourceId;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  final pulumi.Input<String>? userProject;

  /// The IAM policy format version.
  final pulumi.Input<int>? version;

  /// Creates a new [ManagedFolderIamPolicyArgs].
  /// [bindings] An association between a role, which comes with a set of permissions, and members who may assume that role.
  /// [bucket] Required.
  /// [etag] HTTP 1.1  Entity tag for the policy.
  /// [kind] The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  /// [managedFolder] Required.
  /// [resourceId] The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  /// [userProject] The project to be billed for this request. Required for Requester Pays buckets.
  /// [version] The IAM policy format version.
  ManagedFolderIamPolicyArgs({
    this.bindings,
    required this.bucket,
    this.etag,
    this.kind,
    required this.managedFolder,
    this.resourceId,
    this.userProject,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindings':
          ?pulumi.Input.mapOptionalInputValue<
            List<ManagedFolderIamPolicyBindingsItem>,
            List<Map<String, dynamic>>
          >(
            bindings,
            (value) =>
                pulumi.Input.encodeList<
                  ManagedFolderIamPolicyBindingsItem,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'bucket': bucket,
      'etag': ?etag,
      'kind': ?kind,
      'managedFolder': managedFolder,
      'resourceId': ?resourceId,
      'userProject': ?userProject,
      'version': ?version,
    };
  }

  factory ManagedFolderIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ManagedFolderIamPolicyArgs(
      bindings: (() {
        final guardedValue = map['bindings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ManagedFolderIamPolicyBindingsItem>(
            guardedValue,
            (value) => ManagedFolderIamPolicyBindingsItem.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedFolder: pulumi.Input.fromValue(map['managedFolder'] as String),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userProject: (() {
        final guardedValue = map['userProject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
