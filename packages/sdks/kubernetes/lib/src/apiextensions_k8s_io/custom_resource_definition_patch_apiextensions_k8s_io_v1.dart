import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'custom_resource_definition_patch_args.dart';
import 'custom_resource_definition_spec_patch.dart';
import 'custom_resource_definition_status_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// CustomResourceDefinition represents a resource that should be exposed on the API server.  Its name MUST be in the format &lt;.spec.name&gt;.&lt;.spec.group&gt;.
class CustomResourceDefinitionPatchApiextensionsK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object's metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// spec describes how the user wants the resources to appear
  late final pulumi.Output<CustomResourceDefinitionSpecPatch?> spec;
  /// status indicates the actual state of the CustomResourceDefinition
  late final pulumi.Output<CustomResourceDefinitionStatusPatch?> status;

  /// Creates a new [CustomResourceDefinitionPatchApiextensionsK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomResourceDefinitionPatchApiextensionsK8sIoV1]. {@macro pulumi_apiextensions_k8s_io_v1_custom_resource_definition_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomResourceDefinitionPatchApiextensionsK8sIoV1(
    String name, {
    CustomResourceDefinitionPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apiextensions.k8s.io/v1:CustomResourceDefinitionPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<CustomResourceDefinitionSpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomResourceDefinitionSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<CustomResourceDefinitionStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomResourceDefinitionStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
