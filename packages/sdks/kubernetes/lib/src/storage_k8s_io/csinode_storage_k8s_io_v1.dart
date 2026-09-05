import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'csinode_args.dart';
import 'csinode_spec.dart';
import 'csinode_status.dart';

/// CSINode holds information about all CSI drivers installed on a node. CSI drivers do not need to create the CSINode object directly. As long as they use the node-driver-registrar sidecar container, the kubelet will automatically populate the CSINode object for the CSI driver as part of kubelet plugin registration. CSINode has the same name as a node. If the object is missing, it means either there are no CSI Drivers available on the node, or the Kubelet version is low enough that it doesn't create this object. CSINode has an OwnerReference that points to the corresponding node object.
class CSINodeStorageK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata is the standard object metadata. metadata.name must be the Kubernetes node name.
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec is the specification of CSINode
  late final pulumi.Output<CSINodeSpec> spec;
  /// status contains health and status information for the node's storage.
  late final pulumi.Output<CSINodeStatus?> status;

  /// Creates a new [CSINodeStorageK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CSINodeStorageK8sIoV1]. {@macro pulumi_storage_k8s_io_v1_csinode_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CSINodeStorageK8sIoV1(
    String name, {
    CSINodeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:storage.k8s.io/v1:CSINode',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<CSINodeSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CSINodeSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<CSINodeStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CSINodeStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [CSINodeStorageK8sIoV1] resource.
  CSINodeStorageK8sIoV1.reference(String urn)
    : super(
        'kubernetes:storage.k8s.io/v1:CSINode',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<CSINodeSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CSINodeSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<CSINodeStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CSINodeStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
