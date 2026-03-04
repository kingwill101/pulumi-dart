import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'controller_revision_args.dart';

/// ControllerRevision implements an immutable snapshot of state data. Clients are responsible for serializing and deserializing the objects that contain their internal state. Once a ControllerRevision has been successfully created, it can not be updated. The API Server will fail validation of all requests that attempt to mutate the Data field. ControllerRevisions may, however, be deleted. Note that, due to its use by both the DaemonSet and StatefulSet controllers for update and rollback, this object is beta. However, it may be subject to name and representation changes in future releases, and clients should not depend on its stability. It is primarily for internal use by controllers.
class ControllerRevisionAppsV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Data is the serialized representation of the state.
  late final pulumi.Output<dynamic> data;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// Revision indicates the revision of the state represented by Data.
  late final pulumi.Output<int> revision;

  /// Creates a new [ControllerRevisionAppsV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControllerRevisionAppsV1]. {@macro pulumi_apps_v1_controller_revision_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControllerRevisionAppsV1(
    String name, {
    ControllerRevisionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:apps/v1:ControllerRevision',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    data = registerOutput<dynamic>('data');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    revision = registerOutput<int>('revision');
  }
}
