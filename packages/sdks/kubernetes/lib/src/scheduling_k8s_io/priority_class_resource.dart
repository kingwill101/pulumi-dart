import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'priority_class_scheduling_k8s_io_v1alpha1_args.dart';

/// DEPRECATED - This group version of PriorityClass is deprecated by scheduling.k8s.io/v1/PriorityClass. PriorityClass defines mapping from a priority class name to the priority integer value. The value can be any valid integer.
class PriorityClassResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// description is an arbitrary string that usually provides guidelines on when this priority class should be used.
  late final pulumi.Output<String> description;
  /// globalDefault specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority.
  late final pulumi.Output<bool> globalDefault;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. This field is alpha-level and is only honored by servers that enable the NonPreemptingPriority feature.
  late final pulumi.Output<String> preemptionPolicy;
  /// The value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
  late final pulumi.Output<int> value;

  /// Creates a new [PriorityClassResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PriorityClassResource]. {@macro pulumi_scheduling_k8s_io_v1alpha1_priority_class_scheduling_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PriorityClassResource(
    String name, {
    PriorityClassSchedulingK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:scheduling.k8s.io/v1alpha1:PriorityClass',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    description = registerOutput<String>('description');
    globalDefault = registerOutput<bool>('globalDefault');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preemptionPolicy = registerOutput<String>('preemptionPolicy');
    value = registerOutput<int>('value');
  }

  /// Creates a typed reference to an existing [PriorityClassResource] resource.
  PriorityClassResource.reference(String urn)
    : super(
        'kubernetes:scheduling.k8s.io/v1alpha1:PriorityClass',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    description = registerOutput<String>('description');
    globalDefault = registerOutput<bool>('globalDefault');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preemptionPolicy = registerOutput<String>('preemptionPolicy');
    value = registerOutput<int>('value');
  }
}
