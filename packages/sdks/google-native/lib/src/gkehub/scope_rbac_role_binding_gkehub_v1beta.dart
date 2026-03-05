import 'package:pulumi/pulumi.dart' as pulumi;
import 'rbacrole_binding_lifecycle_state_response_gkehub_v1beta.dart';
import 'role_response_gkehub_v1beta.dart';
import 'scope_rbac_role_binding_gkehub_v1beta_args.dart';

/// Creates a Scope RBACRoleBinding.
/// Auto-naming is currently not supported for this resource.
class ScopeRbacRoleBindingGkehubV1beta extends pulumi.CustomResource {
  /// When the rbacrolebinding was created.
  late final pulumi.Output<String> createTime;

  /// When the rbacrolebinding was deleted.
  late final pulumi.Output<String> deleteTime;

  /// group is the group, as seen by the kubernetes cluster.
  late final pulumi.Output<String> group;

  /// Optional. Labels for this RBACRolebinding.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The resource name for the rbacrolebinding `projects/{project}/locations/{location}/scopes/{scope}/rbacrolebindings/{rbacrolebinding}` or `projects/{project}/locations/{location}/memberships/{membership}/rbacrolebindings/{rbacrolebinding}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Required. Client chosen ID for the RBACRoleBinding. `rbacrolebinding_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  late final pulumi.Output<String> rbacrolebindingId;

  /// Role to bind to the principal
  late final pulumi.Output<RoleResponseGkehubV1beta> role;
  late final pulumi.Output<String> scopeId;

  /// State of the rbacrolebinding resource.
  late final pulumi.Output<RBACRoleBindingLifecycleStateResponseGkehubV1beta>
  state;

  /// Google-generated UUID for this resource. This is unique across all rbacrolebinding resources. If a rbacrolebinding resource is deleted and another resource with the same name is created, it gets a different uid.
  late final pulumi.Output<String> uid;

  /// When the rbacrolebinding was last updated.
  late final pulumi.Output<String> updateTime;

  /// user is the name of the user as seen by the kubernetes cluster, example "alice" or "alice@domain.tld"
  late final pulumi.Output<String> user;

  /// Creates a new [ScopeRbacRoleBindingGkehubV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScopeRbacRoleBindingGkehubV1beta]. {@macro pulumi_gkehub_v1beta_scope_rbac_role_binding_gkehub_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScopeRbacRoleBindingGkehubV1beta(
    String name, {
    ScopeRbacRoleBindingGkehubV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:gkehub/v1beta:ScopeRbacRoleBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    group = registerOutput<String>('group');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rbacrolebindingId = registerOutput<String>('rbacrolebindingId');
    role = registerOutput<RoleResponseGkehubV1beta>(
      'role',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RoleResponseGkehubV1beta.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    scopeId = registerOutput<String>('scopeId');
    state = registerOutput<RBACRoleBindingLifecycleStateResponseGkehubV1beta>(
      'state',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RBACRoleBindingLifecycleStateResponseGkehubV1beta.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    user = registerOutput<String>('user');
  }
}
