import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'binding_args.dart';
import 'object_reference.dart';

/// Binding ties one object to another; for example, a pod is bound to a node by a scheduler.
class BindingCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// The target object that you want to bind to the standard object.
  late final pulumi.Output<ObjectReference> target;

  /// Creates a new [BindingCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BindingCoreV1]. {@macro pulumi_core_v1_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BindingCoreV1(
    String name, {
    BindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:Binding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    target = registerOutput<ObjectReference>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [BindingCoreV1] resource.
  BindingCoreV1.reference(String urn)
    : super(
        'kubernetes:core/v1:Binding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    target = registerOutput<ObjectReference>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
