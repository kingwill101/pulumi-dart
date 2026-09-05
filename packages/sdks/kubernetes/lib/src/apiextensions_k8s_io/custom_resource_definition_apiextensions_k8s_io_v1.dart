import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'custom_resource_definition_args.dart';
import 'custom_resource_definition_spec.dart';
import 'custom_resource_definition_status.dart';

/// CustomResourceDefinition represents a resource that should be exposed on the API server.  Its name MUST be in the format &lt;.spec.name&gt;.&lt;.spec.group&gt;.
class CustomResourceDefinitionApiextensionsK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec describes how the user wants the resources to appear
  late final pulumi.Output<CustomResourceDefinitionSpec> spec;
  /// status indicates the actual state of the CustomResourceDefinition
  late final pulumi.Output<CustomResourceDefinitionStatus?> status;

  /// Creates a new [CustomResourceDefinitionApiextensionsK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomResourceDefinitionApiextensionsK8sIoV1]. {@macro pulumi_apiextensions_k8s_io_v1_custom_resource_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomResourceDefinitionApiextensionsK8sIoV1(
    String name, {
    CustomResourceDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apiextensions.k8s.io/v1:CustomResourceDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<CustomResourceDefinitionSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomResourceDefinitionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<CustomResourceDefinitionStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomResourceDefinitionStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [CustomResourceDefinitionApiextensionsK8sIoV1] resource.
  CustomResourceDefinitionApiextensionsK8sIoV1.reference(String urn)
    : super(
        'kubernetes:apiextensions.k8s.io/v1:CustomResourceDefinition',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<CustomResourceDefinitionSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomResourceDefinitionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<CustomResourceDefinitionStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomResourceDefinitionStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
