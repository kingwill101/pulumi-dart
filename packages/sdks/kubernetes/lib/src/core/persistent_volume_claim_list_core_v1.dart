import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'persistent_volume_claim.dart';
import 'persistent_volume_claim_list_args.dart';

/// PersistentVolumeClaimList is a list of PersistentVolumeClaim items.
class PersistentVolumeClaimListCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is a list of persistent volume claims. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  late final pulumi.Output<List<PersistentVolumeClaim>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [PersistentVolumeClaimListCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PersistentVolumeClaimListCoreV1]. {@macro pulumi_core_v1_persistent_volume_claim_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PersistentVolumeClaimListCoreV1(
    String name, {
    PersistentVolumeClaimListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:PersistentVolumeClaimList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<PersistentVolumeClaim>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PersistentVolumeClaim>(guardedValue, (value) => PersistentVolumeClaim.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PersistentVolumeClaimListCoreV1] resource.
  PersistentVolumeClaimListCoreV1.reference(String urn)
    : super(
        'kubernetes:core/v1:PersistentVolumeClaimList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<PersistentVolumeClaim>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PersistentVolumeClaim>(guardedValue, (value) => PersistentVolumeClaim.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
