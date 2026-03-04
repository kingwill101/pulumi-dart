import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_device_update_instance_args.dart';
import 'iot_hub_device_update_instance_diagnostic_storage_account.dart';
import 'iot_hub_device_update_instance_state.dart';

/// Manages an IoT Hub Device Update Instance.
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
///     location: "East US",
/// });
/// const exampleIotHubDeviceUpdateAccount = new azure.iot.IotHubDeviceUpdateAccount("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleIotHubDeviceUpdateInstance = new azure.iot.IotHubDeviceUpdateInstance("example", {
///     name: "example",
///     deviceUpdateAccountId: exampleIotHubDeviceUpdateAccount.id,
///     iothubId: exampleIoTHub.id,
///     diagnosticEnabled: true,
///     diagnosticStorageAccount: {
///         connectionString: exampleAccount.primaryConnectionString,
///         id: exampleAccount.id,
///     },
///     tags: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="East US")
/// example_iot_hub_device_update_account = azure.iot.IotHubDeviceUpdateAccount("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
/// example_io_t_hub = azure.iot.IoTHub("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     sku={
///         "name": "S1",
///         "capacity": 1,
///     })
/// example_account = azure.storage.Account("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_iot_hub_device_update_instance = azure.iot.IotHubDeviceUpdateInstance("example",
///     name="example",
///     device_update_account_id=example_iot_hub_device_update_account.id,
///     iothub_id=example_io_t_hub.id,
///     diagnostic_enabled=True,
///     diagnostic_storage_account={
///         "connection_string": example_account.primary_connection_string,
///         "id": example_account.id,
///     },
///     tags={
///         "key": "value",
///     })
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
///         Location = "East US",
///     });
///
///     var exampleIotHubDeviceUpdateAccount = new Azure.Iot.IotHubDeviceUpdateAccount("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleIotHubDeviceUpdateInstance = new Azure.Iot.IotHubDeviceUpdateInstance("example", new()
///     {
///         Name = "example",
///         DeviceUpdateAccountId = exampleIotHubDeviceUpdateAccount.Id,
///         IothubId = exampleIoTHub.Id,
///         DiagnosticEnabled = true,
///         DiagnosticStorageAccount = new Azure.Iot.Inputs.IotHubDeviceUpdateInstanceDiagnosticStorageAccountArgs
///         {
///             ConnectionString = exampleAccount.PrimaryConnectionString,
///             Id = exampleAccount.Id,
///         },
///         Tags =
///         {
///             { "key", "value" },
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
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleIotHubDeviceUpdateAccount, err := iot.NewIotHubDeviceUpdateAccount(ctx, "example", &iot.IotHubDeviceUpdateAccountArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
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
/// 		_, err = iot.NewIotHubDeviceUpdateInstance(ctx, "example", &iot.IotHubDeviceUpdateInstanceArgs{
/// 			Name:                  pulumi.String("example"),
/// 			DeviceUpdateAccountId: exampleIotHubDeviceUpdateAccount.ID(),
/// 			IothubId:              exampleIoTHub.ID(),
/// 			DiagnosticEnabled:     pulumi.Bool(true),
/// 			DiagnosticStorageAccount: &iot.IotHubDeviceUpdateInstanceDiagnosticStorageAccountArgs{
/// 				ConnectionString: exampleAccount.PrimaryConnectionString,
/// 				Id:               exampleAccount.ID(),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.azure.iot.IotHubDeviceUpdateAccount;
/// import com.pulumi.azure.iot.IotHubDeviceUpdateAccountArgs;
/// import com.pulumi.azure.iot.IoTHub;
/// import com.pulumi.azure.iot.IoTHubArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubSkuArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.iot.IotHubDeviceUpdateInstance;
/// import com.pulumi.azure.iot.IotHubDeviceUpdateInstanceArgs;
/// import com.pulumi.azure.iot.inputs.IotHubDeviceUpdateInstanceDiagnosticStorageAccountArgs;
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
///             .location("East US")
///             .build());
///
///         var exampleIotHubDeviceUpdateAccount = new IotHubDeviceUpdateAccount("exampleIotHubDeviceUpdateAccount", IotHubDeviceUpdateAccountArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleIotHubDeviceUpdateInstance = new IotHubDeviceUpdateInstance("exampleIotHubDeviceUpdateInstance", IotHubDeviceUpdateInstanceArgs.builder()
///             .name("example")
///             .deviceUpdateAccountId(exampleIotHubDeviceUpdateAccount.id())
///             .iothubId(exampleIoTHub.id())
///             .diagnosticEnabled(true)
///             .diagnosticStorageAccount(IotHubDeviceUpdateInstanceDiagnosticStorageAccountArgs.builder()
///                 .connectionString(exampleAccount.primaryConnectionString())
///                 .id(exampleAccount.id())
///                 .build())
///             .tags(Map.of("key", "value"))
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
///       location: East US
///   exampleIotHubDeviceUpdateAccount:
///     type: azure:iot:IotHubDeviceUpdateAccount
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleIotHubDeviceUpdateInstance:
///     type: azure:iot:IotHubDeviceUpdateInstance
///     name: example
///     properties:
///       name: example
///       deviceUpdateAccountId: ${exampleIotHubDeviceUpdateAccount.id}
///       iothubId: ${exampleIoTHub.id}
///       diagnosticEnabled: true
///       diagnosticStorageAccount:
///         connectionString: ${exampleAccount.primaryConnectionString}
///         id: ${exampleAccount.id}
///       tags:
///         key: value
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DeviceUpdate` - 2022-10-01
///
/// ## Import
///
/// IoT Hub Device Update Instance can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/iotHubDeviceUpdateInstance:IotHubDeviceUpdateInstance example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.DeviceUpdate/accounts/account1/instances/instance1
/// ```
class IotHubDeviceUpdateInstance extends pulumi.CustomResource {
  /// Specifies the ID of the IoT Hub Device Update Account where the IoT Hub Device Update Instance exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> deviceUpdateAccountId;

  /// Whether the diagnostic log collection is enabled. Possible values are `true` and `false`. Defaults to `false`.
  late final pulumi.Output<bool?> diagnosticEnabled;

  /// A `diagnostic_storage_account` block as defined below.
  late final pulumi.Output<IotHubDeviceUpdateInstanceDiagnosticStorageAccount?>
  diagnosticStorageAccount;

  /// Specifies the ID of the IoT Hub associated with the IoT Hub Device Update Instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iothubId;

  /// Specifies the name which should be used for this IoT Hub Device Update Instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// A mapping of tags which should be assigned to the IoT Hub Device Update Instance.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [IotHubDeviceUpdateInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IotHubDeviceUpdateInstance]. {@macro pulumi_iot_iot_hub_device_update_instance_iot_hub_device_update_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IotHubDeviceUpdateInstance(
    String name, {
    IotHubDeviceUpdateInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:iot/iotHubDeviceUpdateInstance:IotHubDeviceUpdateInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deviceUpdateAccountId = registerOutput<String>('deviceUpdateAccountId');
    diagnosticEnabled = registerOutput<bool?>('diagnosticEnabled');
    diagnosticStorageAccount =
        registerOutput<IotHubDeviceUpdateInstanceDiagnosticStorageAccount?>(
          'diagnosticStorageAccount',
        );
    iothubId = registerOutput<String>('iothubId');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [IotHubDeviceUpdateInstance] resource's state with the given [name] and [id].
  static IotHubDeviceUpdateInstance get(
    String name,
    pulumi.Input<String> id, {
    IotHubDeviceUpdateInstanceState? state,
  }) {
    return IotHubDeviceUpdateInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IotHubDeviceUpdateInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:iot/iotHubDeviceUpdateInstance:IotHubDeviceUpdateInstance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deviceUpdateAccountId = registerOutput<String>('deviceUpdateAccountId');
    diagnosticEnabled = registerOutput<bool?>('diagnosticEnabled');
    diagnosticStorageAccount =
        registerOutput<IotHubDeviceUpdateInstanceDiagnosticStorageAccount?>(
          'diagnosticStorageAccount',
        );
    iothubId = registerOutput<String>('iothubId');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
