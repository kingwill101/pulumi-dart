import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_class_parameters_args.dart';
import 'resource_class_parameters_reference_resource_k8s_io_v1alpha2.dart';

/// ResourceClassParameters defines resource requests for a ResourceClass in an in-tree format understood by Kubernetes.
class ResourceClassParametersResourceK8sIoV1alpha2
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Filters describes additional contraints that must be met when using the class.
  late final pulumi.Output<List<Map<String, dynamic>>> filters;

  /// If this object was created from some other resource, then this links back to that resource. This field is used to find the in-tree representation of the class parameters when the parameter reference of the class refers to some unknown type.
  late final pulumi.Output<
    ResourceClassParametersReferenceResourceK8sIoV1alpha2
  >
  generatedFrom;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// VendorParameters are arbitrary setup parameters for all claims using this class. They are ignored while allocating the claim. There must not be more than one entry per driver.
  late final pulumi.Output<List<Map<String, dynamic>>> vendorParameters;

  /// Creates a new [ResourceClassParametersResourceK8sIoV1alpha2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClassParametersResourceK8sIoV1alpha2]. {@macro pulumi_resource_k8s_io_v1alpha2_resource_class_parameters_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClassParametersResourceK8sIoV1alpha2(
    String name, {
    ResourceClassParametersArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:resource.k8s.io/v1alpha2:ResourceClassParameters',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    filters = registerOutput<List<Map<String, dynamic>>>('filters');
    generatedFrom =
        registerOutput<ResourceClassParametersReferenceResourceK8sIoV1alpha2>(
          'generatedFrom',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ResourceClassParametersReferenceResourceK8sIoV1alpha2.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectMeta.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    vendorParameters = registerOutput<List<Map<String, dynamic>>>(
      'vendorParameters',
    );
  }
}
