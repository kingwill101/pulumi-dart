import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'service_patch_args.dart';
import 'service_spec_patch.dart';
import 'service_status_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// Service is a named abstraction of software service (for example, mysql) consisting of local port (for example 3306) that the proxy listens on, and the selector that determines which pods will answer requests sent through the proxy.
///
/// This resource waits until its status is ready before registering success
/// for create/update, and populating output properties from the current state of the resource.
/// The following conditions are used to determine whether the resource creation has
/// succeeded or failed:
///
/// 1. Service object exists.
/// 2. Related Endpoint objects are created. Each time we get an update, wait 10 seconds
/// for any stragglers.
/// 3. There are no "not ready" endpoints -- unless the Service is an "empty
/// headless" Service [1], a Service with '.spec.type: ExternalName', or a Service
/// without a selector.
/// 4. External IP address is allocated (if Service has '.spec.type: LoadBalancer').
///
/// If the Service has not reached a Ready state after 10 minutes, it will
/// time out and mark the resource update as Failed. You can override the default timeout value
/// by setting the 'customTimeouts' option on the resource.
class ServicePatchCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Spec defines the behavior of a service. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ServiceSpecPatch?> spec;
  /// Most recently observed status of the service. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ServiceStatusPatch?> status;

  /// Creates a new [ServicePatchCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicePatchCoreV1]. {@macro pulumi_core_v1_service_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicePatchCoreV1(
    String name, {
    ServicePatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:ServicePatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String?>('apiVersion');
    this.kind = registerOutput<String?>('kind');
    this.metadata = registerOutput<ObjectMetaPatch?>('metadata');
    this.spec = registerOutput<ServiceSpecPatch?>('spec');
    this.status = registerOutput<ServiceStatusPatch?>('status');
  }
}
