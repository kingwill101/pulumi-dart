import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_args.dart';
import 'route_state.dart';

/// Manages an IotHub Route
///
/// &gt; **Note:** Routes can be defined either directly on the `azure.iot.IoTHub` resource, or using the `azure.iot.Route` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.
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
/// ```
///
///
/// ## Import
///
/// IoTHub Route can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/route:Route route1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Devices/iotHubs/hub1/routes/route1
/// ```
class Route extends pulumi.CustomResource {
  /// The condition that is evaluated to apply the routing rule. For grammar, see: &lt;https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language&gt;. Defaults to `true`.
  late final pulumi.Output<String?> condition;
  /// Specifies whether a route is enabled.
  late final pulumi.Output<bool> enabled;
  /// The list of endpoints to which messages that satisfy the condition are routed. Currently only one endpoint is allowed.
  late final pulumi.Output<String> endpointNames;
  /// The name of the IoTHub to which this Route belongs. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iothubName;
  /// The name of the route. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group under which the IotHub Route resource has to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`.
  late final pulumi.Output<String> source;

  /// Creates a new [Route].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Route]. {@macro pulumi_iot_route_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Route(
    String name, {
    RouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/route:Route',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<String?>('condition');
    enabled = registerOutput<bool>('enabled');
    endpointNames = registerOutput<String>('endpointNames');
    iothubName = registerOutput<String>('iothubName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    source = registerOutput<String>('source');
  }

  /// Gets an existing [Route] resource's state with the given [name] and [id].
  static Route get(
    String name,
    pulumi.Input<String> id, {
    RouteState? state,
  }) {
    return Route._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Route._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/route:Route',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<String?>('condition');
    enabled = registerOutput<bool>('enabled');
    endpointNames = registerOutput<String>('endpointNames');
    iothubName = registerOutput<String>('iothubName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    source = registerOutput<String>('source');
  }
}
