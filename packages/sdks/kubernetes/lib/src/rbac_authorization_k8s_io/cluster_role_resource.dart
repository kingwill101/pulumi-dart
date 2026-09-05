import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'aggregation_rule_rbac_authorization_k8s_io_v1alpha1.dart';
import 'cluster_role_rbac_authorization_k8s_io_v1alpha1_args.dart';
import 'policy_rule_rbac_authorization_k8s_io_v1alpha1.dart';

/// ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding. Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 ClusterRole, and will no longer be served in v1.20.
class ClusterRoleResource extends pulumi.CustomResource {
  /// AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
  late final pulumi.Output<AggregationRuleRbacAuthorizationK8sIoV1alpha1> aggregationRule;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata.
  late final pulumi.Output<ObjectMeta> metadata;
  /// Rules holds all the PolicyRules for this ClusterRole
  late final pulumi.Output<List<PolicyRuleRbacAuthorizationK8sIoV1alpha1>> rules;

  /// Creates a new [ClusterRoleResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterRoleResource]. {@macro pulumi_rbac_authorization_k8s_io_v1alpha1_cluster_role_rbac_authorization_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterRoleResource(
    String name, {
    ClusterRoleRbacAuthorizationK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:rbac.authorization.k8s.io/v1alpha1:ClusterRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aggregationRule = registerOutput<AggregationRuleRbacAuthorizationK8sIoV1alpha1>('aggregationRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AggregationRuleRbacAuthorizationK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<List<PolicyRuleRbacAuthorizationK8sIoV1alpha1>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyRuleRbacAuthorizationK8sIoV1alpha1>(guardedValue, (value) => PolicyRuleRbacAuthorizationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [ClusterRoleResource] resource.
  ClusterRoleResource.reference(String urn)
    : super(
        'kubernetes:rbac.authorization.k8s.io/v1alpha1:ClusterRole',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aggregationRule = registerOutput<AggregationRuleRbacAuthorizationK8sIoV1alpha1>('aggregationRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AggregationRuleRbacAuthorizationK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<List<PolicyRuleRbacAuthorizationK8sIoV1alpha1>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyRuleRbacAuthorizationK8sIoV1alpha1>(guardedValue, (value) => PolicyRuleRbacAuthorizationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
