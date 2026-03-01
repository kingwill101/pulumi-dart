import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'csinode_patch_args.dart';
import 'csinode_spec_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// CSINode holds information about all CSI drivers installed on a node. CSI drivers do not need to create the CSINode object directly. As long as they use the node-driver-registrar sidecar container, the kubelet will automatically populate the CSINode object for the CSI driver as part of kubelet plugin registration. CSINode has the same name as a node. If the object is missing, it means either there are no CSI Drivers available on the node, or the Kubelet version is low enough that it doesn't create this object. CSINode has an OwnerReference that points to the corresponding node object.
class CSINodePatchStorageK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object's metadata. metadata.name must be the Kubernetes node name.
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// spec is the specification of CSINode
  late final pulumi.Output<CSINodeSpecPatch?> spec;

  /// Creates a new [CSINodePatchStorageK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CSINodePatchStorageK8sIoV1]. {@macro pulumi_storage_k8s_io_v1_csinode_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CSINodePatchStorageK8sIoV1(
    String name, {
    CSINodePatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:storage.k8s.io/v1:CSINodePatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String?>('apiVersion');
    this.kind = registerOutput<String?>('kind');
    this.metadata = registerOutput<ObjectMetaPatch?>('metadata');
    this.spec = registerOutput<CSINodeSpecPatch?>('spec');
  }
}
