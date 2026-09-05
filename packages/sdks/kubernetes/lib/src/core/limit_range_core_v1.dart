import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'limit_range_args.dart';
import 'limit_range_spec.dart';

/// LimitRange sets resource usage limits for each kind of resource in a Namespace.
class LimitRangeCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec defines the limits enforced. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<LimitRangeSpec> spec;

  /// Creates a new [LimitRangeCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LimitRangeCoreV1]. {@macro pulumi_core_v1_limit_range_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LimitRangeCoreV1(
    String name, {
    LimitRangeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:LimitRange',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<LimitRangeSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LimitRangeSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [LimitRangeCoreV1] resource.
  LimitRangeCoreV1.reference(String urn)
    : super(
        'kubernetes:core/v1:LimitRange',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<LimitRangeSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LimitRangeSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
