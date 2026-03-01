import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_storage_container_args.dart';
import 'endpoint_storage_container_state.dart';

/// Manages an IotHub Storage Container Endpoint
///
/// > **Note:** Endpoints can be defined either directly on the `azure.iot.IoTHub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azure.iot.IoTHub` resource is not supported.
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
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "acctestcont",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleIoTHub = new azure.iot.IoTHub("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: {
///         name: "S1",
///         capacity: 1,
///     },
/// });
/// const exampleEndpointStorageContainer = new azure.iot.EndpointStorageContainer("example", {
///     resourceGroupName: example.name,
///     iothubId: exampleIoTHub.id,
///     name: "acctest",
///     containerName: "acctestcont",
///     connectionString: exampleAccount.primaryBlobConnectionString,
///     fileNameFormat: "{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}",
///     batchFrequencyInSeconds: 60,
///     maxChunkSizeInBytes: 10485760,
///     encoding: "JSON",
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
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="acctestcont",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_io_t_hub = azure.iot.IoTHub("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     sku={
///         "name": "S1",
///         "capacity": 1,
///     })
/// example_endpoint_storage_container = azure.iot.EndpointStorageContainer("example",
///     resource_group_name=example.name,
///     iothub_id=example_io_t_hub.id,
///     name="acctest",
///     container_name="acctestcont",
///     connection_string=example_account.primary_blob_connection_string,
///     file_name_format="{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}",
///     batch_frequency_in_seconds=60,
///     max_chunk_size_in_bytes=10485760,
///     encoding="JSON")
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
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "acctestcont",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var exampleIoTHub = new Azure.Iot.IoTHub("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = new Azure.Iot.Inputs.IoTHubSkuArgs
///         {
///             Name = "S1",
///             Capacity = 1,
///         },
///     });
///
///     var exampleEndpointStorageContainer = new Azure.Iot.EndpointStorageContainer("example", new()
///     {
///         ResourceGroupName = example.Name,
///         IothubId = exampleIoTHub.Id,
///         Name = "acctest",
///         ContainerName = "acctestcont",
///         ConnectionString = exampleAccount.PrimaryBlobConnectionString,
///         FileNameFormat = "{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}",
///         BatchFrequencyInSeconds = 60,
///         MaxChunkSizeInBytes = 10485760,
///         Encoding = "JSON",
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
/// 			Name:                   pulumi.String("example"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("acctestcont"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleIoTHub, err := iot.NewIoTHub(ctx, "example", &iot.IoTHubArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku: &iot.IoTHubSkuArgs{
/// 				Name:     pulumi.String("S1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewEndpointStorageContainer(ctx, "example", &iot.EndpointStorageContainerArgs{
/// 			ResourceGroupName:       example.Name,
/// 			IothubId:                exampleIoTHub.ID(),
/// 			Name:                    pulumi.String("acctest"),
/// 			ContainerName:           pulumi.String("acctestcont"),
/// 			ConnectionString:        exampleAccount.PrimaryBlobConnectionString,
/// 			FileNameFormat:          pulumi.String("{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}"),
/// 			BatchFrequencyInSeconds: pulumi.Int(60),
/// 			MaxChunkSizeInBytes:     pulumi.Int(10485760),
/// 			Encoding:                pulumi.String("JSON"),
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
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("acctestcont")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var exampleIoTHub = new IoTHub("exampleIoTHub", IoTHubArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku(IoTHubSkuArgs.builder()
///                 .name("S1")
///                 .capacity(1)
///                 .build())
///             .build());
///
///         var exampleEndpointStorageContainer = new EndpointStorageContainer("exampleEndpointStorageContainer", EndpointStorageContainerArgs.builder()
///             .resourceGroupName(example.name())
///             .iothubId(exampleIoTHub.id())
///             .name("acctest")
///             .containerName("acctestcont")
///             .connectionString(exampleAccount.primaryBlobConnectionString())
///             .fileNameFormat("{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}")
///             .batchFrequencyInSeconds(60)
///             .maxChunkSizeInBytes(10485760)
///             .encoding("JSON")
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
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: acctestcont
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleIoTHub:
///     type: azure:iot:IoTHub
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku:
///         name: S1
///         capacity: '1'
///   exampleEndpointStorageContainer:
///     type: azure:iot:EndpointStorageContainer
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       iothubId: ${exampleIoTHub.id}
///       name: acctest
///       containerName: acctestcont
///       connectionString: ${exampleAccount.primaryBlobConnectionString}
///       fileNameFormat: '{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}'
///       batchFrequencyInSeconds: 60
///       maxChunkSizeInBytes: 1.048576e+07
///       encoding: JSON
/// ```
///
///
/// ## Import
///
/// IoTHub Storage Container Endpoint can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/endpointStorageContainer:EndpointStorageContainer storage_container1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Devices/iotHubs/hub1/endpoints/storage_container_endpoint1
/// ```
class EndpointStorageContainer extends pulumi.CustomResource {
  /// Type used to authenticate against the storage endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  late final pulumi.Output<String?> authenticationType;
  /// Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds.
  late final pulumi.Output<int?> batchFrequencyInSeconds;
  /// The connection string for the endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `keyBased`.
  late final pulumi.Output<String?> connectionString;
  /// The name of storage container in the storage account.
  late final pulumi.Output<String> containerName;
  /// Encoding that is used to serialize messages to blobs. Supported values are `Avro`, `AvroDeflate` and `JSON`. Default value is `Avro`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> encoding;
  /// URI of the Storage Container endpoint. This corresponds to the `primary_blob_endpoint` of the parent storage account. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  late final pulumi.Output<String?> endpointUri;
  /// File name format for the blob. All parameters are mandatory but can be reordered. Defaults to `{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}`.
  late final pulumi.Output<String?> fileNameFormat;
  /// ID of the User Managed Identity used to authenticate against the storage endpoint.
  ///
  /// > **Note:** `identity_id` can only be specified when `authentication_type` is `identityBased`. It must be one of the `identity_ids` of the Iot Hub. If not specified when `authentication_type` is `identityBased`, System Assigned Managed Identity of the Iot Hub will be used.
  late final pulumi.Output<String?> identityId;
  /// The IoTHub ID for the endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iothubId;
  /// Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB).
  late final pulumi.Output<int?> maxChunkSizeInBytes;
  /// The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group under which the Storage Container has been created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The subscription ID for the endpoint.
  ///
  /// > **Note:** When `subscription_id` isn't specified it will be set to the subscription ID of the IoT Hub resource.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [EndpointStorageContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointStorageContainer]. {@macro pulumi_iot_endpoint_storage_container_endpoint_storage_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointStorageContainer(
    String name, {
    EndpointStorageContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/endpointStorageContainer:EndpointStorageContainer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationType = registerOutput<String?>('authenticationType');
    this.batchFrequencyInSeconds = registerOutput<int?>('batchFrequencyInSeconds');
    this.connectionString = registerOutput<String?>('connectionString');
    this.containerName = registerOutput<String>('containerName');
    this.encoding = registerOutput<String?>('encoding');
    this.endpointUri = registerOutput<String?>('endpointUri');
    this.fileNameFormat = registerOutput<String?>('fileNameFormat');
    this.identityId = registerOutput<String?>('identityId');
    this.iothubId = registerOutput<String>('iothubId');
    this.maxChunkSizeInBytes = registerOutput<int?>('maxChunkSizeInBytes');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Gets an existing [EndpointStorageContainer] resource's state with the given [name] and [id].
  static EndpointStorageContainer get(
    String name,
    pulumi.Input<String> id, {
    EndpointStorageContainerState? state,
  }) {
    return EndpointStorageContainer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointStorageContainer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/endpointStorageContainer:EndpointStorageContainer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationType = registerOutput<String?>('authenticationType');
    this.batchFrequencyInSeconds = registerOutput<int?>('batchFrequencyInSeconds');
    this.connectionString = registerOutput<String?>('connectionString');
    this.containerName = registerOutput<String>('containerName');
    this.encoding = registerOutput<String?>('encoding');
    this.endpointUri = registerOutput<String?>('endpointUri');
    this.fileNameFormat = registerOutput<String?>('fileNameFormat');
    this.identityId = registerOutput<String?>('identityId');
    this.iothubId = registerOutput<String>('iothubId');
    this.maxChunkSizeInBytes = registerOutput<int?>('maxChunkSizeInBytes');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.subscriptionId = registerOutput<String>('subscriptionId');
  }
}
