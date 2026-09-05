import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'eviction_args.dart';
import 'eviction_spec.dart';
import 'eviction_status.dart';

/// Eviction initiates an eviction process, which should ideally result in a graceful eviction of a .spec.target (e.g. termination of a pod).
///
/// The evictionrequest-controller observes intents of all EvictionRequests and transforms them into Evictions. It manages the Eviction lifecycle. Requesters are preserved in .status.requesters even after they have withdrawn their request. If all requesters withdraw their eviction intent for a common target, the eviction will be canceled. Once all EvictionRequest corresponding to this Eviction .spec.target have been removed, this Eviction object will eventually be garbage collected.
///
/// If the target is a pod, the .status.targetResponders is populated from Pod's .spec.evictionResponders.
///
/// Responders should observe and communicate through the .status to help with the eviction of the target when they see their state == Active in .status.targetResponders. ResponderStatus struct should then be periodically updated to indicate the progress or completion of the eviction process by each responder in .status.responders. If .status.responders[].heartbeatTime is not updated within the heartbeat deadline defined by the Eviction API (currently 20 minutes), the eviction is passed over to the next responder with a lower priority.
///
/// If there are no other responders and the target is a pod, the last default imperative-eviction.k8s.io/evictor responder with a priority of 100 will evict the pod using the imperative Eviction API (pods/&lt;name&gt;/eviction subresource).
class EvictionLifecycleK8sIoV1alpha1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata. .metadata.name set by the evictionrequest-controller is purely informative and subject to change. .spec.target field should be used to identify the target precisesly.
  ///
  /// The requester and responder names will be used as label keys and added to the labels of the eviction in one of the following formats: 1. acme.io/foo: "requester" 2. acme.io/foo: "responder" 3. acme.io/foo: "requester-responder"
  ///
  /// Please see EvictionParticipantRole for available role label values.
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec defines the eviction specification. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<EvictionSpec> spec;
  /// status represents the most recently observed status of the eviction. Populated by responders and evictionrequest-controller. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<EvictionStatus?> status;

  /// Creates a new [EvictionLifecycleK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EvictionLifecycleK8sIoV1alpha1]. {@macro pulumi_lifecycle_k8s_io_v1alpha1_eviction_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EvictionLifecycleK8sIoV1alpha1(
    String name, {
    EvictionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:lifecycle.k8s.io/v1alpha1:Eviction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<EvictionSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvictionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<EvictionStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvictionStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [EvictionLifecycleK8sIoV1alpha1] resource.
  EvictionLifecycleK8sIoV1alpha1.reference(String urn)
    : super(
        'kubernetes:lifecycle.k8s.io/v1alpha1:Eviction',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<EvictionSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvictionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<EvictionStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvictionStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
