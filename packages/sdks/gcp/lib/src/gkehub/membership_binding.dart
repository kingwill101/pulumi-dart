import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_binding_args.dart';
import 'membership_binding_gkehub_state.dart';

/// MembershipBinding is a subresource of a Membership, representing what Fleet Scopes (or other, future Fleet resources) a Membership is bound to.
///
///
/// To get more information about MembershipBinding, see:
///
/// * [API documentation](https://cloud.google.com/anthos/fleet-management/docs/reference/rest/v1/projects.locations.memberships.bindings)
/// * How-to Guides
/// * [Registering a Cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Membership Binding Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "basic-cluster",
///     location: "us-central1-a",
///     initialNodeCount: 1,
///     deletionProtection: true,
///     network: "default",
///     subnetwork: "default",
/// });
/// const membership = new gcp.gkehub.Membership("membership", {
///     membershipId: "tf-test-membership_44154",
///     endpoint: {
///         gkeCluster: {
///             resourceLink: pulumi.interpolate`//container.googleapis.com/${primary.id}`,
///         },
///     },
/// }, {
///     dependsOn: [primary],
/// });
/// const scope = new gcp.gkehub.Scope("scope", {scopeId: "tf-test-scope_90221"});
/// const membershipBinding = new gcp.gkehub.MembershipBinding("membership_binding", {
///     membershipBindingId: "tf-test-membership-binding_88987",
///     scope: scope.name,
///     membershipId: membership.membershipId,
///     location: "global",
///     labels: {
///         keyb: "valueb",
///         keya: "valuea",
///         keyc: "valuec",
///     },
/// }, {
///     dependsOn: [
///         membership,
///         scope,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="basic-cluster",
///     location="us-central1-a",
///     initial_node_count=1,
///     deletion_protection=True,
///     network="default",
///     subnetwork="default")
/// membership = gcp.gkehub.Membership("membership",
///     membership_id="tf-test-membership_44154",
///     endpoint={
///         "gke_cluster": {
///             "resource_link": primary.id.apply(lambda id: f"//container.googleapis.com/{id}"),
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[primary]))
/// scope = gcp.gkehub.Scope("scope", scope_id="tf-test-scope_90221")
/// membership_binding = gcp.gkehub.MembershipBinding("membership_binding",
///     membership_binding_id="tf-test-membership-binding_88987",
///     scope=scope.name,
///     membership_id=membership.membership_id,
///     location="global",
///     labels={
///         "keyb": "valueb",
///         "keya": "valuea",
///         "keyc": "valuec",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             membership,
///             scope,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "basic-cluster",
///         Location = "us-central1-a",
///         InitialNodeCount = 1,
///         DeletionProtection = true,
///         Network = "default",
///         Subnetwork = "default",
///     });
///
///     var membership = new Gcp.GkeHub.Membership("membership", new()
///     {
///         MembershipId = "tf-test-membership_44154",
///         Endpoint = new Gcp.GkeHub.Inputs.MembershipEndpointArgs
///         {
///             GkeCluster = new Gcp.GkeHub.Inputs.MembershipEndpointGkeClusterArgs
///             {
///                 ResourceLink = primary.Id.Apply(id => $"//container.googleapis.com/{id}"),
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primary,
///         },
///     });
///
///     var scope = new Gcp.GkeHub.Scope("scope", new()
///     {
///         ScopeId = "tf-test-scope_90221",
///     });
///
///     var membershipBinding = new Gcp.GkeHub.MembershipBinding("membership_binding", new()
///     {
///         MembershipBindingId = "tf-test-membership-binding_88987",
///         Scope = scope.Name,
///         MembershipId = membership.MembershipId,
///         Location = "global",
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
///             membership,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:               pulumi.String("basic-cluster"),
/// 			Location:           pulumi.String("us-central1-a"),
/// 			InitialNodeCount:   pulumi.Int(1),
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Network:            pulumi.String("default"),
/// 			Subnetwork:         pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		membership, err := gkehub.NewMembership(ctx, "membership", &gkehub.MembershipArgs{
/// 			MembershipId: pulumi.String("tf-test-membership_44154"),
/// 			Endpoint: &gkehub.MembershipEndpointArgs{
/// 				GkeCluster: &gkehub.MembershipEndpointGkeClusterArgs{
/// 					ResourceLink: primary.ID().ApplyT(func(id pulumi.ID) (string, error) {
/// 						return fmt.Sprintf("//container.googleapis.com/%v", id), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primary,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		scope, err := gkehub.NewScope(ctx, "scope", &gkehub.ScopeArgs{
/// 			ScopeId: pulumi.String("tf-test-scope_90221"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkehub.NewMembershipBinding(ctx, "membership_binding", &gkehub.MembershipBindingArgs{
/// 			MembershipBindingId: pulumi.String("tf-test-membership-binding_88987"),
/// 			Scope:               scope.Name,
/// 			MembershipId:        membership.MembershipId,
/// 			Location:            pulumi.String("global"),
/// 			Labels: pulumi.StringMap{
/// 				"keyb": pulumi.String("valueb"),
/// 				"keya": pulumi.String("valuea"),
/// 				"keyc": pulumi.String("valuec"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			membership,
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
/// resource "gcp_container_cluster" "primary" {
///   name                = "basic-cluster"
///   location            = "us-central1-a"
///   initial_node_count  = 1
///   deletion_protection = true
///   network             = "default"
///   subnetwork          = "default"
/// }
/// resource "gcp_gkehub_membership" "membership" {
///   depends_on    = [gcp_container_cluster.primary]
///   membership_id = "tf-test-membership_44154"
///   endpoint = {
///     gke_cluster = {
///       resource_link ="//container.googleapis.com/${gcp_container_cluster.primary.id}"
///     }
///   }
/// }
/// resource "gcp_gkehub_scope" "scope" {
///   scope_id = "tf-test-scope_90221"
/// }
/// resource "gcp_gkehub_membershipbinding" "membership_binding" {
///   depends_on            = [gcp_gkehub_membership.membership, gcp_gkehub_scope.scope]
///   membership_binding_id = "tf-test-membership-binding_88987"
///   scope                 = gcp_gkehub_scope.scope.name
///   membership_id         = gcp_gkehub_membership.membership.membership_id
///   location              = "global"
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
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.gkehub.Membership;
/// import com.pulumi.gcp.gkehub.MembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointGkeClusterArgs;
/// import com.pulumi.gcp.gkehub.Scope;
/// import com.pulumi.gcp.gkehub.ScopeArgs;
/// import com.pulumi.gcp.gkehub.MembershipBinding;
/// import com.pulumi.gcp.gkehub.MembershipBindingArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("basic-cluster")
///             .location("us-central1-a")
///             .initialNodeCount(1)
///             .deletionProtection(true)
///             .network("default")
///             .subnetwork("default")
///             .build());
///
///         var membership = new Membership("membership", MembershipArgs.builder()
///             .membershipId("tf-test-membership_44154")
///             .endpoint(MembershipEndpointArgs.builder()
///                 .gkeCluster(MembershipEndpointGkeClusterArgs.builder()
///                     .resourceLink(primary.id().applyValue(_id -> String.format("//container.googleapis.com/%s", _id)))
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(primary)
///                 .build());
///
///         var scope = new Scope("scope", ScopeArgs.builder()
///             .scopeId("tf-test-scope_90221")
///             .build());
///
///         var membershipBinding = new MembershipBinding("membershipBinding", MembershipBindingArgs.builder()
///             .membershipBindingId("tf-test-membership-binding_88987")
///             .scope(scope.name())
///             .membershipId(membership.membershipId())
///             .location("global")
///             .labels(Map.ofEntries(
///                 Map.entry("keyb", "valueb"),
///                 Map.entry("keya", "valuea"),
///                 Map.entry("keyc", "valuec")
///             ))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     membership,
///                     scope)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: basic-cluster
///       location: us-central1-a
///       initialNodeCount: 1
///       deletionProtection: true
///       network: default
///       subnetwork: default
///   membership:
///     type: gcp:gkehub:Membership
///     properties:
///       membershipId: tf-test-membership_44154
///       endpoint:
///         gkeCluster:
///           resourceLink: //container.googleapis.com/${primary.id}
///     options:
///       dependsOn:
///         - ${primary}
///   scope:
///     type: gcp:gkehub:Scope
///     properties:
///       scopeId: tf-test-scope_90221
///   membershipBinding:
///     type: gcp:gkehub:MembershipBinding
///     name: membership_binding
///     properties:
///       membershipBindingId: tf-test-membership-binding_88987
///       scope: ${scope.name}
///       membershipId: ${membership.membershipId}
///       location: global
///       labels:
///         keyb: valueb
///         keya: valuea
///         keyc: valuec
///     options:
///       dependsOn:
///         - ${membership}
///         - ${scope}
/// ```
///
///
/// ## Import
///
/// MembershipBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}/bindings/{{membership_binding_id}}`
/// * `{{project}}/{{location}}/{{membership_id}}/{{membership_binding_id}}`
/// * `{{location}}/{{membership_id}}/{{membership_binding_id}}`
///
///
/// When using the `pulumi import` command, MembershipBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/membershipBinding:MembershipBinding default projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}/bindings/{{membership_binding_id}}
/// $ pulumi import gcp:gkehub/membershipBinding:MembershipBinding default {{project}}/{{location}}/{{membership_id}}/{{membership_binding_id}}
/// $ pulumi import gcp:gkehub/membershipBinding:MembershipBinding default {{location}}/{{membership_id}}/{{membership_binding_id}}
/// ```
class MembershipBinding extends pulumi.CustomResource {
  /// Time the MembershipBinding was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Time the MembershipBinding was deleted in UTC.
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
  /// Labels for this Membership binding.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Location of the membership
  late final pulumi.Output<String> location;
  /// The client-provided identifier of the membership binding.
  late final pulumi.Output<String> membershipBindingId;
  /// Id of the membership
  late final pulumi.Output<String> membershipId;
  /// The resource name for the membershipbinding itself
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// A Workspace resource name in the format
  /// `projects/*/locations/*/scopes/*`.
  late final pulumi.Output<String> scope;
  /// State of the membership binding resource.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> states;
  /// Google-generated UUID for this resource.
  late final pulumi.Output<String> uid;
  /// Time the MembershipBinding was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MembershipBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MembershipBinding]. {@macro pulumi_gkehub_membership_binding_membership_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MembershipBinding(
    String name, {
    MembershipBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/membershipBinding:MembershipBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    membershipBindingId = registerOutput<String>('membershipBindingId');
    membershipId = registerOutput<String>('membershipId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    scope = registerOutput<String>('scope');
    states = registerOutput<List<Map<String, dynamic>>>('states');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MembershipBinding] resource's state with the given [name] and [id].
  static MembershipBinding get(
    String name,
    pulumi.Input<String> id, {
    MembershipBindingGkehubState? state,
  }) {
    return MembershipBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MembershipBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/membershipBinding:MembershipBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    membershipBindingId = registerOutput<String>('membershipBindingId');
    membershipId = registerOutput<String>('membershipId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    scope = registerOutput<String>('scope');
    states = registerOutput<List<Map<String, dynamic>>>('states');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
