import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'job_patch_args.dart';
import 'job_spec_patch.dart';
import 'job_status_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// Job represents the configuration of a single job.
///
/// This resource waits until its status is ready before registering success
/// for create/update, and populating output properties from the current state of the resource.
/// The following conditions are used to determine whether the resource creation has
/// succeeded or failed:
///
/// 1. The Job's '.status.startTime' is set, which indicates that the Job has started running.
/// 2. The Job's '.status.conditions' has a status of type 'Complete', and a 'status' set
/// to 'True'.
/// 3. The Job's '.status.conditions' do not have a status of type 'Failed', with a
/// 'status' set to 'True'. If this condition is set, we should fail the Job immediately.
///
/// If the Job has not reached a Ready state after 10 minutes, it will
/// time out and mark the resource update as Failed. You can override the default timeout value
/// by setting the 'customTimeouts' option on the resource.
///
/// By default, if a resource failed to become ready in a previous update,
/// Pulumi will continue to wait for readiness on the next update. If you would prefer
/// to schedule a replacement for an unready resource on the next update, you can add the
/// "pulumi.com/replaceUnready": "true" annotation to the resource definition.
class JobPatchBatchV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;

  /// Specification of the desired behavior of a job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<JobSpecPatch?> spec;

  /// Current status of a job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<JobStatusPatch?> status;

  /// Creates a new [JobPatchBatchV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobPatchBatchV1]. {@macro pulumi_batch_v1_job_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobPatchBatchV1(
    String name, {
    JobPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:batch/v1:JobPatch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata');
    spec = registerOutput<JobSpecPatch?>('spec');
    status = registerOutput<JobStatusPatch?>('status');
  }
}
