import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_iam_policy_args.dart';
import 'object_iam_policy_bindings_item_response.dart';

/// Updates an IAM policy for the specified object.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class ObjectIamPolicy extends pulumi.CustomResource {
  /// An association between a role, which comes with a set of permissions, and members who may assume that role.
  late final pulumi.Output<List<ObjectIamPolicyBindingsItemResponse>> bindings;
  late final pulumi.Output<String> bucket;
  /// HTTP 1.1  Entity tag for the policy.
  late final pulumi.Output<String> etag;
  /// If present, selects a specific revision of this object (as opposed to the latest version, the default).
  late final pulumi.Output<String?> generation;
  /// The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  late final pulumi.Output<String> kind;
  late final pulumi.Output<String> object_;
  /// The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  late final pulumi.Output<String> resourceId;
  /// The project to be billed for this request. Required for Requester Pays buckets.
  late final pulumi.Output<String?> userProject;
  /// The IAM policy format version.
  late final pulumi.Output<int> version;

  /// Creates a new [ObjectIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObjectIamPolicy]. {@macro pulumi_storage_v1_object_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObjectIamPolicy(
    String name, {
    ObjectIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:storage/v1:ObjectIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['bucket', 'object']).merge(options),
        ) {
    bindings = registerOutput<List<ObjectIamPolicyBindingsItemResponse>>('bindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ObjectIamPolicyBindingsItemResponse>(guardedValue, (value) => ObjectIamPolicyBindingsItemResponse.fromMap((value as Map).cast<String, dynamic>())); });
    bucket = registerOutput<String>('bucket');
    etag = registerOutput<String>('etag');
    generation = registerOutput<String?>('generation');
    kind = registerOutput<String>('kind');
    object_ = registerOutput<String>('object');
    resourceId = registerOutput<String>('resourceId');
    userProject = registerOutput<String?>('userProject');
    version = registerOutput<int>('version');
  }

  /// Creates a typed reference to an existing [ObjectIamPolicy] resource.
  ObjectIamPolicy.reference(String urn)
    : super(
        'google-native:storage/v1:ObjectIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bindings = registerOutput<List<ObjectIamPolicyBindingsItemResponse>>('bindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ObjectIamPolicyBindingsItemResponse>(guardedValue, (value) => ObjectIamPolicyBindingsItemResponse.fromMap((value as Map).cast<String, dynamic>())); });
    bucket = registerOutput<String>('bucket');
    etag = registerOutput<String>('etag');
    generation = registerOutput<String?>('generation');
    kind = registerOutput<String>('kind');
    object_ = registerOutput<String>('object');
    resourceId = registerOutput<String>('resourceId');
    userProject = registerOutput<String?>('userProject');
    version = registerOutput<int>('version');
  }
}
