import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_auto_accept.dart';
import 'group_state.dart';

/// The NetworkConnectivity Group resource
///
///
/// To get more information about Group, see:
///
/// * [API documentation](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1beta/projects.locations.global.hubs.groups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/overview)
///
/// ## Example Usage
///
/// ### Network Connectivity Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicHub = new gcp.networkconnectivity.Hub("basic_hub", {
///     name: "network-connectivity-hub1",
///     description: "A sample hub",
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// const primary = new gcp.networkconnectivity.Group("primary", {
///     hub: basicHub.id,
///     name: "default",
///     labels: {
///         "label-one": "value-one",
///     },
///     description: "A sample hub group",
///     autoAccept: {
///         autoAcceptProjects: [
///             "foo",
///             "bar",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_hub = gcp.networkconnectivity.Hub("basic_hub",
///     name="network-connectivity-hub1",
///     description="A sample hub",
///     labels={
///         "label-one": "value-one",
///     })
/// primary = gcp.networkconnectivity.Group("primary",
///     hub=basic_hub.id,
///     name="default",
///     labels={
///         "label-one": "value-one",
///     },
///     description="A sample hub group",
///     auto_accept={
///         "auto_accept_projects": [
///             "foo",
///             "bar",
///         ],
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
///     var basicHub = new Gcp.NetworkConnectivity.Hub("basic_hub", new()
///     {
///         Name = "network-connectivity-hub1",
///         Description = "A sample hub",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var primary = new Gcp.NetworkConnectivity.Group("primary", new()
///     {
///         Hub = basicHub.Id,
///         Name = "default",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Description = "A sample hub group",
///         AutoAccept = new Gcp.NetworkConnectivity.Inputs.GroupAutoAcceptArgs
///         {
///             AutoAcceptProjects = new[]
///             {
///                 "foo",
///                 "bar",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicHub, err := networkconnectivity.NewHub(ctx, "basic_hub", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("network-connectivity-hub1"),
/// 			Description: pulumi.String("A sample hub"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewGroup(ctx, "primary", &networkconnectivity.GroupArgs{
/// 			Hub:  basicHub.ID().ToIDOutput().ToStringOutput(),
/// 			Name: pulumi.String("default"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Description: pulumi.String("A sample hub group"),
/// 			AutoAccept: &networkconnectivity.GroupAutoAcceptArgs{
/// 				AutoAcceptProjects: pulumi.StringArray{
/// 					pulumi.String("foo"),
/// 					pulumi.String("bar"),
/// 				},
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
/// resource "gcp_networkconnectivity_hub" "basic_hub" {
///   name        = "network-connectivity-hub1"
///   description = "A sample hub"
///   labels = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_networkconnectivity_group" "primary" {
///   hub  = gcp_networkconnectivity_hub.basic_hub.id
///   name = "default"
///   labels = {
///     "label-one" = "value-one"
///   }
///   description = "A sample hub group"
///   auto_accept = {
///     auto_accept_projects = ["foo", "bar"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.networkconnectivity.Group;
/// import com.pulumi.gcp.networkconnectivity.GroupArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.GroupAutoAcceptArgs;
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
///         var basicHub = new Hub("basicHub", HubArgs.builder()
///             .name("network-connectivity-hub1")
///             .description("A sample hub")
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///         var primary = new Group("primary", GroupArgs.builder()
///             .hub(basicHub.id())
///             .name("default")
///             .labels(Map.of("label-one", "value-one"))
///             .description("A sample hub group")
///             .autoAccept(GroupAutoAcceptArgs.builder()
///                 .autoAcceptProjects(
///                     "foo",
///                     "bar")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicHub:
///     type: gcp:networkconnectivity:Hub
///     name: basic_hub
///     properties:
///       name: network-connectivity-hub1
///       description: A sample hub
///       labels:
///         label-one: value-one
///   primary:
///     type: gcp:networkconnectivity:Group
///     properties:
///       hub: ${basicHub.id}
///       name: default
///       labels:
///         label-one: value-one
///       description: A sample hub group
///       autoAccept:
///         autoAcceptProjects:
///           - foo
///           - bar
/// ```
///
///
/// ## Import
///
/// Group can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/hubs/{{hub}}/groups/{{name}}`
/// * `{{project}}/{{hub}}/{{name}}`
/// * `{{hub}}/{{name}}`
///
///
/// When using the `pulumi import` command, Group can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/group:Group default projects/{{project}}/locations/global/hubs/{{hub}}/groups/{{name}}
/// $ pulumi import gcp:networkconnectivity/group:Group default {{project}}/{{hub}}/{{name}}
/// $ pulumi import gcp:networkconnectivity/group:Group default {{hub}}/{{name}}
/// ```
class Group extends pulumi.CustomResource {
  /// Optional. The auto-accept setting for this group.
  /// Structure is documented below.
  late final pulumi.Output<GroupAutoAccept?> autoAccept;
  /// Output only. The time the hub was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of the group.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The name of the hub. Hub names must be unique. They use the following form: projects/{projectNumber}/locations/global/hubs/{hubId}
  late final pulumi.Output<String> hub;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The name of the group. Group names must be unique.
  /// Possible values are: `default`, `center`, `edge`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Output only. The name of the route table that corresponds to this group. They use the following form: `projects/{projectNumber}/locations/global/hubs/{hubId}/routeTables/{route_table_id}`
  late final pulumi.Output<String> routeTable;
  /// Output only. The current lifecycle state of this hub.
  late final pulumi.Output<String> state;
  /// Output only. The Google-generated UUID for the group. This value is unique across all group resources. If a group is deleted and another with the same name is created, the new route table is assigned a different uniqueId.
  late final pulumi.Output<String> uid;
  /// Output only. The time the hub was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_networkconnectivity_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoAccept = registerOutput<GroupAutoAccept?>('autoAccept', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupAutoAccept.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    hub = registerOutput<String>('hub');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    routeTable = registerOutput<String>('routeTable');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(
    String name,
    pulumi.Input<String> id, {
    GroupState? state,
  }) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/group:Group',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoAccept = registerOutput<GroupAutoAccept?>('autoAccept', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupAutoAccept.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    hub = registerOutput<String>('hub');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    routeTable = registerOutput<String>('routeTable');
    this.state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
