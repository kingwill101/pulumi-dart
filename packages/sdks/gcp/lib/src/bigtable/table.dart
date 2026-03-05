import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_args.dart';
import 'table_automated_backup_policy.dart';
import 'table_state.dart';

/// Creates a Google Cloud Bigtable table inside an instance. For more information see
/// [the official documentation](https://cloud.google.com/bigtable/) and
/// [API](https://cloud.google.com/bigtable/docs/go/reference).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.bigtable.Instance("instance", {
///     name: "tf-instance",
///     clusters: [{
///         clusterId: "tf-instance-cluster",
///         zone: "us-central1-b",
///         numNodes: 3,
///         storageType: "HDD",
///     }],
/// });
/// const table = new gcp.bigtable.Table("table", {
///     name: "tf-table",
///     instanceName: instance.name,
///     splitKeys: [
///         "a",
///         "b",
///         "c",
///     ],
///     columnFamilies: [
///         {
///             family: "family-first",
///         },
///         {
///             family: "family-second",
///             type: "intsum",
///         },
///         {
///             family: "family-third",
///             type: `        {
/// \\t\\t\\t\\t\\t\\"aggregateType\\": {
/// \\t\\t\\t\\t\\t\\t\\"max\\": {},
/// \\t\\t\\t\\t\\t\\t\\"inputType\\": {
/// \\t\\t\\t\\t\\t\\t\\t\\"int64Type\\": {
/// \\t\\t\\t\\t\\t\\t\\t\\t\\"encoding\\": {
/// \\t\\t\\t\\t\\t\\t\\t\\t\\t\\"bigEndianBytes\\": {}
/// \\t\\t\\t\\t\\t\\t\\t\\t}
/// \\t\\t\\t\\t\\t\\t\\t}
/// \\t\\t\\t\\t\\t\\t}
/// \\t\\t\\t\\t\\t}
/// \\t\\t\\t\\t}
/// `,
///         },
///     ],
///     changeStreamRetention: "24h0m0s",
///     automatedBackupPolicy: {
///         retentionPeriod: "72h0m0s",
///         frequency: "24h0m0s",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.bigtable.Instance("instance",
///     name="tf-instance",
///     clusters=[{
///         "cluster_id": "tf-instance-cluster",
///         "zone": "us-central1-b",
///         "num_nodes": 3,
///         "storage_type": "HDD",
///     }])
/// table = gcp.bigtable.Table("table",
///     name="tf-table",
///     instance_name=instance.name,
///     split_keys=[
///         "a",
///         "b",
///         "c",
///     ],
///     column_families=[
///         {
///             "family": "family-first",
///         },
///         {
///             "family": "family-second",
///             "type": "intsum",
///         },
///         {
///             "family": "family-third",
///             "type": """        {
/// \t\t\t\t\t\"aggregateType\": {
/// \t\t\t\t\t\t\"max\": {},
/// \t\t\t\t\t\t\"inputType\": {
/// \t\t\t\t\t\t\t\"int64Type\": {
/// \t\t\t\t\t\t\t\t\"encoding\": {
/// \t\t\t\t\t\t\t\t\t\"bigEndianBytes\": {}
/// \t\t\t\t\t\t\t\t}
/// \t\t\t\t\t\t\t}
/// \t\t\t\t\t\t}
/// \t\t\t\t\t}
/// \t\t\t\t}
/// """,
///         },
///     ],
///     change_stream_retention="24h0m0s",
///     automated_backup_policy={
///         "retention_period": "72h0m0s",
///         "frequency": "24h0m0s",
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
///     var instance = new Gcp.BigTable.Instance("instance", new()
///     {
///         Name = "tf-instance",
///         Clusters = new[]
///         {
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "tf-instance-cluster",
///                 Zone = "us-central1-b",
///                 NumNodes = 3,
///                 StorageType = "HDD",
///             },
///         },
///     });
///
///     var table = new Gcp.BigTable.Table("table", new()
///     {
///         Name = "tf-table",
///         InstanceName = instance.Name,
///         SplitKeys = new[]
///         {
///             "a",
///             "b",
///             "c",
///         },
///         ColumnFamilies = new[]
///         {
///             new Gcp.BigTable.Inputs.TableColumnFamilyArgs
///             {
///                 Family = "family-first",
///             },
///             new Gcp.BigTable.Inputs.TableColumnFamilyArgs
///             {
///                 Family = "family-second",
///                 Type = "intsum",
///             },
///             new Gcp.BigTable.Inputs.TableColumnFamilyArgs
///             {
///                 Family = "family-third",
///                 Type = @"        {
/// \t\t\t\t\t\""aggregateType\"": {
/// \t\t\t\t\t\t\""max\"": {},
/// \t\t\t\t\t\t\""inputType\"": {
/// \t\t\t\t\t\t\t\""int64Type\"": {
/// \t\t\t\t\t\t\t\t\""encoding\"": {
/// \t\t\t\t\t\t\t\t\t\""bigEndianBytes\"": {}
/// \t\t\t\t\t\t\t\t}
/// \t\t\t\t\t\t\t}
/// \t\t\t\t\t\t}
/// \t\t\t\t\t}
/// \t\t\t\t}
/// ",
///             },
///         },
///         ChangeStreamRetention = "24h0m0s",
///         AutomatedBackupPolicy = new Gcp.BigTable.Inputs.TableAutomatedBackupPolicyArgs
///         {
///             RetentionPeriod = "72h0m0s",
///             Frequency = "24h0m0s",
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
/// 			Name: pulumi.String("tf-instance"),
/// 			Clusters: bigtable.InstanceClusterArray{
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("tf-instance-cluster"),
/// 					Zone:        pulumi.String("us-central1-b"),
/// 					NumNodes:    pulumi.Int(3),
/// 					StorageType: pulumi.String("HDD"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigtable.NewTable(ctx, "table", &bigtable.TableArgs{
/// 			Name:         pulumi.String("tf-table"),
/// 			InstanceName: instance.Name,
/// 			SplitKeys: pulumi.StringArray{
/// 				pulumi.String("a"),
/// 				pulumi.String("b"),
/// 				pulumi.String("c"),
/// 			},
/// 			ColumnFamilies: bigtable.TableColumnFamilyArray{
/// 				&bigtable.TableColumnFamilyArgs{
/// 					Family: pulumi.String("family-first"),
/// 				},
/// 				&bigtable.TableColumnFamilyArgs{
/// 					Family: pulumi.String("family-second"),
/// 					Type:   pulumi.String("intsum"),
/// 				},
/// 				&bigtable.TableColumnFamilyArgs{
/// 					Family: pulumi.String("family-third"),
/// 					Type: pulumi.String(`        {
/// \t\t\t\t\t\"aggregateType\": {
/// \t\t\t\t\t\t\"max\": {},
/// \t\t\t\t\t\t\"inputType\": {
/// \t\t\t\t\t\t\t\"int64Type\": {
/// \t\t\t\t\t\t\t\t\"encoding\": {
/// \t\t\t\t\t\t\t\t\t\"bigEndianBytes\": {}
/// \t\t\t\t\t\t\t\t}
/// \t\t\t\t\t\t\t}
/// \t\t\t\t\t\t}
/// \t\t\t\t\t}
/// \t\t\t\t}
/// `),
/// 				},
/// 			},
/// 			ChangeStreamRetention: pulumi.String("24h0m0s"),
/// 			AutomatedBackupPolicy: &bigtable.TableAutomatedBackupPolicyArgs{
/// 				RetentionPeriod: pulumi.String("72h0m0s"),
/// 				Frequency:       pulumi.String("24h0m0s"),
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
/// import com.pulumi.gcp.bigtable.inputs.TableAutomatedBackupPolicyArgs;
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
///             .name("tf-instance")
///             .clusters(InstanceClusterArgs.builder()
///                 .clusterId("tf-instance-cluster")
///                 .zone("us-central1-b")
///                 .numNodes(3)
///                 .storageType("HDD")
///                 .build())
///             .build());
///
///         var table = new Table("table", TableArgs.builder()
///             .name("tf-table")
///             .instanceName(instance.name())
///             .splitKeys(
///                 "a",
///                 "b",
///                 "c")
///             .columnFamilies(
///                 TableColumnFamilyArgs.builder()
///                     .family("family-first")
///                     .build(),
///                 TableColumnFamilyArgs.builder()
///                     .family("family-second")
///                     .type("intsum")
///                     .build(),
///                 TableColumnFamilyArgs.builder()
///                     .family("family-third")
///                     .type("""
///         {
/// \t\t\t\t\t\"aggregateType\": {
/// \t\t\t\t\t\t\"max\": {},
/// \t\t\t\t\t\t\"inputType\": {
/// \t\t\t\t\t\t\t\"int64Type\": {
/// \t\t\t\t\t\t\t\t\"encoding\": {
/// \t\t\t\t\t\t\t\t\t\"bigEndianBytes\": {}
/// \t\t\t\t\t\t\t\t}
/// \t\t\t\t\t\t\t}
/// \t\t\t\t\t\t}
/// \t\t\t\t\t}
/// \t\t\t\t}
///                     """)
///                     .build())
///             .changeStreamRetention("24h0m0s")
///             .automatedBackupPolicy(TableAutomatedBackupPolicyArgs.builder()
///                 .retentionPeriod("72h0m0s")
///                 .frequency("24h0m0s")
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
///       name: tf-instance
///       clusters:
///         - clusterId: tf-instance-cluster
///           zone: us-central1-b
///           numNodes: 3
///           storageType: HDD
///   table:
///     type: gcp:bigtable:Table
///     properties:
///       name: tf-table
///       instanceName: ${instance.name}
///       splitKeys:
///         - a
///         - b
///         - c
///       columnFamilies:
///         - family: family-first
///         - family: family-second
///           type: intsum
///         - family: family-third
///           type: |2
///                     {
///             \t\t\t\t\t\"aggregateType\": {
///             \t\t\t\t\t\t\"max\": {},
///             \t\t\t\t\t\t\"inputType\": {
///             \t\t\t\t\t\t\t\"int64Type\": {
///             \t\t\t\t\t\t\t\t\"encoding\": {
///             \t\t\t\t\t\t\t\t\t\"bigEndianBytes\": {}
///             \t\t\t\t\t\t\t\t}
///             \t\t\t\t\t\t\t}
///             \t\t\t\t\t\t}
///             \t\t\t\t\t}
///             \t\t\t\t}
///       changeStreamRetention: 24h0m0s
///       automatedBackupPolicy:
///         retentionPeriod: 72h0m0s
///         frequency: 24h0m0s
/// ```
///
///
/// ## Import
///
/// -&gt; **Fields affected by import** The following fields can't be read and will show diffs if set in config when imported: `split_keys`
///
/// Bigtable Tables can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance_name}}/tables/{{name}}`
///
/// * `{{project}}/{{instance_name}}/{{name}}`
///
/// * `{{instance_name}}/{{name}}`
///
/// When using the `pulumi import` command, Bigtable Tables can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigtable/table:Table default projects/{{project}}/instances/{{instance_name}}/tables/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/table:Table default {{project}}/{{instance_name}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/table:Table default {{instance_name}}/{{name}}
/// ```
class Table extends pulumi.CustomResource {
  /// Defines an automated backup policy for a table, specified by Retention Period and Frequency. To _create_ a table with automated backup disabled, either omit the automated_backup_policy argument, or set both Retention Period and Frequency properties to "0". To disable automated backup on an _existing_ table that has automated backup enabled, set _both_ Retention Period and Frequency properties to "0". When updating an existing table, to modify the Retention Period or Frequency properties of the resource's automated backup policy, set the respective property to a non-zero value. If the automated_backup_policy argument is not provided in the configuration on update, the resource's automated backup policy will _not_ be modified.
  ///
  /// -----
  late final pulumi.Output<TableAutomatedBackupPolicy> automatedBackupPolicy;
  /// Duration to retain change stream data for the table. Set to 0 to disable. Must be between 1 and 7 days.
  late final pulumi.Output<String> changeStreamRetention;
  /// A group of columns within a table which share a common configuration. This can be specified multiple times. Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> columnFamilies;
  /// A field to make the table protected against data loss i.e. when set to PROTECTED, deleting the table, the column families in the table, and the instance containing the table would be prohibited. If not provided, deletion protection will be set to UNPROTECTED.
  late final pulumi.Output<String> deletionProtection;
  /// The name of the Bigtable instance.
  late final pulumi.Output<String> instanceName;
  /// The name of the table. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Defines the row key schema of a table. To create or update a table with a row key schema, specify this argument.
  /// Note that in-place update is not supported, and any in-place modification to the schema will lead to failure.
  /// To update a schema, please clear it (by omitting the field), and update the resource again with a new schema.\n
  ///
  /// The schema must be a valid JSON encoded string representing a Type's struct protobuf message. Note that for bytes sequence (like delimited_bytes.delimiter)
  /// the delimiter must be base64 encoded. For example, if you want to set a delimiter to a single byte character "#", it should be set to "Iw==", which is the base64 encoding of the byte sequence "#".
  late final pulumi.Output<String?> rowKeySchema;
  /// A list of predefined keys to split the table on.
  /// !&gt; **Warning:** Modifying the `split_keys` of an existing table will cause the provider
  /// to delete/recreate the entire `gcp.bigtable.Table` resource.
  late final pulumi.Output<List<String>?> splitKeys;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_bigtable_table_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(
    String name, {
    TableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/table:Table',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automatedBackupPolicy = registerOutput<TableAutomatedBackupPolicy>('automatedBackupPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableAutomatedBackupPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    changeStreamRetention = registerOutput<String>('changeStreamRetention');
    columnFamilies = registerOutput<List<Map<String, dynamic>>?>('columnFamilies');
    deletionProtection = registerOutput<String>('deletionProtection');
    instanceName = registerOutput<String>('instanceName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rowKeySchema = registerOutput<String?>('rowKeySchema');
    splitKeys = registerOutput<List<String>?>('splitKeys');
  }

  /// Gets an existing [Table] resource's state with the given [name] and [id].
  static Table get(
    String name,
    pulumi.Input<String> id, {
    TableState? state,
  }) {
    return Table._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Table._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/table:Table',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automatedBackupPolicy = registerOutput<TableAutomatedBackupPolicy>('automatedBackupPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableAutomatedBackupPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    changeStreamRetention = registerOutput<String>('changeStreamRetention');
    columnFamilies = registerOutput<List<Map<String, dynamic>>?>('columnFamilies');
    deletionProtection = registerOutput<String>('deletionProtection');
    instanceName = registerOutput<String>('instanceName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rowKeySchema = registerOutput<String?>('rowKeySchema');
    splitKeys = registerOutput<List<String>?>('splitKeys');
  }
}
