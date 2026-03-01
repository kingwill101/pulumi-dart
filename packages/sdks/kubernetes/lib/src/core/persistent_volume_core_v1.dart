import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'persistent_volume_args.dart';
import 'persistent_volume_spec.dart';
import 'persistent_volume_status.dart';

/// PersistentVolume (PV) is a storage resource provisioned by an administrator. It is analogous to a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes
class PersistentVolumeCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec defines a specification of a persistent volume owned by the cluster. Provisioned by an administrator. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes
  late final pulumi.Output<PersistentVolumeSpec> spec;
  /// status represents the current information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes
  late final pulumi.Output<PersistentVolumeStatus?> status;

  /// Creates a new [PersistentVolumeCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PersistentVolumeCoreV1]. {@macro pulumi_core_v1_persistent_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PersistentVolumeCoreV1(
    String name, {
    PersistentVolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:PersistentVolume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.spec = registerOutput<PersistentVolumeSpec>('spec');
    this.status = registerOutput<PersistentVolumeStatus?>('status');
  }
}
