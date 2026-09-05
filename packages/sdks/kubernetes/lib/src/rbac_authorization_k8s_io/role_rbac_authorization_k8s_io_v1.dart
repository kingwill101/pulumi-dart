import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'policy_rule.dart';
import 'role_args.dart';

/// Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding.
class RoleRbacAuthorizationK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata is the standard object's metadata.
  late final pulumi.Output<ObjectMeta> metadata;
  /// rules holds all the PolicyRules for this Role
  late final pulumi.Output<List<PolicyRule>> rules;

  /// Creates a new [RoleRbacAuthorizationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleRbacAuthorizationK8sIoV1]. {@macro pulumi_rbac_authorization_k8s_io_v1_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleRbacAuthorizationK8sIoV1(
    String name, {
    RoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:rbac.authorization.k8s.io/v1:Role',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<List<PolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyRule>(guardedValue, (value) => PolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [RoleRbacAuthorizationK8sIoV1] resource.
  RoleRbacAuthorizationK8sIoV1.reference(String urn)
    : super(
        'kubernetes:rbac.authorization.k8s.io/v1:Role',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<List<PolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyRule>(guardedValue, (value) => PolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
