import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'ingress_networking_k8s_io_v1beta1_args.dart';
import 'ingress_spec_networking_k8s_io_v1beta1.dart';
import 'ingress_status_networking_k8s_io_v1beta1.dart';

/// Ingress is a collection of rules that allow inbound connections to reach the endpoints defined by a backend. An Ingress can be configured to give services externally-reachable urls, load balance traffic, terminate SSL, offer name based virtual hosting etc.
///
/// This resource waits until its status is ready before registering success
/// for create/update, and populating output properties from the current state of the resource.
/// The following conditions are used to determine whether the resource creation has
/// succeeded or failed:
///
/// 1.  Ingress object exists.
/// 2.  Endpoint objects exist with matching names for each Ingress path (except when Service
/// type is ExternalName).
/// 3.  Ingress entry exists for '.status.loadBalancer.ingress'.
///
/// If the Ingress has not reached a Ready state after 10 minutes, it will
/// time out and mark the resource update as Failed. You can override the default timeout value
/// by setting the 'customTimeouts' option on the resource.
class IngressResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// Spec is the desired state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<IngressSpecNetworkingK8sIoV1beta1> spec;

  /// Status is the current state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<IngressStatusNetworkingK8sIoV1beta1?> status;

  /// Creates a new [IngressResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IngressResource]. {@macro pulumi_networking_k8s_io_v1beta1_ingress_networking_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IngressResource(
    String name, {
    IngressNetworkingK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:networking.k8s.io/v1beta1:Ingress',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec = registerOutput<IngressSpecNetworkingK8sIoV1beta1>('spec');
    status = registerOutput<IngressStatusNetworkingK8sIoV1beta1?>('status');
  }
}
