import 'package:pulumi/pulumi.dart' as pulumi;
import '../accesscontextmanager/condition.dart';
import 'bucket_iam_member_args.dart';

/// Updates an IAM policy for the specified bucket.
class BucketIamMember extends pulumi.CustomResource {
  /// An IAM Condition for a given binding. See https://cloud.google.com/iam/docs/conditions-overview for additional details.
  late final pulumi.Output<Condition?> condition;
  /// The etag of the resource's IAM policy.
  late final pulumi.Output<String> etag;
  /// A collection of identifiers for members who may assume the provided role. Recognized identifiers are as follows:
  /// - allUsers — A special identifier that represents anyone on the internet; with or without a Google account.
  /// - allAuthenticatedUsers — A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// - user:emailid — An email address that represents a specific account. For example, user:alice@gmail.com or user:joe@example.com.
  /// - serviceAccount:emailid — An email address that represents a service account. For example,  serviceAccount:my-other-app@appspot.gserviceaccount.com .
  /// - group:emailid — An email address that represents a Google group. For example, group:admins@example.com.
  /// - domain:domain — A Google Apps domain name that represents all the users of that domain. For example, domain:google.com or domain:example.com.
  /// - projectOwner:projectid — Owners of the given project. For example, projectOwner:my-example-project
  /// - projectEditor:projectid — Editors of the given project. For example, projectEditor:my-example-project
  /// - projectViewer:projectid — Viewers of the given project. For example, projectViewer:my-example-project
  late final pulumi.Output<String> member;
  /// The name of the resource to manage IAM policies for.
  late final pulumi.Output<String> name;
  /// The project in which the resource belongs. If it is not provided, a default will be supplied.
  late final pulumi.Output<String> project;
  /// The role to which members belong. Two types of roles are supported: new IAM roles, which grant permissions that do not map directly to those provided by ACLs, and legacy IAM roles, which do map directly to ACL permissions. All roles are of the format roles/storage.specificRole.
  /// The new IAM roles are:
  /// - roles/storage.admin — Full control of Google Cloud Storage resources.
  /// - roles/storage.objectViewer — Read-Only access to Google Cloud Storage objects.
  /// - roles/storage.objectCreator — Access to create objects in Google Cloud Storage.
  /// - roles/storage.objectAdmin — Full control of Google Cloud Storage objects.   The legacy IAM roles are:
  /// - roles/storage.legacyObjectReader — Read-only access to objects without listing. Equivalent to an ACL entry on an object with the READER role.
  /// - roles/storage.legacyObjectOwner — Read/write access to existing objects without listing. Equivalent to an ACL entry on an object with the OWNER role.
  /// - roles/storage.legacyBucketReader — Read access to buckets with object listing. Equivalent to an ACL entry on a bucket with the READER role.
  /// - roles/storage.legacyBucketWriter — Read access to buckets with object listing/creation/deletion. Equivalent to an ACL entry on a bucket with the WRITER role.
  /// - roles/storage.legacyBucketOwner — Read and write access to existing buckets with object listing/creation/deletion. Equivalent to an ACL entry on a bucket with the OWNER role.
  late final pulumi.Output<String> role;

  /// Creates a new [BucketIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketIamMember]. {@macro pulumi_storage_v1_bucket_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketIamMember(
    String name, {
    BucketIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:storage/v1:BucketIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<Condition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
