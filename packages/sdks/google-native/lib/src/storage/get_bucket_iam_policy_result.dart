// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_iam_policy_bindings_item_response.dart';

/// Result data returned by getBucketIamPolicy.
class GetBucketIamPolicyResult {
  /// An association between a role, which comes with a set of permissions, and members who may assume that role.
  final List<BucketIamPolicyBindingsItemResponse>? bindings;
  /// HTTP 1.1  Entity tag for the policy.
  final String? etag;
  /// The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  final String? kind;
  /// The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  final String? resourceId;
  /// The IAM policy format version.
  final int? version;

  /// Creates a new [GetBucketIamPolicyResult].
  /// [bindings] An association between a role, which comes with a set of permissions, and members who may assume that role.
  /// [etag] HTTP 1.1  Entity tag for the policy.
  /// [kind] The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  /// [resourceId] The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  /// [version] The IAM policy format version.
  const GetBucketIamPolicyResult({
    this.bindings,
    this.etag,
    this.kind,
    this.resourceId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindings': ?(() { final guardedValue = bindings; if (guardedValue == null) return null; return pulumi.Input.encodeList<BucketIamPolicyBindingsItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'kind': ?kind,
      'resourceId': ?resourceId,
      'version': ?version,
    };
  }

  factory GetBucketIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetBucketIamPolicyResult(
      bindings: (() { final guardedValue = map['bindings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketIamPolicyBindingsItemResponse>(guardedValue, (value) => BucketIamPolicyBindingsItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
