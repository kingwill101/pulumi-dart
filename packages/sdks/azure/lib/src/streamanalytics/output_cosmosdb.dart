import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_cosmosdb_args.dart';
import 'output_cosmosdb_state.dart';

/// Manages a Stream Analytics Output to CosmosDB.
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
/// const exampleAccount = new azure.cosmosdb.Account("example", {
///     name: "exampledb",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     offerType: "Standard",
///     kind: "GlobalDocumentDB",
///     consistencyPolicy: {
///         consistencyLevel: "BoundedStaleness",
///         maxIntervalInSeconds: 10,
///         maxStalenessPrefix: 200,
///     },
///     geoLocations: [{
///         location: exampleResourceGroup.location,
///         failoverPriority: 0,
///     }],
/// });
/// const exampleSqlDatabase = new azure.cosmosdb.SqlDatabase("example", {
///     name: "cosmos-sql-db",
///     resourceGroupName: exampleAccount.resourceGroupName,
///     accountName: exampleAccount.name,
///     throughput: 400,
/// });
/// const exampleSqlContainer = new azure.cosmosdb.SqlContainer("example", {
///     name: "examplecontainer",
///     resourceGroupName: exampleAccount.resourceGroupName,
///     accountName: exampleAccount.name,
///     databaseName: exampleSqlDatabase.name,
///     partitionKeyPath: "foo",
/// });
/// const exampleOutputCosmosdb = new azure.streamanalytics.OutputCosmosdb("example", {
///     name: "output-to-cosmosdb",
///     streamAnalyticsJobId: example.id,
///     cosmosdbAccountKey: exampleAccount.primaryKey,
///     cosmosdbSqlDatabaseId: exampleSqlDatabase.id,
///     containerName: exampleSqlContainer.name,
///     documentId: "exampledocumentid",
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
/// example_account = azure.cosmosdb.Account("example",
///     name="exampledb",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     offer_type="Standard",
///     kind="GlobalDocumentDB",
///     consistency_policy={
///         "consistency_level": "BoundedStaleness",
///         "max_interval_in_seconds": 10,
///         "max_staleness_prefix": 200,
///     },
///     geo_locations=[{
///         "location": example_resource_group.location,
///         "failover_priority": 0,
///     }])
/// example_sql_database = azure.cosmosdb.SqlDatabase("example",
///     name="cosmos-sql-db",
///     resource_group_name=example_account.resource_group_name,
///     account_name=example_account.name,
///     throughput=400)
/// example_sql_container = azure.cosmosdb.SqlContainer("example",
///     name="examplecontainer",
///     resource_group_name=example_account.resource_group_name,
///     account_name=example_account.name,
///     database_name=example_sql_database.name,
///     partition_key_path="foo")
/// example_output_cosmosdb = azure.streamanalytics.OutputCosmosdb("example",
///     name="output-to-cosmosdb",
///     stream_analytics_job_id=example.id,
///     cosmosdb_account_key=example_account.primary_key,
///     cosmosdb_sql_database_id=example_sql_database.id,
///     container_name=example_sql_container.name,
///     document_id="exampledocumentid")
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
///     var exampleAccount = new Azure.CosmosDB.Account("example", new()
///     {
///         Name = "exampledb",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         OfferType = "Standard",
///         Kind = "GlobalDocumentDB",
///         ConsistencyPolicy = new Azure.CosmosDB.Inputs.AccountConsistencyPolicyArgs
///         {
///             ConsistencyLevel = "BoundedStaleness",
///             MaxIntervalInSeconds = 10,
///             MaxStalenessPrefix = 200,
///         },
///         GeoLocations = new[]
///         {
///             new Azure.CosmosDB.Inputs.AccountGeoLocationArgs
///             {
///                 Location = exampleResourceGroup.Location,
///                 FailoverPriority = 0,
///             },
///         },
///     });
///
///     var exampleSqlDatabase = new Azure.CosmosDB.SqlDatabase("example", new()
///     {
///         Name = "cosmos-sql-db",
///         ResourceGroupName = exampleAccount.ResourceGroupName,
///         AccountName = exampleAccount.Name,
///         Throughput = 400,
///     });
///
///     var exampleSqlContainer = new Azure.CosmosDB.SqlContainer("example", new()
///     {
///         Name = "examplecontainer",
///         ResourceGroupName = exampleAccount.ResourceGroupName,
///         AccountName = exampleAccount.Name,
///         DatabaseName = exampleSqlDatabase.Name,
///         PartitionKeyPath = "foo",
///     });
///
///     var exampleOutputCosmosdb = new Azure.StreamAnalytics.OutputCosmosdb("example", new()
///     {
///         Name = "output-to-cosmosdb",
///         StreamAnalyticsJobId = example.Apply(getJobResult => getJobResult.Id),
///         CosmosdbAccountKey = exampleAccount.PrimaryKey,
///         CosmosdbSqlDatabaseId = exampleSqlDatabase.Id,
///         ContainerName = exampleSqlContainer.Name,
///         DocumentId = "exampledocumentid",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
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
/// 		exampleAccount, err := cosmosdb.NewAccount(ctx, "example", &cosmosdb.AccountArgs{
/// 			Name:              pulumi.String("exampledb"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 			OfferType:         pulumi.String("Standard"),
/// 			Kind:              pulumi.String("GlobalDocumentDB"),
/// 			ConsistencyPolicy: &cosmosdb.AccountConsistencyPolicyArgs{
/// 				ConsistencyLevel:     pulumi.String("BoundedStaleness"),
/// 				MaxIntervalInSeconds: pulumi.Int(10),
/// 				MaxStalenessPrefix:   pulumi.Int(200),
/// 			},
/// 			GeoLocations: cosmosdb.AccountGeoLocationArray{
/// 				&cosmosdb.AccountGeoLocationArgs{
/// 					Location:         exampleResourceGroup.Location,
/// 					FailoverPriority: pulumi.Int(0),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSqlDatabase, err := cosmosdb.NewSqlDatabase(ctx, "example", &cosmosdb.SqlDatabaseArgs{
/// 			Name:              pulumi.String("cosmos-sql-db"),
/// 			ResourceGroupName: exampleAccount.ResourceGroupName,
/// 			AccountName:       exampleAccount.Name,
/// 			Throughput:        pulumi.Int(400),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSqlContainer, err := cosmosdb.NewSqlContainer(ctx, "example", &cosmosdb.SqlContainerArgs{
/// 			Name:              pulumi.String("examplecontainer"),
/// 			ResourceGroupName: exampleAccount.ResourceGroupName,
/// 			AccountName:       exampleAccount.Name,
/// 			DatabaseName:      exampleSqlDatabase.Name,
/// 			PartitionKeyPath:  "foo",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = streamanalytics.NewOutputCosmosdb(ctx, "example", &streamanalytics.OutputCosmosdbArgs{
/// 			Name:                  pulumi.String("output-to-cosmosdb"),
/// 			StreamAnalyticsJobId:  example.Id(),
/// 			CosmosdbAccountKey:    exampleAccount.PrimaryKey,
/// 			CosmosdbSqlDatabaseId: exampleSqlDatabase.ID().ToIDOutput().ToStringOutput(),
/// 			ContainerName:         exampleSqlContainer.Name,
/// 			DocumentId:            pulumi.String("exampledocumentid"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_streamanalytics_getjob" "example" {
///   name                = "example-job"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "rg-example"
///   location = "West Europe"
/// }
/// resource "azure_cosmosdb_account" "example" {
///   name                = "exampledb"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   offer_type          = "Standard"
///   kind                = "GlobalDocumentDB"
///   consistency_policy = {
///     consistency_level       = "BoundedStaleness"
///     max_interval_in_seconds = 10
///     max_staleness_prefix    = 200
///   }
///   geo_locations {
///     location          = azure_core_resourcegroup.example.location
///     failover_priority = 0
///   }
/// }
/// resource "azure_cosmosdb_sqldatabase" "example" {
///   name                = "cosmos-sql-db"
///   resource_group_name = azure_cosmosdb_account.example.resource_group_name
///   account_name        = azure_cosmosdb_account.example.name
///   throughput          = 400
/// }
/// resource "azure_cosmosdb_sqlcontainer" "example" {
///   name                = "examplecontainer"
///   resource_group_name = azure_cosmosdb_account.example.resource_group_name
///   account_name        = azure_cosmosdb_account.example.name
///   database_name       = azure_cosmosdb_sqldatabase.example.name
///   partition_key_path  = "foo"
/// }
/// resource "azure_streamanalytics_outputcosmosdb" "example" {
///   name                     = "output-to-cosmosdb"
///   stream_analytics_job_id  = data.azure_streamanalytics_getjob.example.id
///   cosmosdb_account_key     = azure_cosmosdb_account.example.primary_key
///   cosmosdb_sql_database_id = azure_cosmosdb_sqldatabase.example.id
///   container_name           = azure_cosmosdb_sqlcontainer.example.name
///   document_id              = "exampledocumentid"
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
/// import com.pulumi.azure.cosmosdb.Account;
/// import com.pulumi.azure.cosmosdb.AccountArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountConsistencyPolicyArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountGeoLocationArgs;
/// import com.pulumi.azure.cosmosdb.SqlDatabase;
/// import com.pulumi.azure.cosmosdb.SqlDatabaseArgs;
/// import com.pulumi.azure.cosmosdb.SqlContainer;
/// import com.pulumi.azure.cosmosdb.SqlContainerArgs;
/// import com.pulumi.azure.streamanalytics.OutputCosmosdb;
/// import com.pulumi.azure.streamanalytics.OutputCosmosdbArgs;
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
///             .name("exampledb")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .offerType("Standard")
///             .kind("GlobalDocumentDB")
///             .consistencyPolicy(AccountConsistencyPolicyArgs.builder()
///                 .consistencyLevel("BoundedStaleness")
///                 .maxIntervalInSeconds(10)
///                 .maxStalenessPrefix(200)
///                 .build())
///             .geoLocations(AccountGeoLocationArgs.builder()
///                 .location(exampleResourceGroup.location())
///                 .failoverPriority(0)
///                 .build())
///             .build());
///
///         var exampleSqlDatabase = new SqlDatabase("exampleSqlDatabase", SqlDatabaseArgs.builder()
///             .name("cosmos-sql-db")
///             .resourceGroupName(exampleAccount.resourceGroupName())
///             .accountName(exampleAccount.name())
///             .throughput(400)
///             .build());
///
///         var exampleSqlContainer = new SqlContainer("exampleSqlContainer", SqlContainerArgs.builder()
///             .name("examplecontainer")
///             .resourceGroupName(exampleAccount.resourceGroupName())
///             .accountName(exampleAccount.name())
///             .databaseName(exampleSqlDatabase.name())
///             .partitionKeyPath("foo")
///             .build());
///
///         var exampleOutputCosmosdb = new OutputCosmosdb("exampleOutputCosmosdb", OutputCosmosdbArgs.builder()
///             .name("output-to-cosmosdb")
///             .streamAnalyticsJobId(example.applyValue(_example -> _example.id()))
///             .cosmosdbAccountKey(exampleAccount.primaryKey())
///             .cosmosdbSqlDatabaseId(exampleSqlDatabase.id())
///             .containerName(exampleSqlContainer.name())
///             .documentId("exampledocumentid")
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
///     type: azure:cosmosdb:Account
///     name: example
///     properties:
///       name: exampledb
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       offerType: Standard
///       kind: GlobalDocumentDB
///       consistencyPolicy:
///         consistencyLevel: BoundedStaleness
///         maxIntervalInSeconds: 10
///         maxStalenessPrefix: 200
///       geoLocations:
///         - location: ${exampleResourceGroup.location}
///           failoverPriority: 0
///   exampleSqlDatabase:
///     type: azure:cosmosdb:SqlDatabase
///     name: example
///     properties:
///       name: cosmos-sql-db
///       resourceGroupName: ${exampleAccount.resourceGroupName}
///       accountName: ${exampleAccount.name}
///       throughput: 400
///   exampleSqlContainer:
///     type: azure:cosmosdb:SqlContainer
///     name: example
///     properties:
///       name: examplecontainer
///       resourceGroupName: ${exampleAccount.resourceGroupName}
///       accountName: ${exampleAccount.name}
///       databaseName: ${exampleSqlDatabase.name}
///       partitionKeyPath: foo
///   exampleOutputCosmosdb:
///     type: azure:streamanalytics:OutputCosmosdb
///     name: example
///     properties:
///       name: output-to-cosmosdb
///       streamAnalyticsJobId: ${example.id}
///       cosmosdbAccountKey: ${exampleAccount.primaryKey}
///       cosmosdbSqlDatabaseId: ${exampleSqlDatabase.id}
///       containerName: ${exampleSqlContainer.name}
///       documentId: exampledocumentid
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
/// Stream Analytics Outputs for CosmosDB can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/outputCosmosdb:OutputCosmosdb example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/outputs/output1
/// ```
class OutputCosmosdb extends pulumi.CustomResource {
  /// The authentication mode for the CosmosDB database. Possible values are `ConnectionString` and `Msi`. Defaults to `ConnectionString`.
  late final pulumi.Output<String?> authenticationMode;
  /// The name of the CosmosDB container.
  late final pulumi.Output<String> containerName;
  /// The account key for the CosmosDB database.
  late final pulumi.Output<String> cosmosdbAccountKey;
  /// The ID of the CosmosDB database.
  late final pulumi.Output<String> cosmosdbSqlDatabaseId;
  /// The name of the field in output events used to specify the primary key which insert or update operations are based on.
  late final pulumi.Output<String?> documentId;
  /// The name of the Stream Analytics Output. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the field in output events used to specify the key for partitioning output across collections. If `containerName` contains `{partition}` token, this property is required to be specified.
  late final pulumi.Output<String?> partitionKey;
  /// The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobId;

