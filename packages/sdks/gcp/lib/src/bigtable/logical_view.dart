import 'package:pulumi/pulumi.dart' as pulumi;
import 'logical_view_args.dart';
import 'logical_view_state.dart';

/// A logical view object that can be referenced in SQL queries.
///
///
/// To get more information about LogicalView, see:
///
/// * [API documentation](https://cloud.google.com/bigtable/docs/reference/admin/rest/v2/projects.instances.logicalViews)
///
/// ## Example Usage
///
/// ### Bigtable Logical View
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.bigtable.Instance("instance", {
///     name: "bt-instance",
///     clusters: [{
///         clusterId: "cluster-1",
///         zone: "us-east1-b",
///         numNodes: 3,
///         storageType: "HDD",
///     }],
///     deletionProtection: false,
/// });
/// const table = new gcp.bigtable.Table("table", {
///     name: "bt-table",
///     instanceName: instance.name,
///     columnFamilies: [{
///         family: "CF",
///     }],
/// });
/// const logicalView = new gcp.bigtable.LogicalView("logical_view", {
///     logicalViewId: "bt-logical-view",
///     instance: instance.name,
///     deletionProtection: false,
///     query: `SELECT _key, CF
/// FROM \` + \\"\`bt-table\`\\" + \`
/// `,
/// }, {
///     dependsOn: [table],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.bigtable.Instance("instance",
///     name="bt-instance",
///     clusters=[{
///         "cluster_id": "cluster-1",
///         "zone": "us-east1-b",
///         "num_nodes": 3,
///         "storage_type": "HDD",
///     }],
///     deletion_protection=False)
/// table = gcp.bigtable.Table("table",
///     name="bt-table",
///     instance_name=instance.name,
///     column_families=[{
///         "family": "CF",
///     }])
/// logical_view = gcp.bigtable.LogicalView("logical_view",
///     logical_view_id="bt-logical-view",
///     instance=instance.name,
///     deletion_protection=False,
///     query="""SELECT _key, CF
/// FROM ` + \"`bt-table`\" + `
/// """,
///     opts = pulumi.ResourceOptions(depends_on=[table]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.BigTable.Instance("instance", new()
///     {
///         Name = "bt-instance",
///         Clusters = new[]
///         {
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "cluster-1",
///                 Zone = "us-east1-b",
///                 NumNodes = 3,
///                 StorageType = "HDD",
///             },
///         },
///         DeletionProtection = false,
///     });
///
///     var table = new Gcp.BigTable.Table("table", new()
///     {
///         Name = "bt-table",
///         InstanceName = instance.Name,
///         ColumnFamilies = new[]
///         {
///             new Gcp.BigTable.Inputs.TableColumnFamilyArgs
///             {
///                 Family = "CF",
///             },
///         },
///     });
///
///     var logicalView = new Gcp.BigTable.LogicalView("logical_view", new()
///     {
///         LogicalViewId = "bt-logical-view",
///         Instance = instance.Name,
///         DeletionProtection = false,
///         Query = @"SELECT _key, CF
/// FROM ` + \""`bt-table`\"" + `
/// ",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             table,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := bigtable.NewInstance(ctx, "instance", &bigtable.InstanceArgs{
/// 			Name: pulumi.String("bt-instance"),
/// 			Clusters: bigtable.InstanceClusterArray{
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("cluster-1"),
/// 					Zone:        pulumi.String("us-east1-b"),
/// 					NumNodes:    pulumi.Int(3),
/// 					StorageType: pulumi.String("HDD"),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		table, err := bigtable.NewTable(ctx, "table", &bigtable.TableArgs{
/// 			Name:         pulumi.String("bt-table"),
/// 			InstanceName: instance.Name,
/// 			ColumnFamilies: bigtable.TableColumnFamilyArray{
/// 				&bigtable.TableColumnFamilyArgs{
/// 					Family: pulumi.String("CF"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigtable.NewLogicalView(ctx, "logical_view", &bigtable.LogicalViewArgs{
/// 			LogicalViewId:      pulumi.String("bt-logical-view"),
/// 			Instance:           instance.Name,
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Query:              pulumi.String("SELECT _key, CF\nFROM ` + \\\"`bt-table`\\\" + `\n"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			table,
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
/// resource "gcp_bigtable_instance" "instance" {
///   name = "bt-instance"
///   clusters {
///     cluster_id   = "cluster-1"
///     zone         = "us-east1-b"
///     num_nodes    = 3
///     storage_type = "HDD"
///   }
///   deletion_protection = false
/// }
/// resource "gcp_bigtable_table" "table" {
///   name          = "bt-table"
///   instance_name = gcp_bigtable_instance.instance.name
///   column_families {
///     family = "CF"
///   }
/// }
/// resource "gcp_bigtable_logicalview" "logical_view" {
///   depends_on          = [gcp_bigtable_table.table]
///   logical_view_id     = "bt-logical-view"
///   instance            = gcp_bigtable_instance.instance.name
///   deletion_protection = false
///   query               = "SELECT _key, CF\nFROM ` + \\\"`bt-table`\\\" + `\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigtable.Instance;
/// import com.pulumi.gcp.bigtable.InstanceArgs;
/// import com.pulumi.gcp.bigtable.inputs.InstanceClusterArgs;
/// import com.pulumi.gcp.bigtable.Table;
/// import com.pulumi.gcp.bigtable.TableArgs;
/// import com.pulumi.gcp.bigtable.inputs.TableColumnFamilyArgs;
/// import com.pulumi.gcp.bigtable.LogicalView;
/// import com.pulumi.gcp.bigtable.LogicalViewArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("bt-instance")
///             .clusters(InstanceClusterArgs.builder()
///                 .clusterId("cluster-1")
///                 .zone("us-east1-b")
///                 .numNodes(3)
///                 .storageType("HDD")
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var table = new Table("table", TableArgs.builder()
///             .name("bt-table")
///             .instanceName(instance.name())
///             .columnFamilies(TableColumnFamilyArgs.builder()
///                 .family("CF")
///                 .build())
///             .build());
///
///         var logicalView = new LogicalView("logicalView", LogicalViewArgs.builder()
///             .logicalViewId("bt-logical-view")
///             .instance(instance.name())
///             .deletionProtection(false)
///             .query("""
/// SELECT _key, CF
/// FROM ` + \"`bt-table`\" + `
///             """)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(table)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:bigtable:Instance
///     properties:
///       name: bt-instance
///       clusters:
///         - clusterId: cluster-1
///           zone: us-east1-b
///           numNodes: 3
///           storageType: HDD
///       deletionProtection: false
///   table:
///     type: gcp:bigtable:Table
///     properties:
///       name: bt-table
///       instanceName: ${instance.name}
///       columnFamilies:
///         - family: CF
///   logicalView:
///     type: gcp:bigtable:LogicalView
///     name: logical_view
///     properties:
///       logicalViewId: bt-logical-view
///       instance: ${instance.name}
///       deletionProtection: false
///       query: |
///         SELECT _key, CF
///         FROM ` + \"`bt-table`\" + `
///     options:
///       dependsOn:
///         - ${table}
/// ```
///
///
/// ## Import
///
/// LogicalView can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/logicalViews/{{logical_view_id}}`
/// * `{{project}}/{{instance}}/{{logical_view_id}}`
/// * `{{instance}}/{{logical_view_id}}`
///
///
/// When using the `pulumi import` command, LogicalView can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigtable/logicalView:LogicalView default projects/{{project}}/instances/{{instance}}/logicalViews/{{logical_view_id}}
/// $ pulumi import gcp:bigtable/logicalView:LogicalView default {{project}}/{{instance}}/{{logical_view_id}}
/// $ pulumi import gcp:bigtable/logicalView:LogicalView default {{instance}}/{{logical_view_id}}
/// ```
class LogicalView extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Set to true to make the logical view protected against deletion.
  late final pulumi.Output<bool?> deletionProtection;
  /// The name of the instance to create the logical view within.
  late final pulumi.Output<String?> instance;
  /// The unique name of the logical view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  late final pulumi.Output<String> logicalViewId;
  /// The unique name of the requested logical view. Values are of the form `projects/&lt;project&gt;/instances/&lt;instance&gt;/logicalViews/&lt;logicalViewId&gt;`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The logical view's select query.
  late final pulumi.Output<String> query;

  /// Creates a new [LogicalView].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogicalView]. {@macro pulumi_bigtable_logical_view_logical_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogicalView(
    String name, {
    LogicalViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/logicalView:LogicalView',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    instance = registerOutput<String?>('instance');
    logicalViewId = registerOutput<String>('logicalViewId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    query = registerOutput<String>('query');
  }

  /// Gets an existing [LogicalView] resource's state with the given [name] and [id].
  static LogicalView get(
    String name,
    pulumi.Input<String> id, {
    LogicalViewState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LogicalView._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LogicalView._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/logicalView:LogicalView',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    instance = registerOutput<String?>('instance');
    logicalViewId = registerOutput<String>('logicalViewId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    query = registerOutput<String>('query');
  }

  /// Creates a typed reference to an existing [LogicalView] resource.
  LogicalView.reference(String urn)
    : super(
        'gcp:bigtable/logicalView:LogicalView',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    instance = registerOutput<String?>('instance');
    logicalViewId = registerOutput<String>('logicalViewId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    query = registerOutput<String>('query');
  }
}
