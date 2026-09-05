import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'namespace_args.dart';
import 'namespace_spec.dart';
import 'namespace_status.dart';

/// Namespace provides a scope for Names. Use of multiple namespaces is optional.
class NamespaceCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec defines the behavior of the Namespace. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<NamespaceSpec> spec;
  /// Status describes the current status of a Namespace. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<NamespaceStatus?> status;

  /// Creates a new [NamespaceCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceCoreV1]. {@macro pulumi_core_v1_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceCoreV1(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<NamespaceSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamespaceSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<NamespaceStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamespaceStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [NamespaceCoreV1] resource.
  NamespaceCoreV1.reference(String urn)
    : super(
        'kubernetes:core/v1:Namespace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<NamespaceSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamespaceSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<NamespaceStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamespaceStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
