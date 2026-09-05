import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'pod_disruption_budget.dart';
import 'pod_disruption_budget_list_args.dart';

/// PodDisruptionBudgetList is a collection of PodDisruptionBudgets.
class PodDisruptionBudgetListPolicyV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is a list of PodDisruptionBudgets
  late final pulumi.Output<List<PodDisruptionBudget>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [PodDisruptionBudgetListPolicyV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodDisruptionBudgetListPolicyV1]. {@macro pulumi_policy_v1_pod_disruption_budget_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodDisruptionBudgetListPolicyV1(
    String name, {
    PodDisruptionBudgetListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:policy/v1:PodDisruptionBudgetList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<PodDisruptionBudget>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PodDisruptionBudget>(guardedValue, (value) => PodDisruptionBudget.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PodDisruptionBudgetListPolicyV1] resource.
  PodDisruptionBudgetListPolicyV1.reference(String urn)
    : super(
        'kubernetes:policy/v1:PodDisruptionBudgetList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<PodDisruptionBudget>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PodDisruptionBudget>(guardedValue, (value) => PodDisruptionBudget.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