  /// Creates a new [OutputCosmosdb].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutputCosmosdb]. {@macro pulumi_streamanalytics_output_cosmosdb_output_cosmosdb_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutputCosmosdb(
    String name, {
    OutputCosmosdbArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputCosmosdb:OutputCosmosdb',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['cosmosdbAccountKey'],
        ) {
    authenticationMode = registerOutput<String?>('authenticationMode');
    containerName = registerOutput<String>('containerName');
    cosmosdbAccountKey = registerOutput<String>('cosmosdbAccountKey', isSecret: true);
    cosmosdbSqlDatabaseId = registerOutput<String>('cosmosdbSqlDatabaseId');
    documentId = registerOutput<String?>('documentId');
    this.name = registerOutput<String>('name');
    partitionKey = registerOutput<String?>('partitionKey');
    streamAnalyticsJobId = registerOutput<String>('streamAnalyticsJobId');
  }

  /// Gets an existing [OutputCosmosdb] resource's state with the given [name] and [id].
  static OutputCosmosdb get(
    String name,
    pulumi.Input<String> id, {
    OutputCosmosdbState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OutputCosmosdb._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OutputCosmosdb._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputCosmosdb:OutputCosmosdb',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationMode = registerOutput<String?>('authenticationMode');
    containerName = registerOutput<String>('containerName');
    cosmosdbAccountKey = registerOutput<String>('cosmosdbAccountKey', isSecret: true);
    cosmosdbSqlDatabaseId = registerOutput<String>('cosmosdbSqlDatabaseId');
    documentId = registerOutput<String?>('documentId');
    this.name = registerOutput<String>('name');
    partitionKey = registerOutput<String?>('partitionKey');
    streamAnalyticsJobId = registerOutput<String>('streamAnalyticsJobId');
  }

  /// Creates a typed reference to an existing [OutputCosmosdb] resource.
  OutputCosmosdb.reference(String urn)
    : super(
        'azure:streamanalytics/outputCosmosdb:OutputCosmosdb',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['cosmosdbAccountKey'],
        isResourceReference: true,
      ) {
    authenticationMode = registerOutput<String?>('authenticationMode');
    containerName = registerOutput<String>('containerName');
    cosmosdbAccountKey = registerOutput<String>('cosmosdbAccountKey', isSecret: true);
    cosmosdbSqlDatabaseId = registerOutput<String>('cosmosdbSqlDatabaseId');
    documentId = registerOutput<String?>('documentId');
    this.name = registerOutput<String>('name');
    partitionKey = registerOutput<String?>('partitionKey');
    streamAnalyticsJobId = registerOutput<String>('streamAnalyticsJobId');
  }
}
