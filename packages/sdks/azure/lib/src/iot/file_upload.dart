import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_upload_args.dart';
import 'file_upload_state.dart';

/// Manages the File Upload of an IoT Hub.
///
/// &gt; **Note:** File upload can be defined either directly on the `azure.iot.IoTHub` resource, or using the `azure.iot.FileUpload` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.
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
///     name: "examplestorage",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "examplecontainer",
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
/// const exampleFileUpload = new azure.iot.FileUpload("example", {
///     iothubId: exampleIoTHub.id,
///     connectionString: exampleAccount.primaryBlobConnectionString,
///     containerName: exampleContainer.name,
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
///     name="examplestorage",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="examplecontainer",
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
/// example_file_upload = azure.iot.FileUpload("example",
///     iothub_id=example_io_t_hub.id,
///     connection_string=example_account.primary_blob_connection_string,
///     container_name=example_container.name)
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
///         Name = "examplestorage",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "examplecontainer",
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
///     var exampleFileUpload = new Azure.Iot.FileUpload("example", new()
///     {
///         IothubId = exampleIoTHub.Id,
///         ConnectionString = exampleAccount.PrimaryBlobConnectionString,
///         ContainerName = exampleContainer.Name,
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
/// 			Name:                   pulumi.String("examplestorage"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("examplecontainer"),
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
/// 		_, err = iot.NewFileUpload(ctx, "example", &iot.FileUploadArgs{
/// 			IothubId:         exampleIoTHub.ID(),
/// 			ConnectionString: exampleAccount.PrimaryBlobConnectionString,
/// 			ContainerName:    exampleContainer.Name,
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
/// import com.pulumi.azure.iot.FileUpload;
/// import com.pulumi.azure.iot.FileUploadArgs;
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
///             .name("examplestorage")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("examplecontainer")
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
///         var exampleFileUpload = new FileUpload("exampleFileUpload", FileUploadArgs.builder()
///             .iothubId(exampleIoTHub.id())
///             .connectionString(exampleAccount.primaryBlobConnectionString())
///             .containerName(exampleContainer.name())
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
///       name: examplestorage
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: examplecontainer
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
///   exampleFileUpload:
///     type: azure:iot:FileUpload
///     name: example
///     properties:
///       iothubId: ${exampleIoTHub.id}
///       connectionString: ${exampleAccount.primaryBlobConnectionString}
///       containerName: ${exampleContainer.name}
/// ```
///
///
/// ## Import
///
/// IoT Hub File Uploads can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/fileUpload:FileUpload example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Devices/iotHubs/hub1
/// ```
class FileUpload extends pulumi.CustomResource {
  /// The type used to authenticate against the storage account. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  late final pulumi.Output<String?> authenticationType;

  /// The connection string for the Azure Storage account to which files are uploaded.
  late final pulumi.Output<String> connectionString;

  /// The name of the root container where the files should be uploaded to. The container need not exist but should be creatable using the `connection_string` specified.
  late final pulumi.Output<String> containerName;

  /// The period of time for which a file upload notification message is available to consume before it expires, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 48 hours. Defaults to `PT1H`.
  late final pulumi.Output<String?> defaultTtl;

  /// The ID of the User Managed Identity used to authenticate against the storage account.
  ///
  /// &gt; **Note:** `identity_id` can only be specified when `authentication_type` is `identityBased`. It must be one of the `identity_ids` of the IoT Hub. If `identity_id` is omitted when `authentication_type` is `identityBased`, then the System-Assigned Managed Identity of the IoT Hub will be used.
  late final pulumi.Output<String?> identityId;

  /// The ID of the IoT Hub. Changing this forces a new IoT Hub to be created.
  late final pulumi.Output<String> iothubId;

  /// The lock duration for the file upload notifications queue, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 5 and 300 seconds. Defaults to `PT1M`.
  late final pulumi.Output<String?> lockDuration;

  /// The number of times the IoT Hub attempts to deliver a file upload notification message. Defaults to `10`.
  late final pulumi.Output<int?> maxDeliveryCount;

  /// Used to specify whether file notifications are sent to IoT Hub on upload. Defaults to `false`.
  late final pulumi.Output<bool?> notificationsEnabled;

  /// The period of time for which the SAS URI generated by IoT Hub for file upload is valid, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 24 hours. Defaults to `PT1H`.
  late final pulumi.Output<String?> sasTtl;

  /// Creates a new [FileUpload].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FileUpload]. {@macro pulumi_iot_file_upload_file_upload_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FileUpload(
    String name, {
    FileUploadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:iot/fileUpload:FileUpload',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authenticationType = registerOutput<String?>('authenticationType');
    connectionString = registerOutput<String>('connectionString');
    containerName = registerOutput<String>('containerName');
    defaultTtl = registerOutput<String?>('defaultTtl');
    identityId = registerOutput<String?>('identityId');
    iothubId = registerOutput<String>('iothubId');
    lockDuration = registerOutput<String?>('lockDuration');
    maxDeliveryCount = registerOutput<int?>('maxDeliveryCount');
    notificationsEnabled = registerOutput<bool?>('notificationsEnabled');
    sasTtl = registerOutput<String?>('sasTtl');
  }

  /// Gets an existing [FileUpload] resource's state with the given [name] and [id].
  static FileUpload get(
    String name,
    pulumi.Input<String> id, {
    FileUploadState? state,
  }) {
    return FileUpload._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FileUpload._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:iot/fileUpload:FileUpload',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authenticationType = registerOutput<String?>('authenticationType');
    connectionString = registerOutput<String>('connectionString');
    containerName = registerOutput<String>('containerName');
    defaultTtl = registerOutput<String?>('defaultTtl');
    identityId = registerOutput<String?>('identityId');
    iothubId = registerOutput<String>('iothubId');
    lockDuration = registerOutput<String?>('lockDuration');
    maxDeliveryCount = registerOutput<int?>('maxDeliveryCount');
    notificationsEnabled = registerOutput<bool?>('notificationsEnabled');
    sasTtl = registerOutput<String?>('sasTtl');
  }
}
