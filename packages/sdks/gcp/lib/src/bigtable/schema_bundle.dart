import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_bundle_args.dart';
import 'schema_bundle_proto_schema.dart';
import 'schema_bundle_state.dart';

/// A schema bundle object that can be referenced in SQL queries.
///
///
/// To get more information about SchemaBundle, see:
///
/// * [API documentation](https://cloud.google.com/bigtable/docs/reference/admin/rest/v2/projects.instances.tables.schemaBundles)
///
/// ## Example Usage
///
/// ### Bigtable Schema Bundle
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const instance = new gcp.bigtable.Instance("instance", {
///     name: "bt-instance",
///     clusters: [{
///         clusterId: "cluster-1",
///         zone: "us-east1-b",
///         numNodes: 1,
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
/// const schemaBundle = new gcp.bigtable.SchemaBundle("schema_bundle", {
///     schemaBundleId: "bt-schema-bundle",
///     instance: instance.name,
///     table: table.name,
///     protoSchema: {
///         protoDescriptors: std.filebase64({
///             input: "test-fixtures/proto_schema_bundle.pb",
///         }).then(invoke => invoke.result),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// instance = gcp.bigtable.Instance("instance",
///     name="bt-instance",
///     clusters=[{
///         "cluster_id": "cluster-1",
///         "zone": "us-east1-b",
///         "num_nodes": 1,
///         "storage_type": "HDD",
///     }],
///     deletion_protection=False)
/// table = gcp.bigtable.Table("table",
///     name="bt-table",
///     instance_name=instance.name,
///     column_families=[{
///         "family": "CF",
///     }])
/// schema_bundle = gcp.bigtable.SchemaBundle("schema_bundle",
///     schema_bundle_id="bt-schema-bundle",
///     instance=instance.name,
///     table=table.name,
///     proto_schema={
///         "proto_descriptors": std.filebase64(input="test-fixtures/proto_schema_bundle.pb").result,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
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
///                 NumNodes = 1,
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
///     var schemaBundle = new Gcp.BigTable.SchemaBundle("schema_bundle", new()
///     {
///         SchemaBundleId = "bt-schema-bundle",
///         Instance = instance.Name,
///         Table = table.Name,
///         ProtoSchema = new Gcp.BigTable.Inputs.SchemaBundleProtoSchemaArgs
///         {
///             ProtoDescriptors = Std.Filebase64.Invoke(new()
///             {
///                 Input = "test-fixtures/proto_schema_bundle.pb",
///             }).Apply(invoke => invoke.Result),
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 					NumNodes:    pulumi.Int(1),
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
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "test-fixtures/proto_schema_bundle.pb",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigtable.NewSchemaBundle(ctx, "schema_bundle", &bigtable.SchemaBundleArgs{
/// 			SchemaBundleId: pulumi.String("bt-schema-bundle"),
/// 			Instance:       instance.Name,
/// 			Table:          table.Name,
/// 			ProtoSchema: &bigtable.SchemaBundleProtoSchemaArgs{
/// 				ProtoDescriptors: pulumi.String(invokeFilebase64.Result),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.gcp.bigtable.SchemaBundle;
/// import com.pulumi.gcp.bigtable.SchemaBundleArgs;
/// import com.pulumi.gcp.bigtable.inputs.SchemaBundleProtoSchemaArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import java.util.List;
/// import java.util.ArrayList;
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
///                 .numNodes(1)
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
///         var schemaBundle = new SchemaBundle("schemaBundle", SchemaBundleArgs.builder()
///             .schemaBundleId("bt-schema-bundle")
///             .instance(instance.name())
///             .table(table.name())
///             .protoSchema(SchemaBundleProtoSchemaArgs.builder()
///                 .protoDescriptors(StdFunctions.filebase64(Filebase64Args.builder()
///                     .input("test-fixtures/proto_schema_bundle.pb")
///                     .build()).result())
///                 .build())
///             .build());
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
///           numNodes: 1
///           storageType: HDD
///       deletionProtection: false
///   table:
///     type: gcp:bigtable:Table
///     properties:
///       name: bt-table
///       instanceName: ${instance.name}
///       columnFamilies:
///         - family: CF
///   schemaBundle:
///     type: gcp:bigtable:SchemaBundle
///     name: schema_bundle
///     properties:
///       schemaBundleId: bt-schema-bundle
///       instance: ${instance.name}
///       table: ${table.name}
///       protoSchema:
///         protoDescriptors:
///           fn::invoke:
///             function: std:filebase64
///             arguments:
///               input: test-fixtures/proto_schema_bundle.pb
///             return: result
/// ```
///
///
/// ## Import
///
/// SchemaBundle can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/tables/{{table}}/schemaBundles/{{schema_bundle_id}}`
///
/// * `{{project}}/{{instance}}/{{table}}/{{schema_bundle_id}}`
///
/// * `{{instance}}/{{table}}/{{schema_bundle_id}}`
///
/// When using the `pulumi import` command, SchemaBundle can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigtable/schemaBundle:SchemaBundle default projects/{{project}}/instances/{{instance}}/tables/{{table}}/schemaBundles/{{schema_bundle_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/schemaBundle:SchemaBundle default {{project}}/{{instance}}/{{table}}/{{schema_bundle_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/schemaBundle:SchemaBundle default {{instance}}/{{table}}/{{schema_bundle_id}}
/// ```
class SchemaBundle extends pulumi.CustomResource {
  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous
  /// updates of a schema bundle from overwriting each other. This may be sent on update and delete
  /// requests to ensure the client has an update-to-date value before proceeding. The server returns
  /// an ABORTED error on a mismatched etag.
  late final pulumi.Output<String> etag;

  /// If true, allow backwards incompatible changes.
  late final pulumi.Output<bool?> ignoreWarnings;

  /// The name of the instance to create the schema bundle within.
  late final pulumi.Output<String?> instance;

  /// The unique name of the requested schema bundle. Values are of the form `projects/&lt;project&gt;/instances/&lt;instance&gt;/tables/&lt;table&gt;/schemaBundles/&lt;schemaBundleId&gt;`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// File descriptor set, generated by protoc.
  /// To generate, use protoc with imports and source info included. For an example test.proto file, the following command would put the value in a new file named out.pb.
  /// $ protoc --include_imports --include_source_info test.proto -o out.pb
  /// Structure is documented below.
  late final pulumi.Output<SchemaBundleProtoSchema> protoSchema;

  /// The unique name of the schema bundle in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  late final pulumi.Output<String> schemaBundleId;

  /// The name of the table to create the schema bundle within.
  late final pulumi.Output<String?> table;

  /// Creates a new [SchemaBundle].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SchemaBundle]. {@macro pulumi_bigtable_schema_bundle_schema_bundle_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SchemaBundle(
    String name, {
    SchemaBundleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:bigtable/schemaBundle:SchemaBundle',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    etag = registerOutput<String>('etag');
    ignoreWarnings = registerOutput<bool?>('ignoreWarnings');
    instance = registerOutput<String?>('instance');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    protoSchema = registerOutput<SchemaBundleProtoSchema>('protoSchema');
    schemaBundleId = registerOutput<String>('schemaBundleId');
    table = registerOutput<String?>('table');
  }

  /// Gets an existing [SchemaBundle] resource's state with the given [name] and [id].
  static SchemaBundle get(
    String name,
    pulumi.Input<String> id, {
    SchemaBundleState? state,
  }) {
    return SchemaBundle._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SchemaBundle._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:bigtable/schemaBundle:SchemaBundle',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    etag = registerOutput<String>('etag');
    ignoreWarnings = registerOutput<bool?>('ignoreWarnings');
    instance = registerOutput<String?>('instance');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    protoSchema = registerOutput<SchemaBundleProtoSchema>('protoSchema');
    schemaBundleId = registerOutput<String>('schemaBundleId');
    table = registerOutput<String?>('table');
  }
}
