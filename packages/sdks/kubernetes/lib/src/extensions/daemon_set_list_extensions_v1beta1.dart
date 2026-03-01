import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'daemon_set_extensions_v1beta1.dart';
import 'daemon_set_list_args.dart';

/// DaemonSetList is a collection of daemon sets.
class DaemonSetListExtensionsV1beta1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// A list of daemon sets.
  late final pulumi.Output<List<DaemonSetExtensionsV1beta1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [DaemonSetListExtensionsV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DaemonSetListExtensionsV1beta1]. {@macro pulumi_extensions_v1beta1_daemon_set_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DaemonSetListExtensionsV1beta1(
    String name, {
    DaemonSetListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:extensions/v1beta1:DaemonSetList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<DaemonSetExtensionsV1beta1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
