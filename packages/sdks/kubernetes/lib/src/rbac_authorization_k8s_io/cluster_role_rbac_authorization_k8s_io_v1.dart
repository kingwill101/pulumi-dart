import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'aggregation_rule.dart';
import 'cluster_role_args.dart';
import 'policy_rule.dart';

/// ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
class ClusterRoleRbacAuthorizationK8sIoV1 extends pulumi.CustomResource {
  /// AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
  late final pulumi.Output<AggregationRule> aggregationRule;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata.
  late final pulumi.Output<ObjectMeta> metadata;
  /// Rules holds all the PolicyRules for this ClusterRole
  late final pulumi.Output<List<PolicyRule>> rules;

  /// Creates a new [ClusterRoleRbacAuthorizationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterRoleRbacAuthorizationK8sIoV1]. {@macro pulumi_rbac_authorization_k8s_io_v1_cluster_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterRoleRbacAuthorizationK8sIoV1(
    String name, {
    ClusterRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:rbac.authorization.k8s.io/v1:ClusterRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aggregationRule = registerOutput<AggregationRule>('aggregationRule');
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.rules = registerOutput<List<PolicyRule>>('rules');
  }
}
