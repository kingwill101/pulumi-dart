import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'daemon_set_apps_v1beta2.dart';
import 'daemon_set_list_apps_v1beta2_args.dart';

/// DaemonSetList is a collection of daemon sets.
class DaemonSetListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// A list of daemon sets.
  late final pulumi.Output<List<DaemonSetAppsV1beta2>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [DaemonSetListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DaemonSetListResource]. {@macro pulumi_apps_v1beta2_daemon_set_list_apps_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DaemonSetListResource(
    String name, {
    DaemonSetListAppsV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apps/v1beta2:DaemonSetList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<DaemonSetAppsV1beta2>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DaemonSetAppsV1beta2>(guardedValue, (value) => DaemonSetAppsV1beta2.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DaemonSetListResource] resource.
  DaemonSetListResource.reference(String urn)
    : super(
        'kubernetes:apps/v1beta2:DaemonSetList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<DaemonSetAppsV1beta2>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DaemonSetAppsV1beta2>(guardedValue, (value) => DaemonSetAppsV1beta2.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
