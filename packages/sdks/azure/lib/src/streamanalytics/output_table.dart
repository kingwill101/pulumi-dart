import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_table_args.dart';
import 'output_table_state.dart';

/// Manages a Stream Analytics Output Table.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "rg-example",
///     location: "West Europe",
/// });
/// const example = azure.streamanalytics.getJobOutput({
///     name: "example-job",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleTable = new azure.storage.Table("example", {
///     name: "exampletable",
///     storageAccountName: exampleAccount.name,
/// });
/// const exampleOutputTable = new azure.streamanalytics.OutputTable("example", {
///     name: "output-to-storage-table",
///     streamAnalyticsJobName: example.apply(example => example.name),
///     resourceGroupName: example.apply(example => example.resourceGroupName),
///     storageAccountName: exampleAccount.name,
///     storageAccountKey: exampleAccount.primaryAccessKey,
///     table: exampleTable.name,
///     partitionKey: "foo",
///     rowKey: "bar",
///     batchSize: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="West Europe")
/// example = azure.streamanalytics.get_job_output(name="example-job",
///     resource_group_name=example_resource_group.name)
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_table = azure.storage.Table("example",
///     name="exampletable",
///     storage_account_name=example_account.name)
/// example_output_table = azure.streamanalytics.OutputTable("example",
///     name="output-to-storage-table",
///     stream_analytics_job_name=example.name,
///     resource_group_name=example.resource_group_name,
///     storage_account_name=example_account.name,
///     storage_account_key=example_account.primary_access_key,
///     table=example_table.name,
///     partition_key="foo",
///     row_key="bar",
///     batch_size=100)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "rg-example",
///         Location = "West Europe",
///     });
///
///     var example = Azure.StreamAnalytics.GetJob.Invoke(new()
///     {
///         Name = "example-job",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleTable = new Azure.Storage.Table("example", new()
///     {
///         Name = "exampletable",
///         StorageAccountName = exampleAccount.Name,
///     });
///
///     var exampleOutputTable = new Azure.StreamAnalytics.OutputTable("example", new()
///     {
///         Name = "output-to-storage-table",
///         StreamAnalyticsJobName = example.Apply(getJobResult => getJobResult.Name),
///         ResourceGroupName = example.Apply(getJobResult => getJobResult.ResourceGroupName),
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountKey = exampleAccount.PrimaryAccessKey,
///         Table = exampleTable.Name,
///         PartitionKey = "foo",
///         RowKey = "bar",
///         BatchSize = 100,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/streamanalytics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("rg-example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := streamanalytics.LookupJobOutput(ctx, streamanalytics.GetJobOutputArgs{
/// 			Name:              pulumi.String("example-job"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      exampleResourceGroup.Name,
/// 			Location:               exampleResourceGroup.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTable, err := storage.NewTable(ctx, "example", &storage.TableArgs{
/// 			Name:               pulumi.String("exampletable"),
/// 			StorageAccountName: exampleAccount.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = streamanalytics.NewOutputTable(ctx, "example", &streamanalytics.OutputTableArgs{
/// 			Name: pulumi.String("output-to-storage-table"),
/// 			StreamAnalyticsJobName: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ResourceGroupName: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.ResourceGroupName, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			StorageAccountName: exampleAccount.Name,
/// 			StorageAccountKey:  exampleAccount.PrimaryAccessKey,
/// 			Table:              exampleTable.Name,
/// 			PartitionKey:       pulumi.String("foo"),
/// 			RowKey:             pulumi.String("bar"),
/// 			BatchSize:          pulumi.Int(100),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.streamanalytics.StreamanalyticsFunctions;
/// import com.pulumi.azure.streamanalytics.inputs.GetJobArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Table;
/// import com.pulumi.azure.storage.TableArgs;
/// import com.pulumi.azure.streamanalytics.OutputTable;
/// import com.pulumi.azure.streamanalytics.OutputTableArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("rg-example")
///             .location("West Europe")
///             .build());
///
///         final var example = StreamanalyticsFunctions.getJob(GetJobArgs.builder()
///             .name("example-job")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleTable = new Table("exampleTable", TableArgs.builder()
///             .name("exampletable")
///             .storageAccountName(exampleAccount.name())
///             .build());
///
///         var exampleOutputTable = new OutputTable("exampleOutputTable", OutputTableArgs.builder()
///             .name("output-to-storage-table")
///             .streamAnalyticsJobName(example.applyValue(_example -> _example.name()))
///             .resourceGroupName(example.applyValue(_example -> _example.resourceGroupName()))
///             .storageAccountName(exampleAccount.name())
///             .storageAccountKey(exampleAccount.primaryAccessKey())
///             .table(exampleTable.name())
///             .partitionKey("foo")
///             .rowKey("bar")
///             .batchSize(100)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: rg-example
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleTable:
///     type: azure:storage:Table
///     name: example
///     properties:
///       name: exampletable
///       storageAccountName: ${exampleAccount.name}
///   exampleOutputTable:
///     type: azure:streamanalytics:OutputTable
///     name: example
///     properties:
///       name: output-to-storage-table
///       streamAnalyticsJobName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountKey: ${exampleAccount.primaryAccessKey}
///       table: ${exampleTable.name}
///       partitionKey: foo
///       rowKey: bar
///       batchSize: 100
/// variables:
///   example:
///     fn::invoke:
///       function: azure:streamanalytics:getJob
///       arguments:
///         name: example-job
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StreamAnalytics` - 2021-10-01-preview
///
/// ## Import
///
/// Stream Analytics Output to Table can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/outputTable:OutputTable example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/outputs/output1
/// ```
class OutputTable extends pulumi.CustomResource {
  /// The number of records for a batch operation. Must be between `1` and `100`.
  late final pulumi.Output<int> batchSize;
  /// A list of the column names to be removed from output event entities.
  late final pulumi.Output<List<String>?> columnsToRemoves;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the output column that contains the partition key.
  late final pulumi.Output<String> partitionKey;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name of the output column that contains the row key.
  late final pulumi.Output<String> rowKey;
  /// The Access Key which should be used to connect to this Storage Account.
  late final pulumi.Output<String> storageAccountKey;
  /// The name of the Storage Account.
  late final pulumi.Output<String> storageAccountName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobName;
  /// The name of the table where the stream should be output to.
  late final pulumi.Output<String> table;

  /// Creates a new [OutputTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutputTable]. {@macro pulumi_streamanalytics_output_table_output_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutputTable(
    String name, {
    OutputTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputTable:OutputTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    batchSize = registerOutput<int>('batchSize');
    columnsToRemoves = registerOutput<List<String>?>('columnsToRemoves');
    this.name = registerOutput<String>('name');
    partitionKey = registerOutput<String>('partitionKey');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rowKey = registerOutput<String>('rowKey');
    storageAccountKey = registerOutput<String>('storageAccountKey');
    storageAccountName = registerOutput<String>('storageAccountName');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
    table = registerOutput<String>('table');
  }

  /// Gets an existing [OutputTable] resource's state with the given [name] and [id].
  static OutputTable get(
    String name,
    pulumi.Input<String> id, {
    OutputTableState? state,
  }) {
    return OutputTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OutputTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputTable:OutputTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    batchSize = registerOutput<int>('batchSize');
    columnsToRemoves = registerOutput<List<String>?>('columnsToRemoves');
    this.name = registerOutput<String>('name');
    partitionKey = registerOutput<String>('partitionKey');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rowKey = registerOutput<String>('rowKey');
    storageAccountKey = registerOutput<String>('storageAccountKey');
    storageAccountName = registerOutput<String>('storageAccountName');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
    table = registerOutput<String>('table');
  }
}
