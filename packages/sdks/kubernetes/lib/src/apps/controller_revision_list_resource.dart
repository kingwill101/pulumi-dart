import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'controller_revision_list_apps_v1beta1_args.dart';
import 'controller_revision_resource.dart';

/// ControllerRevisionList is a resource containing a list of ControllerRevision objects.
class ControllerRevisionListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is the list of ControllerRevisions
  late final pulumi.Output<List<ControllerRevisionResource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ControllerRevisionListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControllerRevisionListResource]. {@macro pulumi_apps_v1beta1_controller_revision_list_apps_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControllerRevisionListResource(
    String name, {
    ControllerRevisionListAppsV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apps/v1beta1:ControllerRevisionList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<ControllerRevisionResource>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
