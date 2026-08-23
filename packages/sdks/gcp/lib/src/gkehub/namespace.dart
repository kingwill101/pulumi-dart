import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';
import 'namespace_gkehub_state.dart';

/// Namespace represents a namespace across the Fleet.
///
///
/// To get more information about Namespace, see:
///
/// * [API documentation](https://cloud.google.com/anthos/fleet-management/docs/reference/rest/v1/projects.locations.scopes.namespaces)
/// * How-to Guides
/// * [Registering a Cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Namespace Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const scope = new gcp.gkehub.Scope("scope", {scopeId: "tf-test-scope_25601"});
/// const namespace = new gcp.gkehub.Namespace("namespace", {
///     scopeNamespaceId: "tf-test-namespace_17228",
///     scopeId: scope.scopeId,
///     scope: scope.name,
///     namespaceLabels: {
///         keyb: "valueb",
///         keya: "valuea",
///         keyc: "valuec",
///     },
///     labels: {
///         keyb: "valueb",
///         keya: "valuea",
///         keyc: "valuec",
///     },
/// }, {
///     dependsOn: [scope],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scope = gcp.gkehub.Scope("scope", scope_id="tf-test-scope_25601")
/// namespace = gcp.gkehub.Namespace("namespace",
///     scope_namespace_id="tf-test-namespace_17228",
///     scope_id=scope.scope_id,
///     scope=scope.name,
///     namespace_labels={
///         "keyb": "valueb",
///         "keya": "valuea",
///         "keyc": "valuec",
///     },
///     labels={
///         "keyb": "valueb",
///         "keya": "valuea",
///         "keyc": "valuec",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[scope]))
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
///         ScopeId = "tf-test-scope_25601",
///     });
///
///     var @namespace = new Gcp.GkeHub.Namespace("namespace", new()
///     {
///         ScopeNamespaceId = "tf-test-namespace_17228",
///         ScopeId = scope.ScopeId,
///         Scope = scope.Name,
///         NamespaceLabels =
///         {
///             { "keyb", "valueb" },
///             { "keya", "valuea" },
///             { "keyc", "valuec" },
///         },
///         Labels =
///         {
///             { "keyb", "valueb" },
///             { "keya", "valuea" },
///             { "keyc", "valuec" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             scope,
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
/// 			ScopeId: pulumi.String("tf-test-scope_25601"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkehub.NewNamespace(ctx, "namespace", &gkehub.NamespaceArgs{
/// 			ScopeNamespaceId: pulumi.String("tf-test-namespace_17228"),
/// 			ScopeId:          scope.ScopeId,
/// 			Scope:            scope.Name,
/// 			NamespaceLabels: pulumi.StringMap{
/// 				"keyb": pulumi.String("valueb"),
/// 				"keya": pulumi.String("valuea"),
/// 				"keyc": pulumi.String("valuec"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"keyb": pulumi.String("valueb"),
/// 				"keya": pulumi.String("valuea"),
/// 				"keyc": pulumi.String("valuec"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			scope,
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
///   scope_id = "tf-test-scope_25601"
/// }
/// resource "gcp_gkehub_namespace" "namespace" {
///   depends_on         = [gcp_gkehub_scope.scope]
///   scope_namespace_id = "tf-test-namespace_17228"
///   scope_id           = gcp_gkehub_scope.scope.scope_id
///   scope              = gcp_gkehub_scope.scope.name
///   namespace_labels = {
///     "keyb" = "valueb"
///     "keya" = "valuea"
///     "keyc" = "valuec"
///   }
///   labels = {
///     "keyb" = "valueb"
///     "keya" = "valuea"
///     "keyc" = "valuec"
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
/// import com.pulumi.gcp.gkehub.Namespace;
/// import com.pulumi.gcp.gkehub.NamespaceArgs;
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
///             .scopeId("tf-test-scope_25601")
///             .build());
///
///         var namespace = new Namespace("namespace", NamespaceArgs.builder()
///             .scopeNamespaceId("tf-test-namespace_17228")
///             .scopeId(scope.scopeId())
///             .scope(scope.name())
///             .namespaceLabels(Map.ofEntries(
///                 Map.entry("keyb", "valueb"),
///                 Map.entry("keya", "valuea"),
///                 Map.entry("keyc", "valuec")
///             ))
///             .labels(Map.ofEntries(
///                 Map.entry("keyb", "valueb"),
///                 Map.entry("keya", "valuea"),
///                 Map.entry("keyc", "valuec")
///             ))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(scope)
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
///       scopeId: tf-test-scope_25601
///   namespace:
///     type: gcp:gkehub:Namespace
///     properties:
///       scopeNamespaceId: tf-test-namespace_17228
///       scopeId: ${scope.scopeId}
///       scope: ${scope.name}
///       namespaceLabels:
///         keyb: valueb
///         keya: valuea
///         keyc: valuec
///       labels:
///         keyb: valueb
///         keya: valuea
///         keyc: valuec
///     options:
///       dependsOn:
///         - ${scope}
/// ```
///
///
/// ## Import
///
/// Namespace can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/scopes/{{scope_id}}/namespaces/{{scope_namespace_id}}`
/// * `{{project}}/{{scope_id}}/{{scope_namespace_id}}`
/// * `{{scope_id}}/{{scope_namespace_id}}`
///
///
/// When using the `pulumi import` command, Namespace can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/namespace:Namespace default projects/{{project}}/locations/global/scopes/{{scope_id}}/namespaces/{{scope_namespace_id}}
/// $ pulumi import gcp:gkehub/namespace:Namespace default {{project}}/{{scope_id}}/{{scope_namespace_id}}
/// $ pulumi import gcp:gkehub/namespace:Namespace default {{scope_id}}/{{scope_namespace_id}}
/// ```
class Namespace extends pulumi.CustomResource {
  /// Time the Namespace was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Time the Namespace was deleted in UTC.
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
  /// Labels for this Namespace.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The resource name for the namespace
  late final pulumi.Output<String> name;
  /// Namespace-level cluster namespace labels. These labels are applied
  /// to the related namespace of the member clusters bound to the parent
  /// Scope. Scope-level labels (`namespaceLabels` in the Fleet Scope
  /// resource) take precedence over Namespace-level labels if they share
  /// a key. Keys and values must be Kubernetes-conformant.
  late final pulumi.Output<Map<String, String>?> namespaceLabels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The name of the Scope instance.
  late final pulumi.Output<String> scope;
  /// Id of the scope
  late final pulumi.Output<String> scopeId;
  /// The client-provided identifier of the namespace.
  late final pulumi.Output<String> scopeNamespaceId;
  /// State of the namespace resource.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> states;
  /// Google-generated UUID for this resource.
  late final pulumi.Output<String> uid;
  /// Time the Namespace was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_gkehub_namespace_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    namespaceLabels = registerOutput<Map<String, String>?>('namespaceLabels');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    scope = registerOutput<String>('scope');
    scopeId = registerOutput<String>('scopeId');
    scopeNamespaceId = registerOutput<String>('scopeNamespaceId');
    states = registerOutput<List<Map<String, dynamic>>>('states');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Namespace] resource's state with the given [name] and [id].
  static Namespace get(
    String name,
    pulumi.Input<String> id, {
    NamespaceGkehubState? state,
  }) {
    return Namespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Namespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    namespaceLabels = registerOutput<Map<String, String>?>('namespaceLabels');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    scope = registerOutput<String>('scope');
    scopeId = registerOutput<String>('scopeId');
    scopeNamespaceId = registerOutput<String>('scopeNamespaceId');
    states = registerOutput<List<Map<String, dynamic>>>('states');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
