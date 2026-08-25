import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_rbac_role_binding_args.dart';
import 'scope_rbac_role_binding_gkehub_state.dart';
import 'scope_rbac_role_binding_role.dart';
import 'scope_rbac_role_binding_state.dart';

/// RBACRoleBinding represents a rbacrolebinding across the Fleet.
///
///
/// To get more information about ScopeRBACRoleBinding, see:
///
/// * [API documentation](https://cloud.google.com/anthos/fleet-management/docs/reference/rest/v1/projects.locations.scopes.rbacrolebindings)
/// * How-to Guides
/// * [Registering a Cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Scope Rbac Role Binding Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const scope = new gcp.gkehub.Scope("scope", {scopeId: "tf-test-scope_63399"});
/// const scopeRbacRoleBinding = new gcp.gkehub.ScopeRbacRoleBinding("scope_rbac_role_binding", {
///     scopeRbacRoleBindingId: "tf-test-scope-rbac-role-binding_97523",
///     scopeId: scope.scopeId,
///     user: "test-email@gmail.com",
///     role: {
///         predefinedRole: "ADMIN",
///     },
///     labels: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scope = gcp.gkehub.Scope("scope", scope_id="tf-test-scope_63399")
/// scope_rbac_role_binding = gcp.gkehub.ScopeRbacRoleBinding("scope_rbac_role_binding",
///     scope_rbac_role_binding_id="tf-test-scope-rbac-role-binding_97523",
///     scope_id=scope.scope_id,
///     user="test-email@gmail.com",
///     role={
///         "predefined_role": "ADMIN",
///     },
///     labels={
///         "key": "value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scope = new Gcp.GkeHub.Scope("scope", new()
///     {
///         ScopeId = "tf-test-scope_63399",
///     });
///
///     var scopeRbacRoleBinding = new Gcp.GkeHub.ScopeRbacRoleBinding("scope_rbac_role_binding", new()
///     {
///         ScopeRbacRoleBindingId = "tf-test-scope-rbac-role-binding_97523",
///         ScopeId = scope.ScopeId,
///         User = "test-email@gmail.com",
///         Role = new Gcp.GkeHub.Inputs.ScopeRbacRoleBindingRoleArgs
///         {
///             PredefinedRole = "ADMIN",
///         },
///         Labels =
///         {
///             { "key", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		scope, err := gkehub.NewScope(ctx, "scope", &gkehub.ScopeArgs{
/// 			ScopeId: pulumi.String("tf-test-scope_63399"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkehub.NewScopeRbacRoleBinding(ctx, "scope_rbac_role_binding", &gkehub.ScopeRbacRoleBindingArgs{
/// 			ScopeRbacRoleBindingId: pulumi.String("tf-test-scope-rbac-role-binding_97523"),
/// 			ScopeId:                scope.ScopeId,
/// 			User:                   pulumi.String("test-email@gmail.com"),
/// 			Role: &gkehub.ScopeRbacRoleBindingRoleArgs{
/// 				PredefinedRole: pulumi.String("ADMIN"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_gkehub_scope" "scope" {
///   scope_id = "tf-test-scope_63399"
/// }
/// resource "gcp_gkehub_scoperbacrolebinding" "scope_rbac_role_binding" {
///   scope_rbac_role_binding_id = "tf-test-scope-rbac-role-binding_97523"
///   scope_id                   = gcp_gkehub_scope.scope.scope_id
///   user                       = "test-email@gmail.com"
///   role = {
///     predefined_role = "ADMIN"
///   }
///   labels = {
///     "key" = "value"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkehub.Scope;
/// import com.pulumi.gcp.gkehub.ScopeArgs;
/// import com.pulumi.gcp.gkehub.ScopeRbacRoleBinding;
/// import com.pulumi.gcp.gkehub.ScopeRbacRoleBindingArgs;
/// import com.pulumi.gcp.gkehub.inputs.ScopeRbacRoleBindingRoleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var scope = new Scope("scope", ScopeArgs.builder()
///             .scopeId("tf-test-scope_63399")
///             .build());
///
///         var scopeRbacRoleBinding = new ScopeRbacRoleBinding("scopeRbacRoleBinding", ScopeRbacRoleBindingArgs.builder()
///             .scopeRbacRoleBindingId("tf-test-scope-rbac-role-binding_97523")
///             .scopeId(scope.scopeId())
///             .user("test-email@gmail.com")
///             .role(ScopeRbacRoleBindingRoleArgs.builder()
///                 .predefinedRole("ADMIN")
///                 .build())
///             .labels(Map.of("key", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   scope:
///     type: gcp:gkehub:Scope
///     properties:
///       scopeId: tf-test-scope_63399
///   scopeRbacRoleBinding:
///     type: gcp:gkehub:ScopeRbacRoleBinding
///     name: scope_rbac_role_binding
///     properties:
///       scopeRbacRoleBindingId: tf-test-scope-rbac-role-binding_97523
///       scopeId: ${scope.scopeId}
///       user: test-email@gmail.com
///       role:
///         predefinedRole: ADMIN
///       labels:
///         key: value
/// ```
///
/// ### Gkehub Scope Rbac Custom Role Binding Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const scope = new gcp.gkehub.Scope("scope", {scopeId: "tf-test-scope_31660"});
/// const rbacrolebindingactuation = new gcp.gkehub.Feature("rbacrolebindingactuation", {
///     name: "rbacrolebindingactuation",
///     location: "global",
///     spec: {
///         rbacrolebindingactuation: {
///             allowedCustomRoles: ["my-custom-role"],
///         },
///     },
/// });
/// const scopeRbacRoleBinding = new gcp.gkehub.ScopeRbacRoleBinding("scope_rbac_role_binding", {
///     scopeRbacRoleBindingId: "tf-test-scope-rbac-role-binding_97962",
///     scopeId: scope.scopeId,
///     user: "test-email@gmail.com",
///     role: {
///         customRole: "my-custom-role",
///     },
///     labels: {
///         key: "value",
///     },
/// }, {
///     dependsOn: [rbacrolebindingactuation],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scope = gcp.gkehub.Scope("scope", scope_id="tf-test-scope_31660")
/// rbacrolebindingactuation = gcp.gkehub.Feature("rbacrolebindingactuation",
///     name="rbacrolebindingactuation",
///     location="global",
///     spec={
///         "rbacrolebindingactuation": {
///             "allowed_custom_roles": ["my-custom-role"],
///         },
///     })
/// scope_rbac_role_binding = gcp.gkehub.ScopeRbacRoleBinding("scope_rbac_role_binding",
///     scope_rbac_role_binding_id="tf-test-scope-rbac-role-binding_97962",
///     scope_id=scope.scope_id,
///     user="test-email@gmail.com",
///     role={
///         "custom_role": "my-custom-role",
///     },
///     labels={
///         "key": "value",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[rbacrolebindingactuation]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scope = new Gcp.GkeHub.Scope("scope", new()
///     {
///         ScopeId = "tf-test-scope_31660",
///     });
///
///     var rbacrolebindingactuation = new Gcp.GkeHub.Feature("rbacrolebindingactuation", new()
///     {
///         Name = "rbacrolebindingactuation",
///         Location = "global",
///         Spec = new Gcp.GkeHub.Inputs.FeatureSpecArgs
///         {
///             Rbacrolebindingactuation = new Gcp.GkeHub.Inputs.FeatureSpecRbacrolebindingactuationArgs
///             {
///                 AllowedCustomRoles = new[]
///                 {
///                     "my-custom-role",
///                 },
///             },
///         },
///     });
///
///     var scopeRbacRoleBinding = new Gcp.GkeHub.ScopeRbacRoleBinding("scope_rbac_role_binding", new()
///     {
///         ScopeRbacRoleBindingId = "tf-test-scope-rbac-role-binding_97962",
///         ScopeId = scope.ScopeId,
///         User = "test-email@gmail.com",
///         Role = new Gcp.GkeHub.Inputs.ScopeRbacRoleBindingRoleArgs
///         {
///             CustomRole = "my-custom-role",
///         },
///         Labels =
///         {
///             { "key", "value" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             rbacrolebindingactuation,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		scope, err := gkehub.NewScope(ctx, "scope", &gkehub.ScopeArgs{
/// 			ScopeId: pulumi.String("tf-test-scope_31660"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		rbacrolebindingactuation, err := gkehub.NewFeature(ctx, "rbacrolebindingactuation", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("rbacrolebindingactuation"),
/// 			Location: pulumi.String("global"),
/// 			Spec: &gkehub.FeatureSpecArgs{
/// 				Rbacrolebindingactuation: &gkehub.FeatureSpecRbacrolebindingactuationArgs{
/// 					AllowedCustomRoles: pulumi.StringArray{
/// 						pulumi.String("my-custom-role"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkehub.NewScopeRbacRoleBinding(ctx, "scope_rbac_role_binding", &gkehub.ScopeRbacRoleBindingArgs{
/// 			ScopeRbacRoleBindingId: pulumi.String("tf-test-scope-rbac-role-binding_97962"),
/// 			ScopeId:                scope.ScopeId,
/// 			User:                   pulumi.String("test-email@gmail.com"),
/// 			Role: &gkehub.ScopeRbacRoleBindingRoleArgs{
/// 				CustomRole: pulumi.String("my-custom-role"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			rbacrolebindingactuation,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_gkehub_scope" "scope" {
///   scope_id = "tf-test-scope_31660"
/// }
/// resource "gcp_gkehub_feature" "rbacrolebindingactuation" {
///   name     = "rbacrolebindingactuation"
///   location = "global"
///   spec = {
///     rbacrolebindingactuation = {
///       allowed_custom_roles = ["my-custom-role"]
///     }
///   }
/// }
/// resource "gcp_gkehub_scoperbacrolebinding" "scope_rbac_role_binding" {
///   depends_on                 = [gcp_gkehub_feature.rbacrolebindingactuation]
///   scope_rbac_role_binding_id = "tf-test-scope-rbac-role-binding_97962"
///   scope_id                   = gcp_gkehub_scope.scope.scope_id
///   user                       = "test-email@gmail.com"
///   role = {
///     custom_role = "my-custom-role"
///   }
///   labels = {
///     "key" = "value"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkehub.Scope;
/// import com.pulumi.gcp.gkehub.ScopeArgs;
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecRbacrolebindingactuationArgs;
/// import com.pulumi.gcp.gkehub.ScopeRbacRoleBinding;
/// import com.pulumi.gcp.gkehub.ScopeRbacRoleBindingArgs;
/// import com.pulumi.gcp.gkehub.inputs.ScopeRbacRoleBindingRoleArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var scope = new Scope("scope", ScopeArgs.builder()
///             .scopeId("tf-test-scope_31660")
///             .build());
///
///         var rbacrolebindingactuation = new Feature("rbacrolebindingactuation", FeatureArgs.builder()
///             .name("rbacrolebindingactuation")
///             .location("global")
///             .spec(FeatureSpecArgs.builder()
///                 .rbacrolebindingactuation(FeatureSpecRbacrolebindingactuationArgs.builder()
///                     .allowedCustomRoles("my-custom-role")
///                     .build())
///                 .build())
///             .build());
///
///         var scopeRbacRoleBinding = new ScopeRbacRoleBinding("scopeRbacRoleBinding", ScopeRbacRoleBindingArgs.builder()
///             .scopeRbacRoleBindingId("tf-test-scope-rbac-role-binding_97962")
///             .scopeId(scope.scopeId())
///             .user("test-email@gmail.com")
///             .role(ScopeRbacRoleBindingRoleArgs.builder()
///                 .customRole("my-custom-role")
///                 .build())
///             .labels(Map.of("key", "value"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(rbacrolebindingactuation)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   scope:
///     type: gcp:gkehub:Scope
///     properties:
///       scopeId: tf-test-scope_31660
///   rbacrolebindingactuation:
///     type: gcp:gkehub:Feature
///     properties:
///       name: rbacrolebindingactuation
///       location: global
///       spec:
///         rbacrolebindingactuation:
///           allowedCustomRoles:
///             - my-custom-role
///   scopeRbacRoleBinding:
///     type: gcp:gkehub:ScopeRbacRoleBinding
///     name: scope_rbac_role_binding
///     properties:
///       scopeRbacRoleBindingId: tf-test-scope-rbac-role-binding_97962
///       scopeId: ${scope.scopeId}
///       user: test-email@gmail.com
///       role:
///         customRole: my-custom-role
///       labels:
///         key: value
///     options:
///       dependsOn:
///         - ${rbacrolebindingactuation}
/// ```
///
///
/// ## Import
///
/// ScopeRBACRoleBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/scopes/{{scope_id}}/rbacrolebindings/{{scope_rbac_role_binding_id}}`
/// * `{{project}}/{{scope_id}}/{{scope_rbac_role_binding_id}}`
/// * `{{scope_id}}/{{scope_rbac_role_binding_id}}`
///
///
/// When using the `pulumi import` command, ScopeRBACRoleBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/scopeRbacRoleBinding:ScopeRbacRoleBinding default projects/{{project}}/locations/global/scopes/{{scope_id}}/rbacrolebindings/{{scope_rbac_role_binding_id}}
/// $ pulumi import gcp:gkehub/scopeRbacRoleBinding:ScopeRbacRoleBinding default {{project}}/{{scope_id}}/{{scope_rbac_role_binding_id}}
/// $ pulumi import gcp:gkehub/scopeRbacRoleBinding:ScopeRbacRoleBinding default {{scope_id}}/{{scope_rbac_role_binding_id}}
/// ```
class ScopeRbacRoleBinding extends pulumi.CustomResource {
  /// Time the RBAC Role Binding was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Time the RBAC Role Binding was deleted in UTC.
  late final pulumi.Output<String> deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// group is the group, as seen by the kubernetes cluster.
  late final pulumi.Output<String?> group;
  /// Labels for this ScopeRBACRoleBinding.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The resource name for the RBAC Role Binding
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Role to bind to the principal.
  /// Structure is documented below.
  late final pulumi.Output<ScopeRbacRoleBindingRole> role;
  /// Id of the scope
  late final pulumi.Output<String> scopeId;
  /// The client-provided identifier of the RBAC Role Binding.
  late final pulumi.Output<String> scopeRbacRoleBindingId;
  /// State of the RBAC Role Binding resource.
  /// Structure is documented below.
  late final pulumi.Output<List<ScopeRbacRoleBindingState>> states;
  /// Google-generated UUID for this resource.
  late final pulumi.Output<String> uid;
  /// Time the RBAC Role Binding was updated in UTC.
  late final pulumi.Output<String> updateTime;
  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// user is the name of the user as seen by the kubernetes cluster, example
  /// "alice" or "alice@domain.tld"
  late final pulumi.Output<String?> user;

