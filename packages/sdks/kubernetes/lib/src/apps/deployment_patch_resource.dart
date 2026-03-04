import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'deployment_patch_apps_v1beta1_args.dart';
import 'deployment_spec_patch_apps_v1beta1.dart';
import 'deployment_status_patch_apps_v1beta1.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// Deployment enables declarative updates for Pods and ReplicaSets.
///
/// This resource waits until its status is ready before registering success
/// for create/update, and populating output properties from the current state of the resource.
/// The following conditions are used to determine whether the resource creation has
/// succeeded or failed:
///
/// 1. The Deployment has begun to be updated by the Deployment controller. If the current
/// generation of the Deployment is &gt; 1, then this means that the current generation must
/// be different from the generation reported by the last outputs.
/// 2. There exists a ReplicaSet whose revision is equal to the current revision of the
/// Deployment.
/// 3. The Deployment's '.status.conditions' has a status of type 'Available' whose 'status'
/// member is set to 'True'.
/// 4. If the Deployment has generation &gt; 1, then '.status.conditions' has a status of type
/// 'Progressing', whose 'status' member is set to 'True', and whose 'reason' is
/// 'NewReplicaSetAvailable'. For generation &lt;= 1, this status field does not exist,
/// because it doesn't do a rollout (i.e., it simply creates the Deployment and
/// corresponding ReplicaSet), and therefore there is no rollout to mark as 'Progressing'.
///
/// If the Deployment has not reached a Ready state after 10 minutes, it will
/// time out and mark the resource update as Failed. You can override the default timeout value
/// by setting the 'customTimeouts' option on the resource.
class DeploymentPatchResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;

  /// Standard object metadata.
  late final pulumi.Output<ObjectMetaPatch?> metadata;

  /// Specification of the desired behavior of the Deployment.
  late final pulumi.Output<DeploymentSpecPatchAppsV1beta1?> spec;

  /// Most recently observed status of the Deployment.
  late final pulumi.Output<DeploymentStatusPatchAppsV1beta1?> status;

  /// Creates a new [DeploymentPatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentPatchResource]. {@macro pulumi_apps_v1beta1_deployment_patch_apps_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentPatchResource(
    String name, {
    DeploymentPatchAppsV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:apps/v1beta1:DeploymentPatch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata');
    spec = registerOutput<DeploymentSpecPatchAppsV1beta1?>('spec');
    status = registerOutput<DeploymentStatusPatchAppsV1beta1?>('status');
  }
}
