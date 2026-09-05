import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_claim_template_args.dart';
import 'resource_claim_template_spec.dart';

/// ResourceClaimTemplate is used to produce ResourceClaim objects.
class ResourceClaimTemplateResourceK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Describes the ResourceClaim that is to be generated.
  ///
  /// This field is immutable. A ResourceClaim will get created by the control plane for a Pod when needed and then not get updated anymore.
  late final pulumi.Output<ResourceClaimTemplateSpec> spec;

  /// Creates a new [ResourceClaimTemplateResourceK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClaimTemplateResourceK8sIoV1]. {@macro pulumi_resource_k8s_io_v1_resource_claim_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClaimTemplateResourceK8sIoV1(
    String name, {
    ResourceClaimTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1:ResourceClaimTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ResourceClaimTemplateSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceClaimTemplateSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ResourceClaimTemplateResourceK8sIoV1] resource.
  ResourceClaimTemplateResourceK8sIoV1.reference(String urn)
    : super(
        'kubernetes:resource.k8s.io/v1:ResourceClaimTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ResourceClaimTemplateSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceClaimTemplateSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
