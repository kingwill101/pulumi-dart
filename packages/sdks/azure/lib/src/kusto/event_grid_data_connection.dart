import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_grid_data_connection_args.dart';
import 'event_grid_data_connection_state.dart';

/// Manages a Kusto (also known as Azure Data Explorer) Event Grid Data Connection
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleCluster = new azure.kusto.Cluster("example", {
///     name: "examplekustocluster",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         name: "Standard_D13_v2",
///         capacity: 2,
///     },
/// });
/// const exampleDatabase = new azure.kusto.Database("example", {
///     name: "example-kusto-database",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterName: exampleCluster.name,
///     hotCachePeriod: "P7D",
///     softDeletePeriod: "P31D",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "storageaccountname",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
/// });
/// const exampleEventHubNamespace = new azure.eventhub.EventHubNamespace("example", {
///     name: "eventhubnamespace-example",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const exampleEventHub = new azure.eventhub.EventHub("example", {
///     name: "eventhub-example",
///     namespaceName: exampleEventHubNamespace.name,
///     resourceGroupName: example.name,
///     partitionCount: 1,
///     messageRetention: 1,
/// });
/// const exampleConsumerGroup = new azure.eventhub.ConsumerGroup("example", {
///     name: "consumergroup-example",
///     namespaceName: exampleEventHubNamespace.name,
///     eventhubName: exampleEventHub.name,
///     resourceGroupName: example.name,
/// });
/// const exampleEventSubscription = new azure.eventgrid.EventSubscription("example", {
///     name: "eventgrid-example",
///     scope: exampleAccount.id,
///     eventhubEndpointId: exampleEventHub.id,
///     eventDeliverySchema: "EventGridSchema",
///     includedEventTypes: [
///         "Microsoft.Storage.BlobCreated",
///         "Microsoft.Storage.BlobRenamed",
///     ],
///     retryPolicy: {
///         eventTimeToLive: 144,
///         maxDeliveryAttempts: 10,
///     },
/// });
/// const exampleEventGridDataConnection = new azure.kusto.EventGridDataConnection("example", {
///     name: "my-kusto-eventgrid-data-connection",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterName: exampleCluster.name,
///     databaseName: exampleDatabase.name,
///     storageAccountId: exampleAccount.id,
///     eventhubId: exampleEventHub.id,
///     eventhubConsumerGroupName: exampleConsumerGroup.name,
///     tableName: "my-table",
///     mappingRuleName: "my-table-mapping",
///     dataFormat: "JSON",
/// }, {
///     dependsOn: [exampleEventSubscription],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_cluster = azure.kusto.Cluster("example",
///     name="examplekustocluster",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Standard_D13_v2",
///         "capacity": 2,
///     })
/// example_database = azure.kusto.Database("example",
///     name="example-kusto-database",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_name=example_cluster.name,
///     hot_cache_period="P7D",
///     soft_delete_period="P31D")
/// example_account = azure.storage.Account("example",
///     name="storageaccountname",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="GRS")
/// example_event_hub_namespace = azure.eventhub.EventHubNamespace("example",
///     name="eventhubnamespace-example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// example_event_hub = azure.eventhub.EventHub("example",
///     name="eventhub-example",
///     namespace_name=example_event_hub_namespace.name,
///     resource_group_name=example.name,
///     partition_count=1,
///     message_retention=1)
/// example_consumer_group = azure.eventhub.ConsumerGroup("example",
///     name="consumergroup-example",
///     namespace_name=example_event_hub_namespace.name,
///     eventhub_name=example_event_hub.name,
///     resource_group_name=example.name)
/// example_event_subscription = azure.eventgrid.EventSubscription("example",
///     name="eventgrid-example",
///     scope=example_account.id,
///     eventhub_endpoint_id=example_event_hub.id,
///     event_delivery_schema="EventGridSchema",
///     included_event_types=[
///         "Microsoft.Storage.BlobCreated",
///         "Microsoft.Storage.BlobRenamed",
///     ],
///     retry_policy={
///         "event_time_to_live": 144,
///         "max_delivery_attempts": 10,
///     })
/// example_event_grid_data_connection = azure.kusto.EventGridDataConnection("example",
///     name="my-kusto-eventgrid-data-connection",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_name=example_cluster.name,
///     database_name=example_database.name,
///     storage_account_id=example_account.id,
///     eventhub_id=example_event_hub.id,
///     eventhub_consumer_group_name=example_consumer_group.name,
///     table_name="my-table",
///     mapping_rule_name="my-table-mapping",
///     data_format="JSON",
///     opts = pulumi.ResourceOptions(depends_on=[example_event_subscription]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleCluster = new Azure.Kusto.Cluster("example", new()
///     {
///         Name = "examplekustocluster",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.Kusto.Inputs.ClusterSkuArgs
///         {
///             Name = "Standard_D13_v2",
///             Capacity = 2,
///         },
///     });
///
///     var exampleDatabase = new Azure.Kusto.Database("example", new()
///     {
///         Name = "example-kusto-database",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterName = exampleCluster.Name,
///         HotCachePeriod = "P7D",
///         SoftDeletePeriod = "P31D",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///     });
///
///     var exampleEventHubNamespace = new Azure.EventHub.EventHubNamespace("example", new()
///     {
///         Name = "eventhubnamespace-example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var exampleEventHub = new Azure.EventHub.EventHub("example", new()
///     {
///         Name = "eventhub-example",
///         NamespaceName = exampleEventHubNamespace.Name,
///         ResourceGroupName = example.Name,
///         PartitionCount = 1,
///         MessageRetention = 1,
///     });
///
///     var exampleConsumerGroup = new Azure.EventHub.ConsumerGroup("example", new()
///     {
///         Name = "consumergroup-example",
///         NamespaceName = exampleEventHubNamespace.Name,
///         EventhubName = exampleEventHub.Name,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleEventSubscription = new Azure.EventGrid.EventSubscription("example", new()
///     {
///         Name = "eventgrid-example",
///         Scope = exampleAccount.Id,
///         EventhubEndpointId = exampleEventHub.Id,
///         EventDeliverySchema = "EventGridSchema",
///         IncludedEventTypes = new[]
///         {
///             "Microsoft.Storage.BlobCreated",
///             "Microsoft.Storage.BlobRenamed",
///         },
///         RetryPolicy = new Azure.EventGrid.Inputs.EventSubscriptionRetryPolicyArgs
///         {
///             EventTimeToLive = 144,
///             MaxDeliveryAttempts = 10,
///         },
///     });
///
///     var exampleEventGridDataConnection = new Azure.Kusto.EventGridDataConnection("example", new()
///     {
///         Name = "my-kusto-eventgrid-data-connection",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterName = exampleCluster.Name,
///         DatabaseName = exampleDatabase.Name,
///         StorageAccountId = exampleAccount.Id,
///         EventhubId = exampleEventHub.Id,
///         EventhubConsumerGroupName = exampleConsumerGroup.Name,
///         TableName = "my-table",
///         MappingRuleName = "my-table-mapping",
///         DataFormat = "JSON",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleEventSubscription,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventgrid"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCluster, err := kusto.NewCluster(ctx, "example", &kusto.ClusterArgs{
/// 			Name:              pulumi.String("examplekustocluster"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &kusto.ClusterSkuArgs{
/// 				Name:     pulumi.String("Standard_D13_v2"),
/// 				Capacity: pulumi.Int(2),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabase, err := kusto.NewDatabase(ctx, "example", &kusto.DatabaseArgs{
/// 			Name:              pulumi.String("example-kusto-database"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			ClusterName:       exampleCluster.Name,
/// 			HotCachePeriod:    pulumi.String("P7D"),
/// 			SoftDeletePeriod:  pulumi.String("P31D"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHubNamespace, err := eventhub.NewEventHubNamespace(ctx, "example", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("eventhubnamespace-example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHub, err := eventhub.NewEventHub(ctx, "example", &eventhub.EventHubArgs{
/// 			Name:              pulumi.String("eventhub-example"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			ResourceGroupName: example.Name,
/// 			PartitionCount:    pulumi.Int(1),
/// 			MessageRetention:  pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleConsumerGroup, err := eventhub.NewConsumerGroup(ctx, "example", &eventhub.ConsumerGroupArgs{
/// 			Name:              pulumi.String("consumergroup-example"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			EventhubName:      exampleEventHub.Name,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventSubscription, err := eventgrid.NewEventSubscription(ctx, "example", &eventgrid.EventSubscriptionArgs{
/// 			Name:                pulumi.String("eventgrid-example"),
/// 			Scope:               exampleAccount.ID(),
/// 			EventhubEndpointId:  exampleEventHub.ID(),
/// 			EventDeliverySchema: pulumi.String("EventGridSchema"),
/// 			IncludedEventTypes: pulumi.StringArray{
/// 				pulumi.String("Microsoft.Storage.BlobCreated"),
/// 				pulumi.String("Microsoft.Storage.BlobRenamed"),
/// 			},
/// 			RetryPolicy: &eventgrid.EventSubscriptionRetryPolicyArgs{
/// 				EventTimeToLive:     pulumi.Int(144),
/// 				MaxDeliveryAttempts: pulumi.Int(10),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewEventGridDataConnection(ctx, "example", &kusto.EventGridDataConnectionArgs{
/// 			Name:                      pulumi.String("my-kusto-eventgrid-data-connection"),
/// 			ResourceGroupName:         example.Name,
/// 			Location:                  example.Location,
/// 			ClusterName:               exampleCluster.Name,
/// 			DatabaseName:              exampleDatabase.Name,
/// 			StorageAccountId:          exampleAccount.ID(),
/// 			EventhubId:                exampleEventHub.ID(),
/// 			EventhubConsumerGroupName: exampleConsumerGroup.Name,
/// 			TableName:                 pulumi.String("my-table"),
/// 			MappingRuleName:           pulumi.String("my-table-mapping"),
/// 			DataFormat:                pulumi.String("JSON"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleEventSubscription,
/// 		}))
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
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
/// import com.pulumi.azure.kusto.Database;
/// import com.pulumi.azure.kusto.DatabaseArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
/// import com.pulumi.azure.eventhub.EventHub;
/// import com.pulumi.azure.eventhub.EventHubArgs;
/// import com.pulumi.azure.eventhub.ConsumerGroup;
/// import com.pulumi.azure.eventhub.ConsumerGroupArgs;
/// import com.pulumi.azure.eventgrid.EventSubscription;
/// import com.pulumi.azure.eventgrid.EventSubscriptionArgs;
/// import com.pulumi.azure.eventgrid.inputs.EventSubscriptionRetryPolicyArgs;
/// import com.pulumi.azure.kusto.EventGridDataConnection;
/// import com.pulumi.azure.kusto.EventGridDataConnectionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("examplekustocluster")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(ClusterSkuArgs.builder()
///                 .name("Standard_D13_v2")
///                 .capacity(2)
///                 .build())
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("example-kusto-database")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterName(exampleCluster.name())
///             .hotCachePeriod("P7D")
///             .softDeletePeriod("P31D")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .build());
///
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("eventhubnamespace-example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var exampleEventHub = new EventHub("exampleEventHub", EventHubArgs.builder()
///             .name("eventhub-example")
///             .namespaceName(exampleEventHubNamespace.name())
///             .resourceGroupName(example.name())
///             .partitionCount(1)
///             .messageRetention(1)
///             .build());
///
///         var exampleConsumerGroup = new ConsumerGroup("exampleConsumerGroup", ConsumerGroupArgs.builder()
///             .name("consumergroup-example")
///             .namespaceName(exampleEventHubNamespace.name())
///             .eventhubName(exampleEventHub.name())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleEventSubscription = new EventSubscription("exampleEventSubscription", EventSubscriptionArgs.builder()
///             .name("eventgrid-example")
///             .scope(exampleAccount.id())
///             .eventhubEndpointId(exampleEventHub.id())
///             .eventDeliverySchema("EventGridSchema")
///             .includedEventTypes(
///                 "Microsoft.Storage.BlobCreated",
///                 "Microsoft.Storage.BlobRenamed")
///             .retryPolicy(EventSubscriptionRetryPolicyArgs.builder()
///                 .eventTimeToLive(144)
///                 .maxDeliveryAttempts(10)
///                 .build())
///             .build());
///
///         var exampleEventGridDataConnection = new EventGridDataConnection("exampleEventGridDataConnection", EventGridDataConnectionArgs.builder()
///             .name("my-kusto-eventgrid-data-connection")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterName(exampleCluster.name())
///             .databaseName(exampleDatabase.name())
///             .storageAccountId(exampleAccount.id())
///             .eventhubId(exampleEventHub.id())
///             .eventhubConsumerGroupName(exampleConsumerGroup.name())
///             .tableName("my-table")
///             .mappingRuleName("my-table-mapping")
///             .dataFormat("JSON")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleEventSubscription)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleCluster:
///     type: azure:kusto:Cluster
///     name: example
///     properties:
///       name: examplekustocluster
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         name: Standard_D13_v2
///         capacity: 2
///   exampleDatabase:
///     type: azure:kusto:Database
///     name: example
///     properties:
///       name: example-kusto-database
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterName: ${exampleCluster.name}
///       hotCachePeriod: P7D
///       softDeletePeriod: P31D
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: storageaccountname
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: GRS
///   exampleEventHubNamespace:
///     type: azure:eventhub:EventHubNamespace
///     name: example
///     properties:
///       name: eventhubnamespace-example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   exampleEventHub:
///     type: azure:eventhub:EventHub
///     name: example
///     properties:
///       name: eventhub-example
///       namespaceName: ${exampleEventHubNamespace.name}
///       resourceGroupName: ${example.name}
///       partitionCount: 1
///       messageRetention: 1
///   exampleConsumerGroup:
///     type: azure:eventhub:ConsumerGroup
///     name: example
///     properties:
///       name: consumergroup-example
///       namespaceName: ${exampleEventHubNamespace.name}
///       eventhubName: ${exampleEventHub.name}
///       resourceGroupName: ${example.name}
///   exampleEventSubscription:
///     type: azure:eventgrid:EventSubscription
///     name: example
///     properties:
///       name: eventgrid-example
///       scope: ${exampleAccount.id}
///       eventhubEndpointId: ${exampleEventHub.id}
///       eventDeliverySchema: EventGridSchema
///       includedEventTypes:
///         - Microsoft.Storage.BlobCreated
///         - Microsoft.Storage.BlobRenamed
///       retryPolicy:
///         eventTimeToLive: 144
///         maxDeliveryAttempts: 10
///   exampleEventGridDataConnection:
///     type: azure:kusto:EventGridDataConnection
///     name: example
///     properties:
///       name: my-kusto-eventgrid-data-connection
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterName: ${exampleCluster.name}
///       databaseName: ${exampleDatabase.name}
///       storageAccountId: ${exampleAccount.id}
///       eventhubId: ${exampleEventHub.id}
///       eventhubConsumerGroupName: ${exampleConsumerGroup.name}
///       tableName: my-table
///       mappingRuleName: my-table-mapping
///       dataFormat: JSON
///     options:
///       dependsOn:
///         - ${exampleEventSubscription}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Kusto` - 2024-04-13
///
/// ## Import
///
/// Kusto Event Grid Data Connections can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:kusto/eventGridDataConnection:EventGridDataConnection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Kusto/clusters/cluster1/databases/database1/dataConnections/dataConnection1
/// ```
class EventGridDataConnection extends pulumi.CustomResource {
  /// Specifies the blob storage event type that needs to be processed. Possible Values are `Microsoft.Storage.BlobCreated` and `Microsoft.Storage.BlobRenamed`. Defaults to `Microsoft.Storage.BlobCreated`.
  late final pulumi.Output<String?> blobStorageEventType;

  /// Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterName;

  /// Specifies the data format of the EventHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSV`, `TSVE`, `TXT` and `W3CLOGFILE`.
  late final pulumi.Output<String?> dataFormat;

  /// Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> databaseName;

  /// Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`.
  late final pulumi.Output<String?> databaseRoutingType;

  /// The resource ID of the event grid that is subscribed to the storage account events.
  late final pulumi.Output<String> eventgridEventSubscriptionId;
  late final pulumi.Output<String> eventgridResourceId;

  /// Specifies the Event Hub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created.
  late final pulumi.Output<String> eventhubConsumerGroupName;

  /// Specifies the resource id of the Event Hub this data connection will use for ingestion. Changing this forces a new resource to be created.
  late final pulumi.Output<String> eventhubId;

  /// The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Empty for non-managed identity based data connection. For system assigned identity, provide cluster resource Id. For user assigned identity (UAI) provide the UAI resource Id.
  late final pulumi.Output<String> managedIdentityId;
  late final pulumi.Output<String> managedIdentityResourceId;

  /// Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created.
  late final pulumi.Output<String?> mappingRuleName;

  /// The name of the Kusto Event Grid Data Connection to create. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// is the first record of every file ignored? Defaults to `false`.
  late final pulumi.Output<bool?> skipFirstRecord;

  /// Specifies the resource id of the Storage Account this data connection will use for ingestion. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountId;

  /// Specifies the target table name used for the message ingestion. Table must exist before resource is created.
  late final pulumi.Output<String?> tableName;

  /// Creates a new [EventGridDataConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventGridDataConnection]. {@macro pulumi_kusto_event_grid_data_connection_event_grid_data_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventGridDataConnection(
    String name, {
    EventGridDataConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:kusto/eventGridDataConnection:EventGridDataConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    blobStorageEventType = registerOutput<String?>('blobStorageEventType');
    clusterName = registerOutput<String>('clusterName');
    dataFormat = registerOutput<String?>('dataFormat');
    databaseName = registerOutput<String>('databaseName');
    databaseRoutingType = registerOutput<String?>('databaseRoutingType');
    eventgridEventSubscriptionId = registerOutput<String>(
      'eventgridEventSubscriptionId',
    );
    eventgridResourceId = registerOutput<String>('eventgridResourceId');
    eventhubConsumerGroupName = registerOutput<String>(
      'eventhubConsumerGroupName',
    );
    eventhubId = registerOutput<String>('eventhubId');
    location = registerOutput<String>('location');
    managedIdentityId = registerOutput<String>('managedIdentityId');
    managedIdentityResourceId = registerOutput<String>(
      'managedIdentityResourceId',
    );
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skipFirstRecord = registerOutput<bool?>('skipFirstRecord');
    storageAccountId = registerOutput<String>('storageAccountId');
    tableName = registerOutput<String?>('tableName');
  }

  /// Gets an existing [EventGridDataConnection] resource's state with the given [name] and [id].
  static EventGridDataConnection get(
    String name,
    pulumi.Input<String> id, {
    EventGridDataConnectionState? state,
  }) {
    return EventGridDataConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventGridDataConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:kusto/eventGridDataConnection:EventGridDataConnection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    blobStorageEventType = registerOutput<String?>('blobStorageEventType');
    clusterName = registerOutput<String>('clusterName');
    dataFormat = registerOutput<String?>('dataFormat');
    databaseName = registerOutput<String>('databaseName');
    databaseRoutingType = registerOutput<String?>('databaseRoutingType');
    eventgridEventSubscriptionId = registerOutput<String>(
      'eventgridEventSubscriptionId',
    );
    eventgridResourceId = registerOutput<String>('eventgridResourceId');
    eventhubConsumerGroupName = registerOutput<String>(
      'eventhubConsumerGroupName',
    );
    eventhubId = registerOutput<String>('eventhubId');
    location = registerOutput<String>('location');
    managedIdentityId = registerOutput<String>('managedIdentityId');
    managedIdentityResourceId = registerOutput<String>(
      'managedIdentityResourceId',
    );
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skipFirstRecord = registerOutput<bool?>('skipFirstRecord');
    storageAccountId = registerOutput<String>('storageAccountId');
    tableName = registerOutput<String?>('tableName');
  }
}
