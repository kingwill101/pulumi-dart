import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'stateful_set_apps_v1beta2.dart';
import 'stateful_set_list_apps_v1beta2_args.dart';

/// StatefulSetList is a collection of StatefulSets.
class StatefulSetListAppsV1beta2Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  late final pulumi.Output<List<StatefulSetAppsV1beta2>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [StatefulSetListAppsV1beta2Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StatefulSetListAppsV1beta2Resource]. {@macro pulumi_apps_v1beta2_stateful_set_list_apps_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StatefulSetListAppsV1beta2Resource(
    String name, {
    StatefulSetListAppsV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apps/v1beta2:StatefulSetList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<StatefulSetAppsV1beta2>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StatefulSetAppsV1beta2>(guardedValue, (value) => StatefulSetAppsV1beta2.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [StatefulSetListAppsV1beta2Resource] resource.
  StatefulSetListAppsV1beta2Resource.reference(String urn)
    : super(
        'kubernetes:apps/v1beta2:StatefulSetList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<StatefulSetAppsV1beta2>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StatefulSetAppsV1beta2>(guardedValue, (value) => StatefulSetAppsV1beta2.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
