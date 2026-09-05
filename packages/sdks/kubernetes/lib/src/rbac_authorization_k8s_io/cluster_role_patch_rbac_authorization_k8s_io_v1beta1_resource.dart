import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'aggregation_rule_patch_rbac_authorization_k8s_io_v1beta1.dart';
import 'cluster_role_patch_rbac_authorization_k8s_io_v1beta1_args.dart';
import 'policy_rule_patch_rbac_authorization_k8s_io_v1beta1.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding. Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 ClusterRole, and will no longer be served in v1.20.
class ClusterRolePatchRbacAuthorizationK8sIoV1beta1Resource extends pulumi.CustomResource {
  /// AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
  late final pulumi.Output<AggregationRulePatchRbacAuthorizationK8sIoV1beta1?> aggregationRule;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object's metadata.
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Rules holds all the PolicyRules for this ClusterRole
  late final pulumi.Output<List<PolicyRulePatchRbacAuthorizationK8sIoV1beta1>?> rules;

  /// Creates a new [ClusterRolePatchRbacAuthorizationK8sIoV1beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterRolePatchRbacAuthorizationK8sIoV1beta1Resource]. {@macro pulumi_rbac_authorization_k8s_io_v1beta1_cluster_role_patch_rbac_authorization_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterRolePatchRbacAuthorizationK8sIoV1beta1Resource(
    String name, {
    ClusterRolePatchRbacAuthorizationK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:rbac.authorization.k8s.io/v1beta1:ClusterRolePatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aggregationRule = registerOutput<AggregationRulePatchRbacAuthorizationK8sIoV1beta1?>('aggregationRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AggregationRulePatchRbacAuthorizationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<List<PolicyRulePatchRbacAuthorizationK8sIoV1beta1>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyRulePatchRbacAuthorizationK8sIoV1beta1>(guardedValue, (value) => PolicyRulePatchRbacAuthorizationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [ClusterRolePatchRbacAuthorizationK8sIoV1beta1Resource] resource.
  ClusterRolePatchRbacAuthorizationK8sIoV1beta1Resource.reference(String urn)
    : super(
        'kubernetes:rbac.authorization.k8s.io/v1beta1:ClusterRolePatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aggregationRule = registerOutput<AggregationRulePatchRbacAuthorizationK8sIoV1beta1?>('aggregationRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AggregationRulePatchRbacAuthorizationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<List<PolicyRulePatchRbacAuthorizationK8sIoV1beta1>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyRulePatchRbacAuthorizationK8sIoV1beta1>(guardedValue, (value) => PolicyRulePatchRbacAuthorizationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
