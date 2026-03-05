import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrichment_args.dart';
import 'enrichment_state.dart';

/// Manages an IotHub Enrichment
///
/// &gt; **Note:** Enrichment can be defined either directly on the `azure.iot.IoTHub` resource, or using the `azure.iot.Enrichment` resources - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageaccount",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "example",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleIoTHub = new azure.iot.IoTHub("example", {
///     name: "exampleIothub",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: {
///         name: "S1",
///         capacity: 1,
///     },
///     tags: {
///         purpose: "testing",
///     },
/// });
/// const exampleEndpointStorageContainer = new azure.iot.EndpointStorageContainer("example", {
///     resourceGroupName: example.name,
///     iothubId: exampleIoTHub.id,
///     name: "example",
///     connectionString: exampleAccount.primaryBlobConnectionString,
///     batchFrequencyInSeconds: 60,
///     maxChunkSizeInBytes: 10485760,
///     containerName: exampleContainer.name,
///     encoding: "Avro",
///     fileNameFormat: "{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}",
/// });
/// const exampleRoute = new azure.iot.Route("example", {
///     resourceGroupName: example.name,
///     iothubName: exampleIoTHub.name,
///     name: "example",
///     source: "DeviceMessages",
///     condition: "true",
///     endpointNames: exampleEndpointStorageContainer.name,
///     enabled: true,
/// });
/// const exampleEnrichment = new azure.iot.Enrichment("example", {
///     resourceGroupName: example.name,
///     iothubName: exampleIoTHub.name,
///     key: "example",
///     value: "my value",
///     endpointNames: [exampleEndpointStorageContainer.name],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestorageaccount",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="example",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_io_t_hub = azure.iot.IoTHub("example",
///     name="exampleIothub",
///     resource_group_name=example.name,
///     location=example.location,
///     sku={
///         "name": "S1",
///         "capacity": 1,
///     },
///     tags={
///         "purpose": "testing",
///     })
/// example_endpoint_storage_container = azure.iot.EndpointStorageContainer("example",
///     resource_group_name=example.name,
///     iothub_id=example_io_t_hub.id,
///     name="example",
///     connection_string=example_account.primary_blob_connection_string,
///     batch_frequency_in_seconds=60,
///     max_chunk_size_in_bytes=10485760,
///     container_name=example_container.name,
///     encoding="Avro",
///     file_name_format="{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}")
/// example_route = azure.iot.Route("example",
///     resource_group_name=example.name,
///     iothub_name=example_io_t_hub.name,
///     name="example",
///     source="DeviceMessages",
///     condition="true",
///     endpoint_names=example_endpoint_storage_container.name,
///     enabled=True)
/// example_enrichment = azure.iot.Enrichment("example",
///     resource_group_name=example.name,
///     iothub_name=example_io_t_hub.name,
///     key="example",
///     value="my value",
///     endpoint_names=[example_endpoint_storage_container.name])
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageaccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "example",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var exampleIoTHub = new Azure.Iot.IoTHub("example", new()
///     {
///         Name = "exampleIothub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = new Azure.Iot.Inputs.IoTHubSkuArgs
///         {
///             Name = "S1",
///             Capacity = 1,
///         },
///         Tags =
///         {
///             { "purpose", "testing" },
///         },
///     });
///
///     var exampleEndpointStorageContainer = new Azure.Iot.EndpointStorageContainer("example", new()
///     {
///         ResourceGroupName = example.Name,
///         IothubId = exampleIoTHub.Id,
///         Name = "example",
///         ConnectionString = exampleAccount.PrimaryBlobConnectionString,
///         BatchFrequencyInSeconds = 60,
///         MaxChunkSizeInBytes = 10485760,
///         ContainerName = exampleContainer.Name,
///         Encoding = "Avro",
///         FileNameFormat = "{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}",
///     });
///
///     var exampleRoute = new Azure.Iot.Route("example", new()
///     {
///         ResourceGroupName = example.Name,
///         IothubName = exampleIoTHub.Name,
///         Name = "example",
///         Source = "DeviceMessages",
///         Condition = "true",
///         EndpointNames = exampleEndpointStorageContainer.Name,
///         Enabled = true,
///     });
///
///     var exampleEnrichment = new Azure.Iot.Enrichment("example", new()
///     {
///         ResourceGroupName = example.Name,
///         IothubName = exampleIoTHub.Name,
///         Key = "example",
///         Value = "my value",
///         EndpointNames = new[]
///         {
///             exampleEndpointStorageContainer.Name,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iot"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageaccount"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("example"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleIoTHub, err := iot.NewIoTHub(ctx, "example", &iot.IoTHubArgs{
/// 			Name:              pulumi.String("exampleIothub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku: &iot.IoTHubSkuArgs{
/// 				Name:     pulumi.String("S1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"purpose": pulumi.String("testing"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEndpointStorageContainer, err := iot.NewEndpointStorageContainer(ctx, "example", &iot.EndpointStorageContainerArgs{
/// 			ResourceGroupName:       example.Name,
/// 			IothubId:                exampleIoTHub.ID(),
/// 			Name:                    pulumi.String("example"),
/// 			ConnectionString:        exampleAccount.PrimaryBlobConnectionString,
/// 			BatchFrequencyInSeconds: pulumi.Int(60),
/// 			MaxChunkSizeInBytes:     pulumi.Int(10485760),
/// 			ContainerName:           exampleContainer.Name,
/// 			Encoding:                pulumi.String("Avro"),
/// 			FileNameFormat:          pulumi.String("{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewRoute(ctx, "example", &iot.RouteArgs{
/// 			ResourceGroupName: example.Name,
/// 			IothubName:        exampleIoTHub.Name,
/// 			Name:              pulumi.String("example"),
/// 			Source:            pulumi.String("DeviceMessages"),
/// 			Condition:         pulumi.String("true"),
/// 			EndpointNames:     exampleEndpointStorageContainer.Name,
/// 			Enabled:           pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewEnrichment(ctx, "example", &iot.EnrichmentArgs{
/// 			ResourceGroupName: example.Name,
/// 			IothubName:        exampleIoTHub.Name,
/// 			Key:               pulumi.String("example"),
/// 			Value:             pulumi.String("my value"),
/// 			EndpointNames: pulumi.StringArray{
/// 				exampleEndpointStorageContainer.Name,
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.iot.IoTHub;
/// import com.pulumi.azure.iot.IoTHubArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubSkuArgs;
/// import com.pulumi.azure.iot.EndpointStorageContainer;
/// import com.pulumi.azure.iot.EndpointStorageContainerArgs;
/// import com.pulumi.azure.iot.Route;
/// import com.pulumi.azure.iot.RouteArgs;
/// import com.pulumi.azure.iot.Enrichment;
/// import com.pulumi.azure.iot.EnrichmentArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageaccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("example")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var exampleIoTHub = new IoTHub("exampleIoTHub", IoTHubArgs.builder()
///             .name("exampleIothub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku(IoTHubSkuArgs.builder()
///                 .name("S1")
///                 .capacity(1)
///                 .build())
///             .tags(Map.of("purpose", "testing"))
///             .build());
///
///         var exampleEndpointStorageContainer = new EndpointStorageContainer("exampleEndpointStorageContainer", EndpointStorageContainerArgs.builder()
///             .resourceGroupName(example.name())
///             .iothubId(exampleIoTHub.id())
///             .name("example")
///             .connectionString(exampleAccount.primaryBlobConnectionString())
///             .batchFrequencyInSeconds(60)
///             .maxChunkSizeInBytes(10485760)
///             .containerName(exampleContainer.name())
///             .encoding("Avro")
///             .fileNameFormat("{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}")
///             .build());
///
///         var exampleRoute = new Route("exampleRoute", RouteArgs.builder()
///             .resourceGroupName(example.name())
///             .iothubName(exampleIoTHub.name())
///             .name("example")
///             .source("DeviceMessages")
///             .condition("true")
///             .endpointNames(exampleEndpointStorageContainer.name())
///             .enabled(true)
///             .build());
///
///         var exampleEnrichment = new Enrichment("exampleEnrichment", EnrichmentArgs.builder()
///             .resourceGroupName(example.name())
///             .iothubName(exampleIoTHub.name())
///             .key("example")
///             .value("my value")
///             .endpointNames(exampleEndpointStorageContainer.name())
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageaccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: example
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleIoTHub:
///     type: azure:iot:IoTHub
///     name: example
///     properties:
///       name: exampleIothub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku:
///         name: S1
///         capacity: '1'
///       tags:
///         purpose: testing
///   exampleEndpointStorageContainer:
///     type: azure:iot:EndpointStorageContainer
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       iothubId: ${exampleIoTHub.id}
///       name: example
///       connectionString: ${exampleAccount.primaryBlobConnectionString}
///       batchFrequencyInSeconds: 60
///       maxChunkSizeInBytes: 1.048576e+07
///       containerName: ${exampleContainer.name}
///       encoding: Avro
///       fileNameFormat: '{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}'
///   exampleRoute:
///     type: azure:iot:Route
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       iothubName: ${exampleIoTHub.name}
///       name: example
///       source: DeviceMessages
///       condition: 'true'
///       endpointNames: ${exampleEndpointStorageContainer.name}
///       enabled: true
///   exampleEnrichment:
///     type: azure:iot:Enrichment
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       iothubName: ${exampleIoTHub.name}
///       key: example
///       value: my value
///       endpointNames:
///         - ${exampleEndpointStorageContainer.name}
/// ```
///
///
/// ## Import
///
/// IoTHub Enrichment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/enrichment:Enrichment enrichment1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Devices/iotHubs/hub1/enrichments/enrichment1
/// ```
class Enrichment extends pulumi.CustomResource {
  /// The list of endpoints which will be enriched.
  late final pulumi.Output<List<String>> endpointNames;
  /// The IoTHub name of the enrichment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iothubName;
  /// The key of the enrichment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> key;
  /// The name of the resource group under which the IoTHub resource is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The value of the enrichment. Value can be any static string, the name of the IoT hub sending the message (use `$iothubname`) or information from the device twin (ex: `$twin.tags.latitude`)
  late final pulumi.Output<String> value;

  /// Creates a new [Enrichment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Enrichment]. {@macro pulumi_iot_enrichment_enrichment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Enrichment(
    String name, {
    EnrichmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/enrichment:Enrichment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endpointNames = registerOutput<List<String>>('endpointNames');
    iothubName = registerOutput<String>('iothubName');
    key = registerOutput<String>('key');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [Enrichment] resource's state with the given [name] and [id].
  static Enrichment get(
    String name,
    pulumi.Input<String> id, {
    EnrichmentState? state,
  }) {
    return Enrichment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Enrichment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/enrichment:Enrichment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endpointNames = registerOutput<List<String>>('endpointNames');
    iothubName = registerOutput<String>('iothubName');
    key = registerOutput<String>('key');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    value = registerOutput<String>('value');
  }
}