  /// Creates a new [ScopeRbacRoleBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScopeRbacRoleBinding]. {@macro pulumi_gkehub_scope_rbac_role_binding_scope_rbac_role_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScopeRbacRoleBinding(
    String name, {
    ScopeRbacRoleBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/scopeRbacRoleBinding:ScopeRbacRoleBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    group = registerOutput<String?>('group');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    role = registerOutput<ScopeRbacRoleBindingRole>('role', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScopeRbacRoleBindingRole.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scopeId = registerOutput<String>('scopeId');
    scopeRbacRoleBindingId = registerOutput<String>('scopeRbacRoleBindingId');
    states = registerOutput<List<ScopeRbacRoleBindingState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScopeRbacRoleBindingState>(guardedValue, (value) => ScopeRbacRoleBindingState.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    user = registerOutput<String?>('user');
  }

  /// Gets an existing [ScopeRbacRoleBinding] resource's state with the given [name] and [id].
  static ScopeRbacRoleBinding get(
    String name,
    pulumi.Input<String> id, {
    ScopeRbacRoleBindingGkehubState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ScopeRbacRoleBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ScopeRbacRoleBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/scopeRbacRoleBinding:ScopeRbacRoleBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    group = registerOutput<String?>('group');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    role = registerOutput<ScopeRbacRoleBindingRole>('role', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScopeRbacRoleBindingRole.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scopeId = registerOutput<String>('scopeId');
    scopeRbacRoleBindingId = registerOutput<String>('scopeRbacRoleBindingId');
    states = registerOutput<List<ScopeRbacRoleBindingState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScopeRbacRoleBindingState>(guardedValue, (value) => ScopeRbacRoleBindingState.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    user = registerOutput<String?>('user');
  }

  /// Creates a typed reference to an existing [ScopeRbacRoleBinding] resource.
  ScopeRbacRoleBinding.reference(String urn)
    : super(
        'gcp:gkehub/scopeRbacRoleBinding:ScopeRbacRoleBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    group = registerOutput<String?>('group');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    role = registerOutput<ScopeRbacRoleBindingRole>('role', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScopeRbacRoleBindingRole.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scopeId = registerOutput<String>('scopeId');
    scopeRbacRoleBindingId = registerOutput<String>('scopeRbacRoleBindingId');
    states = registerOutput<List<ScopeRbacRoleBindingState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScopeRbacRoleBindingState>(guardedValue, (value) => ScopeRbacRoleBindingState.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    user = registerOutput<String?>('user');
  }
}
