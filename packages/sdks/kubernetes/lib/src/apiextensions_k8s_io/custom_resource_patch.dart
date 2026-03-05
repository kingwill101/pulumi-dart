import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'custom_resource_patch_args.dart';

/// CustomResourcePatch represents an instance of a CustomResourceDefinition (CRD). For example, the
/// CoreOS Prometheus operator exposes a CRD `monitoring.coreos.com/ServiceMonitor`; to
/// instantiate this as a Pulumi resource, one could call `new CustomResourcePatch`, passing the
/// `ServiceMonitor` resource definition as an argument.
class CustomResourcePatch extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  late final pulumi.Output<ObjectMeta?> metadata;

  /// Creates a new [CustomResourcePatch].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomResourcePatch]. {@macro pulumi_apiextensions_k8s_io_custom_resource_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomResourcePatch(
    String name, {
    CustomResourcePatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apiextensions.k8s.io:CustomResourcePatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
