import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_data_connection_args.dart';
import 'iot_hub_data_connection_state.dart';

/// Manages a Kusto (also known as Azure Data Explorer) IotHub Data Connection
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
/// const exampleIoTHub = new azure.iot.IoTHub("example", {
///     name: "exampleIoTHub",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: {
///         name: "B1",
///         capacity: 1,
///     },
/// });
/// const exampleSharedAccessPolicy = new azure.iot.SharedAccessPolicy("example", {
///     name: "example-shared-access-policy",
///     resourceGroupName: example.name,
///     iothubName: exampleIoTHub.name,
///     registryRead: true,
/// });
/// const exampleConsumerGroup = new azure.iot.ConsumerGroup("example", {
///     name: "example-consumer-group",
///     resourceGroupName: example.name,
///     iothubName: exampleIoTHub.name,
///     eventhubEndpointName: "events",
/// });
/// const exampleIotHubDataConnection = new azure.kusto.IotHubDataConnection("example", {
///     name: "my-kusto-iothub-data-connection",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterName: exampleCluster.name,
///     databaseName: exampleDatabase.name,
///     iothubId: exampleIoTHub.id,
///     consumerGroup: exampleConsumerGroup.name,
///     sharedAccessPolicyName: exampleSharedAccessPolicy.name,
///     eventSystemProperties: [
///         "message-id",
///         "sequence-number",
///         "to",
///     ],
///     tableName: "my-table",
///     mappingRuleName: "my-table-mapping",
///     dataFormat: "JSON",
///     retrievalStartDate: "2023-06-26T12:00:00Z",
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
/// example_io_t_hub = azure.iot.IoTHub("example",
///     name="exampleIoTHub",
///     resource_group_name=example.name,
///     location=example.location,
///     sku={
///         "name": "B1",
///         "capacity": 1,
///     })
/// example_shared_access_policy = azure.iot.SharedAccessPolicy("example",
///     name="example-shared-access-policy",
///     resource_group_name=example.name,
///     iothub_name=example_io_t_hub.name,
///     registry_read=True)
/// example_consumer_group = azure.iot.ConsumerGroup("example",
///     name="example-consumer-group",
///     resource_group_name=example.name,
///     iothub_name=example_io_t_hub.name,
///     eventhub_endpoint_name="events")
/// example_iot_hub_data_connection = azure.kusto.IotHubDataConnection("example",
///     name="my-kusto-iothub-data-connection",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_name=example_cluster.name,
///     database_name=example_database.name,
///     iothub_id=example_io_t_hub.id,
///     consumer_group=example_consumer_group.name,
///     shared_access_policy_name=example_shared_access_policy.name,
///     event_system_properties=[
///         "message-id",
///         "sequence-number",
///         "to",
///     ],
///     table_name="my-table",
///     mapping_rule_name="my-table-mapping",
///     data_format="JSON",
///     retrieval_start_date="2023-06-26T12:00:00Z")
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
///     var exampleIoTHub = new Azure.Iot.IoTHub("example", new()
///     {
///         Name = "exampleIoTHub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = new Azure.Iot.Inputs.IoTHubSkuArgs
///         {
///             Name = "B1",
///             Capacity = 1,
///         },
///     });
///
///     var exampleSharedAccessPolicy = new Azure.Iot.SharedAccessPolicy("example", new()
///     {
///         Name = "example-shared-access-policy",
///         ResourceGroupName = example.Name,
///         IothubName = exampleIoTHub.Name,
///         RegistryRead = true,
///     });
///
///     var exampleConsumerGroup = new Azure.Iot.ConsumerGroup("example", new()
///     {
///         Name = "example-consumer-group",
///         ResourceGroupName = example.Name,
///         IothubName = exampleIoTHub.Name,
///         EventhubEndpointName = "events",
///     });
///
///     var exampleIotHubDataConnection = new Azure.Kusto.IotHubDataConnection("example", new()
///     {
///         Name = "my-kusto-iothub-data-connection",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterName = exampleCluster.Name,
///         DatabaseName = exampleDatabase.Name,
///         IothubId = exampleIoTHub.Id,
///         ConsumerGroup = exampleConsumerGroup.Name,
///         SharedAccessPolicyName = exampleSharedAccessPolicy.Name,
///         EventSystemProperties = new[]
///         {
///             "message-id",
///             "sequence-number",
///             "to",
///         },
///         TableName = "my-table",
///         MappingRuleName = "my-table-mapping",
///         DataFormat = "JSON",
///         RetrievalStartDate = "2023-06-26T12:00:00Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iot"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
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
/// 		exampleIoTHub, err := iot.NewIoTHub(ctx, "example", &iot.IoTHubArgs{
/// 			Name:              pulumi.String("exampleIoTHub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku: &iot.IoTHubSkuArgs{
/// 				Name:     pulumi.String("B1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSharedAccessPolicy, err := iot.NewSharedAccessPolicy(ctx, "example", &iot.SharedAccessPolicyArgs{
/// 			Name:              pulumi.String("example-shared-access-policy"),
/// 			ResourceGroupName: example.Name,
/// 			IothubName:        exampleIoTHub.Name,
/// 			RegistryRead:      pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleConsumerGroup, err := iot.NewConsumerGroup(ctx, "example", &iot.ConsumerGroupArgs{
/// 			Name:                 pulumi.String("example-consumer-group"),
/// 			ResourceGroupName:    example.Name,
/// 			IothubName:           exampleIoTHub.Name,
/// 			EventhubEndpointName: pulumi.String("events"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewIotHubDataConnection(ctx, "example", &kusto.IotHubDataConnectionArgs{
/// 			Name:                   pulumi.String("my-kusto-iothub-data-connection"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			ClusterName:            exampleCluster.Name,
/// 			DatabaseName:           exampleDatabase.Name,
/// 			IothubId:               exampleIoTHub.ID(),
/// 			ConsumerGroup:          exampleConsumerGroup.Name,
/// 			SharedAccessPolicyName: exampleSharedAccessPolicy.Name,
/// 			EventSystemProperties: pulumi.StringArray{
/// 				pulumi.String("message-id"),
/// 				pulumi.String("sequence-number"),
/// 				pulumi.String("to"),
/// 			},
/// 			TableName:          pulumi.String("my-table"),
/// 			MappingRuleName:    pulumi.String("my-table-mapping"),
/// 			DataFormat:         pulumi.String("JSON"),
/// 			RetrievalStartDate: pulumi.String("2023-06-26T12:00:00Z"),
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
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
/// import com.pulumi.azure.kusto.Database;
/// import com.pulumi.azure.kusto.DatabaseArgs;
/// import com.pulumi.azure.iot.IoTHub;
/// import com.pulumi.azure.iot.IoTHubArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubSkuArgs;
/// import com.pulumi.azure.iot.SharedAccessPolicy;
/// import com.pulumi.azure.iot.SharedAccessPolicyArgs;
/// import com.pulumi.azure.iot.ConsumerGroup;
/// import com.pulumi.azure.iot.ConsumerGroupArgs;
/// import com.pulumi.azure.kusto.IotHubDataConnection;
/// import com.pulumi.azure.kusto.IotHubDataConnectionArgs;
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
///         var exampleIoTHub = new IoTHub("exampleIoTHub", IoTHubArgs.builder()
///             .name("exampleIoTHub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku(IoTHubSkuArgs.builder()
///                 .name("B1")
///                 .capacity(1)
///                 .build())
///             .build());
///
///         var exampleSharedAccessPolicy = new SharedAccessPolicy("exampleSharedAccessPolicy", SharedAccessPolicyArgs.builder()
///             .name("example-shared-access-policy")
///             .resourceGroupName(example.name())
///             .iothubName(exampleIoTHub.name())
///             .registryRead(true)
///             .build());
///
///         var exampleConsumerGroup = new ConsumerGroup("exampleConsumerGroup", ConsumerGroupArgs.builder()
///             .name("example-consumer-group")
///             .resourceGroupName(example.name())
///             .iothubName(exampleIoTHub.name())
///             .eventhubEndpointName("events")
///             .build());
///
///         var exampleIotHubDataConnection = new IotHubDataConnection("exampleIotHubDataConnection", IotHubDataConnectionArgs.builder()
///             .name("my-kusto-iothub-data-connection")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterName(exampleCluster.name())
///             .databaseName(exampleDatabase.name())
///             .iothubId(exampleIoTHub.id())
///             .consumerGroup(exampleConsumerGroup.name())
///             .sharedAccessPolicyName(exampleSharedAccessPolicy.name())
///             .eventSystemProperties(
///                 "message-id",
///                 "sequence-number",
///                 "to")
///             .tableName("my-table")
///             .mappingRuleName("my-table-mapping")
///             .dataFormat("JSON")
///             .retrievalStartDate("2023-06-26T12:00:00Z")
///             .build());
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
///   exampleIoTHub:
///     type: azure:iot:IoTHub
///     name: example
///     properties:
///       name: exampleIoTHub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku:
///         name: B1
///         capacity: '1'
///   exampleSharedAccessPolicy:
///     type: azure:iot:SharedAccessPolicy
///     name: example
///     properties:
///       name: example-shared-access-policy
///       resourceGroupName: ${example.name}
///       iothubName: ${exampleIoTHub.name}
///       registryRead: true
///   exampleConsumerGroup:
///     type: azure:iot:ConsumerGroup
///     name: example
///     properties:
///       name: example-consumer-group
///       resourceGroupName: ${example.name}
///       iothubName: ${exampleIoTHub.name}
///       eventhubEndpointName: events
///   exampleIotHubDataConnection:
///     type: azure:kusto:IotHubDataConnection
///     name: example
///     properties:
///       name: my-kusto-iothub-data-connection
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterName: ${exampleCluster.name}
///       databaseName: ${exampleDatabase.name}
///       iothubId: ${exampleIoTHub.id}
///       consumerGroup: ${exampleConsumerGroup.name}
///       sharedAccessPolicyName: ${exampleSharedAccessPolicy.name}
///       eventSystemProperties:
///         - message-id
///         - sequence-number
///         - to
///       tableName: my-table
///       mappingRuleName: my-table-mapping
///       dataFormat: JSON
///       retrievalStartDate: 2023-06-26T12:00:00Z
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
/// Kusto IotHub Data Connections can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:kusto/iotHubDataConnection:IotHubDataConnection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Kusto/clusters/cluster1/databases/database1/dataConnections/dataConnection1
/// ```
class IotHubDataConnection extends pulumi.CustomResource {
  /// Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterName;

