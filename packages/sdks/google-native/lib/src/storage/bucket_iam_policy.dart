import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_iam_policy_args.dart';

/// Updates an IAM policy for the specified bucket.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class BucketIamPolicy extends pulumi.CustomResource {
  /// An association between a role, which comes with a set of permissions, and members who may assume that role.
  late final pulumi.Output<List<Map<String, dynamic>>> bindings;
  late final pulumi.Output<String> bucket;

  /// HTTP 1.1  Entity tag for the policy.
  late final pulumi.Output<String> etag;

  /// The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  late final pulumi.Output<String> kind;

  /// The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  late final pulumi.Output<String> resourceId;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  late final pulumi.Output<String?> userProject;

  /// The IAM policy format version.
  late final pulumi.Output<int> version;

  /// Creates a new [BucketIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketIamPolicy]. {@macro pulumi_storage_v1_bucket_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketIamPolicy(
    String name, {
    BucketIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:storage/v1:BucketIamPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bindings = registerOutput<List<Map<String, dynamic>>>('bindings');
    bucket = registerOutput<String>('bucket');
    etag = registerOutput<String>('etag');
    kind = registerOutput<String>('kind');
    resourceId = registerOutput<String>('resourceId');
    userProject = registerOutput<String?>('userProject');
    version = registerOutput<int>('version');
  }
}
