import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_args.dart';
import 'scope_gkehub_state.dart';
import 'scope_state.dart';

/// Scope represents a Scope in a Fleet.
///
///
/// To get more information about Scope, see:
///
/// * [API documentation](https://cloud.google.com/anthos/fleet-management/docs/reference/rest/v1/projects.locations.scopes)
/// * How-to Guides
/// * [Registering a Cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Scope Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const scope = new gcp.gkehub.Scope("scope", {
///     scopeId: "my-scope",
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
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scope = gcp.gkehub.Scope("scope",
///     scope_id="my-scope",
///     namespace_labels={
///         "keyb": "valueb",
///         "keya": "valuea",
///         "keyc": "valuec",
///     },
///     labels={
///         "keyb": "valueb",
///         "keya": "valuea",
///         "keyc": "valuec",
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
///         ScopeId = "my-scope",
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
/// 		_, err := gkehub.NewScope(ctx, "scope", &gkehub.ScopeArgs{
/// 			ScopeId: pulumi.String("my-scope"),
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
///   scope_id = "my-scope"
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
///             .scopeId("my-scope")
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
///       scopeId: my-scope
///       namespaceLabels:
///         keyb: valueb
///         keya: valuea
///         keyc: valuec
///       labels:
///         keyb: valueb
///         keya: valuea
///         keyc: valuec
/// ```
///
///
/// ## Import
///
/// Scope can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/scopes/{{scope_id}}`
/// * `{{project}}/{{scope_id}}`
/// * `{{scope_id}}`
///
///
/// When using the `pulumi import` command, Scope can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/scope:Scope default projects/{{project}}/locations/global/scopes/{{scope_id}}
/// $ pulumi import gcp:gkehub/scope:Scope default {{project}}/{{scope_id}}
/// $ pulumi import gcp:gkehub/scope:Scope default {{scope_id}}
/// ```
class Scope extends pulumi.CustomResource {
  /// Time the Scope was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Time the Scope was deleted in UTC.
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
  /// Labels for this Scope.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The unique identifier of the scope
  late final pulumi.Output<String> name;
  /// Scope-level cluster namespace labels. For the member clusters bound
  /// to the Scope, these labels are applied to each namespace under the
  /// Scope. Scope-level labels take precedence over Namespace-level
  /// labels (`namespaceLabels` in the Fleet Namespace resource) if they
  /// share a key. Keys and values must be Kubernetes-conformant.
  late final pulumi.Output<Map<String, String>?> namespaceLabels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The client-provided identifier of the scope.
  late final pulumi.Output<String> scopeId;
  /// State of the scope resource.
  /// Structure is documented below.
  late final pulumi.Output<List<ScopeState>> states;
  /// Google-generated UUID for this resource.
  late final pulumi.Output<String> uid;
  /// Time the Scope was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Scope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Scope]. {@macro pulumi_gkehub_scope_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Scope(
    String name, {
    ScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/scope:Scope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    namespaceLabels = registerOutput<Map<String, String>?>('namespaceLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    scopeId = registerOutput<String>('scopeId');
    states = registerOutput<List<ScopeState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScopeState>(guardedValue, (value) => ScopeState.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Scope] resource's state with the given [name] and [id].
  static Scope get(
    String name,
    pulumi.Input<String> id, {
    ScopeGkehubState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Scope._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Scope._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/scope:Scope',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    namespaceLabels = registerOutput<Map<String, String>?>('namespaceLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    scopeId = registerOutput<String>('scopeId');
    states = registerOutput<List<ScopeState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScopeState>(guardedValue, (value) => ScopeState.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Scope] resource.
  Scope.reference(String urn)
    : super(
        'gcp:gkehub/scope:Scope',
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
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    namespaceLabels = registerOutput<Map<String, String>?>('namespaceLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    scopeId = registerOutput<String>('scopeId');
    states = registerOutput<List<ScopeState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScopeState>(guardedValue, (value) => ScopeState.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