  /// Specifies the IotHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created.
  late final pulumi.Output<String> consumerGroup;

  /// Specifies the data format of the IoTHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSV`, `TSVE`, `TXT` and `W3CLOGFILE`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> dataFormat;

  /// Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> databaseName;

  /// Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`.
  late final pulumi.Output<String?> databaseRoutingType;

  /// Specifies the System Properties that each IoT Hub message should contain. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>?> eventSystemProperties;

  /// Specifies the resource id of the IotHub this data connection will use for ingestion. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iothubId;

  /// The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> mappingRuleName;

  /// The name of the Kusto IotHub Data Connection to create. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Specifies the date after which data should be retrieved from IoT Hub. When defined, the data connection retrieves existing events created since the specified retrieval start date. It can only retrieve events retained by the IoT Hub, based on its retention period. The value should be in RFC3339 format (e.g., `2023-06-26T12:00:00Z`).
  late final pulumi.Output<String> retrievalStartDate;

  /// Specifies the IotHub Shared Access Policy this data connection will use for ingestion, which must have read permission. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sharedAccessPolicyName;

  /// Specifies the target table name used for the message ingestion. Table must exist before resource is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> tableName;

  /// Creates a new [IotHubDataConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IotHubDataConnection]. {@macro pulumi_kusto_iot_hub_data_connection_iot_hub_data_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IotHubDataConnection(
    String name, {
    IotHubDataConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:kusto/iotHubDataConnection:IotHubDataConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterName = registerOutput<String>('clusterName');
    consumerGroup = registerOutput<String>('consumerGroup');
    dataFormat = registerOutput<String?>('dataFormat');
    databaseName = registerOutput<String>('databaseName');
    databaseRoutingType = registerOutput<String?>('databaseRoutingType');
    eventSystemProperties = registerOutput<List<String>?>(
      'eventSystemProperties',
    );
    iothubId = registerOutput<String>('iothubId');
    location = registerOutput<String>('location');
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retrievalStartDate = registerOutput<String>('retrievalStartDate');
    sharedAccessPolicyName = registerOutput<String>('sharedAccessPolicyName');
    tableName = registerOutput<String?>('tableName');
  }

  /// Gets an existing [IotHubDataConnection] resource's state with the given [name] and [id].
  static IotHubDataConnection get(
    String name,
    pulumi.Input<String> id, {
    IotHubDataConnectionState? state,
  }) {
    return IotHubDataConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IotHubDataConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:kusto/iotHubDataConnection:IotHubDataConnection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterName = registerOutput<String>('clusterName');
    consumerGroup = registerOutput<String>('consumerGroup');
    dataFormat = registerOutput<String?>('dataFormat');
    databaseName = registerOutput<String>('databaseName');
    databaseRoutingType = registerOutput<String?>('databaseRoutingType');
    eventSystemProperties = registerOutput<List<String>?>(
      'eventSystemProperties',
    );
    iothubId = registerOutput<String>('iothubId');
    location = registerOutput<String>('location');
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retrievalStartDate = registerOutput<String>('retrievalStartDate');
    sharedAccessPolicyName = registerOutput<String>('sharedAccessPolicyName');
    tableName = registerOutput<String?>('tableName');
  }
}
