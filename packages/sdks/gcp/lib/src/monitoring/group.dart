import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_state.dart';

/// The description of a dynamic collection of monitored resources. Each group
/// has a filter that is matched against monitored resources and their
/// associated metadata. If a group's filter matches an available monitored
/// resource, then that resource is a member of that group.
///
///
/// To get more information about Group, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.groups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/monitoring/groups/)
///
/// ## Example Usage
///
/// ### Monitoring Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.monitoring.Group("basic", {
///     displayName: "tf-test MonitoringGroup",
///     filter: "resource.metadata.region=\"europe-west2\"",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.monitoring.Group("basic",
///     display_name="tf-test MonitoringGroup",
///     filter="resource.metadata.region=\"europe-west2\"")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.Monitoring.Group("basic", new()
///     {
///         DisplayName = "tf-test MonitoringGroup",
///         Filter = "resource.metadata.region=\"europe-west2\"",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitoring.NewGroup(ctx, "basic", &monitoring.GroupArgs{
/// 			DisplayName: pulumi.String("tf-test MonitoringGroup"),
/// 			Filter:      pulumi.String("resource.metadata.region=\"europe-west2\""),
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
/// resource "gcp_monitoring_group" "basic" {
///   display_name = "tf-test MonitoringGroup"
///   filter       = "resource.metadata.region=\"europe-west2\""
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.monitoring.Group;
/// import com.pulumi.gcp.monitoring.GroupArgs;
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
///         var basic = new Group("basic", GroupArgs.builder()
///             .displayName("tf-test MonitoringGroup")
///             .filter("resource.metadata.region=\"europe-west2\"")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:monitoring:Group
///     properties:
///       displayName: tf-test MonitoringGroup
///       filter: resource.metadata.region="europe-west2"
/// ```
///
/// ### Monitoring Group Subgroup
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const parent = new gcp.monitoring.Group("parent", {
///     displayName: "tf-test MonitoringParentGroup",
///     filter: "resource.metadata.region=\"europe-west2\"",
/// });
/// const subgroup = new gcp.monitoring.Group("subgroup", {
///     displayName: "tf-test MonitoringSubGroup",
///     filter: "resource.metadata.region=\"europe-west2\"",
///     parentName: parent.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// parent = gcp.monitoring.Group("parent",
///     display_name="tf-test MonitoringParentGroup",
///     filter="resource.metadata.region=\"europe-west2\"")
/// subgroup = gcp.monitoring.Group("subgroup",
///     display_name="tf-test MonitoringSubGroup",
///     filter="resource.metadata.region=\"europe-west2\"",
///     parent_name=parent.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var parent = new Gcp.Monitoring.Group("parent", new()
///     {
///         DisplayName = "tf-test MonitoringParentGroup",
///         Filter = "resource.metadata.region=\"europe-west2\"",
///     });
///
///     var subgroup = new Gcp.Monitoring.Group("subgroup", new()
///     {
///         DisplayName = "tf-test MonitoringSubGroup",
///         Filter = "resource.metadata.region=\"europe-west2\"",
///         ParentName = parent.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		parent, err := monitoring.NewGroup(ctx, "parent", &monitoring.GroupArgs{
/// 			DisplayName: pulumi.String("tf-test MonitoringParentGroup"),
/// 			Filter:      pulumi.String("resource.metadata.region=\"europe-west2\""),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewGroup(ctx, "subgroup", &monitoring.GroupArgs{
/// 			DisplayName: pulumi.String("tf-test MonitoringSubGroup"),
/// 			Filter:      pulumi.String("resource.metadata.region=\"europe-west2\""),
/// 			ParentName:  parent.Name,
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
/// resource "gcp_monitoring_group" "parent" {
///   display_name = "tf-test MonitoringParentGroup"
///   filter       = "resource.metadata.region=\"europe-west2\""
/// }
/// resource "gcp_monitoring_group" "subgroup" {
///   display_name = "tf-test MonitoringSubGroup"
///   filter       = "resource.metadata.region=\"europe-west2\""
///   parent_name  = gcp_monitoring_group.parent.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.monitoring.Group;
/// import com.pulumi.gcp.monitoring.GroupArgs;
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
///         var parent = new Group("parent", GroupArgs.builder()
///             .displayName("tf-test MonitoringParentGroup")
///             .filter("resource.metadata.region=\"europe-west2\"")
///             .build());
///
///         var subgroup = new Group("subgroup", GroupArgs.builder()
///             .displayName("tf-test MonitoringSubGroup")
///             .filter("resource.metadata.region=\"europe-west2\"")
///             .parentName(parent.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   parent:
///     type: gcp:monitoring:Group
///     properties:
///       displayName: tf-test MonitoringParentGroup
///       filter: resource.metadata.region="europe-west2"
///   subgroup:
///     type: gcp:monitoring:Group
///     properties:
///       displayName: tf-test MonitoringSubGroup
///       filter: resource.metadata.region="europe-west2"
///       parentName: ${parent.name}
/// ```
///
///
/// ## Import
///
/// Group can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
/// * `{{project}} {{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Group can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/group:Group default {{project}}/{{name}}
/// $ terraform import google_monitoring_group.default "{{project}} {{name}}"
/// $ pulumi import gcp:monitoring/group:Group default {{name}}
/// ```
class Group extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A user-assigned name for this group, used only for display
  /// purposes.
  late final pulumi.Output<String> displayName;
  /// The filter used to determine which monitored resources
  /// belong to this group.
  late final pulumi.Output<String> filter;
  /// If true, the members of this group are considered to be a
  /// cluster. The system can perform additional analysis on
  /// groups that are clusters.
  late final pulumi.Output<bool?> isCluster;
  /// A unique identifier for this group. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}".
  late final pulumi.Output<String> name;
  /// The name of the group's parent, if it has one. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}". For
  /// groups with no parent, parentName is the empty string, "".
  late final pulumi.Output<String?> parentName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_monitoring_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    filter = registerOutput<String>('filter');
    isCluster = registerOutput<bool?>('isCluster');
    this.name = registerOutput<String>('name');
    parentName = registerOutput<String?>('parentName');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(
    String name,
    pulumi.Input<String> id, {
    GroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/group:Group',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    filter = registerOutput<String>('filter');
    isCluster = registerOutput<bool?>('isCluster');
    this.name = registerOutput<String>('name');
    parentName = registerOutput<String?>('parentName');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [Group] resource.
  Group.reference(String urn)
    : super(
        'gcp:monitoring/group:Group',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    filter = registerOutput<String>('filter');
    isCluster = registerOutput<bool?>('isCluster');
    this.name = registerOutput<String>('name');
    parentName = registerOutput<String?>('parentName');
    project = registerOutput<String>('project');
  }
}
