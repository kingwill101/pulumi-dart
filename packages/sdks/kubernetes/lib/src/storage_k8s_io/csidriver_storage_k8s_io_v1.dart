import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'csidriver_args.dart';
import 'csidriver_spec.dart';

/// CSIDriver captures information about a Container Storage Interface (CSI) volume driver deployed on the cluster. Kubernetes attach detach controller uses this object to determine whether attach is required. Kubelet uses this object to determine whether pod information needs to be passed on mount. CSIDriver objects are non-namespaced.
class CSIDriverStorageK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object metadata. metadata.Name indicates the name of the CSI driver that this object refers to; it MUST be the same name returned by the CSI GetPluginName() call for that driver. The driver name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), dots (.), and alphanumerics between. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// spec represents the specification of the CSI Driver.
  late final pulumi.Output<CSIDriverSpec> spec;

  /// Creates a new [CSIDriverStorageK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CSIDriverStorageK8sIoV1]. {@macro pulumi_storage_k8s_io_v1_csidriver_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CSIDriverStorageK8sIoV1(
    String name, {
    CSIDriverArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:storage.k8s.io/v1:CSIDriver',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec = registerOutput<CSIDriverSpec>('spec');
  }
}
