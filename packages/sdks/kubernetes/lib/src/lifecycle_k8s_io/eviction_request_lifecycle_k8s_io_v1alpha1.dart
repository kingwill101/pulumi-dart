import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'eviction_request_args.dart';
import 'eviction_request_spec.dart';
import 'eviction_request_status.dart';

/// EvictionRequest defines a request that should ideally result in a graceful eviction of a .spec.target (e.g. termination of a pod).
///
/// The evictionrequest-controller observes intents of all EvictionRequests and transforms them into Evictions.
/// - .spec.requester is set as a label on the Eviction for easier lookup.
/// - Each target can have a set of responders assigned to it. Eviction objects are observed by
/// these responders, who implement the eviction logic and update the Eviction's status with
/// progress.
///
/// There is many-to-many relationship between EvictionRequests and Evictions in general. And many-to-one if the target is a  pod.
///
/// If all requesters withdraw their eviction intent for a common target, the eviction will be canceled. Deleting an EvictionRequest also counts as a withdrawal. Once all EvictionRequest of a target are removed, the corresponding Evictions are eventually garbage collected.
class EvictionRequestLifecycleK8sIoV1alpha1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec defines the eviction request specification. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<EvictionRequestSpec> spec;
  /// status represents the most recently observed status of the eviction request. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<EvictionRequestStatus?> status;

  /// Creates a new [EvictionRequestLifecycleK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EvictionRequestLifecycleK8sIoV1alpha1]. {@macro pulumi_lifecycle_k8s_io_v1alpha1_eviction_request_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EvictionRequestLifecycleK8sIoV1alpha1(
    String name, {
    EvictionRequestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:lifecycle.k8s.io/v1alpha1:EvictionRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<EvictionRequestSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvictionRequestSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<EvictionRequestStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvictionRequestStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [EvictionRequestLifecycleK8sIoV1alpha1] resource.
  EvictionRequestLifecycleK8sIoV1alpha1.reference(String urn)
    : super(
        'kubernetes:lifecycle.k8s.io/v1alpha1:EvictionRequest',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<EvictionRequestSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvictionRequestSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<EvictionRequestStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvictionRequestStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
