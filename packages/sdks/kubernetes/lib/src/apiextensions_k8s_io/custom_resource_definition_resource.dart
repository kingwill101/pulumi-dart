import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'custom_resource_definition_apiextensions_k8s_io_v1beta1_args.dart';
import 'custom_resource_definition_spec_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_definition_status_apiextensions_k8s_io_v1beta1.dart';

/// CustomResourceDefinition represents a resource that should be exposed on the API server.  Its name MUST be in the format &lt;.spec.name&gt;.&lt;.spec.group&gt;. Deprecated in v1.16, planned for removal in v1.19. Use apiextensions.k8s.io/v1 CustomResourceDefinition instead.
class CustomResourceDefinitionResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  late final pulumi.Output<ObjectMeta> metadata;

  /// spec describes how the user wants the resources to appear
  late final pulumi.Output<
    CustomResourceDefinitionSpecApiextensionsK8sIoV1beta1
  >
  spec;

  /// status indicates the actual state of the CustomResourceDefinition
  late final pulumi.Output<
    CustomResourceDefinitionStatusApiextensionsK8sIoV1beta1?
  >
  status;

  /// Creates a new [CustomResourceDefinitionResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomResourceDefinitionResource]. {@macro pulumi_apiextensions_k8s_io_v1beta1_custom_resource_definition_apiextensions_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomResourceDefinitionResource(
    String name, {
    CustomResourceDefinitionApiextensionsK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:apiextensions.k8s.io/v1beta1:CustomResourceDefinition',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec =
        registerOutput<CustomResourceDefinitionSpecApiextensionsK8sIoV1beta1>(
          'spec',
        );
    status =
        registerOutput<
          CustomResourceDefinitionStatusApiextensionsK8sIoV1beta1?
        >('status');
  }
}
