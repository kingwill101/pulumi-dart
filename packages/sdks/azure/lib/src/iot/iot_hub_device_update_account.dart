import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_device_update_account_args.dart';
import 'iot_hub_device_update_account_identity.dart';
import 'iot_hub_device_update_account_state.dart';

/// Manages an IoT Hub Device Update Account.
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
///     identity: {
///         type: "SystemAssigned",
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
///     location=example.location,
///     identity={
///         "type": "SystemAssigned",
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
///         Identity = new Azure.Iot.Inputs.IotHubDeviceUpdateAccountIdentityArgs
///         {
///             Type = "SystemAssigned",
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
/// 		_, err = iot.NewIotHubDeviceUpdateAccount(ctx, "example", &iot.IotHubDeviceUpdateAccountArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Identity: &iot.IotHubDeviceUpdateAccountIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "East US"
/// }
/// resource "azure_iot_iothubdeviceupdateaccount" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   identity = {
///     type = "SystemAssigned"
///   }
///   tags = {
///     "key" = "value"
///   }
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
/// import com.pulumi.azure.iot.inputs.IotHubDeviceUpdateAccountIdentityArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("East US")
///             .build());
///
///         var exampleIotHubDeviceUpdateAccount = new IotHubDeviceUpdateAccount("exampleIotHubDeviceUpdateAccount", IotHubDeviceUpdateAccountArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .identity(IotHubDeviceUpdateAccountIdentityArgs.builder()
///                 .type("SystemAssigned")
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
///       identity:
///         type: SystemAssigned
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
/// IoT Hub Device Update Account can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/iotHubDeviceUpdateAccount:IotHubDeviceUpdateAccount example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.DeviceUpdate/accounts/account1
/// ```
class IotHubDeviceUpdateAccount extends pulumi.CustomResource {
  /// The API host name of the IoT Hub Device Update Account.
  late final pulumi.Output<String> hostName;
  /// An `identity` block as defined below.
  late final pulumi.Output<IotHubDeviceUpdateAccountIdentity?> identity;
  /// Specifies the Azure Region where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name which should be used for this IoT Hub Device Update Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies whether the public network access is enabled for the IoT Hub Device Update Account. Possible values are `true` and `false`. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// Specifies the name of the Resource Group where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Sku of the IoT Hub Device Update Account. Possible values are `Free` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> sku;
  /// A mapping of tags which should be assigned to the IoT Hub Device Update Account.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [IotHubDeviceUpdateAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IotHubDeviceUpdateAccount]. {@macro pulumi_iot_iot_hub_device_update_account_iot_hub_device_update_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IotHubDeviceUpdateAccount(
    String name, {
    IotHubDeviceUpdateAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/iotHubDeviceUpdateAccount:IotHubDeviceUpdateAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    hostName = registerOutput<String>('hostName');
    identity = registerOutput<IotHubDeviceUpdateAccountIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IotHubDeviceUpdateAccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String?>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [IotHubDeviceUpdateAccount] resource's state with the given [name] and [id].
  static IotHubDeviceUpdateAccount get(
    String name,
    pulumi.Input<String> id, {
    IotHubDeviceUpdateAccountState? state,
  }) {
    return IotHubDeviceUpdateAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IotHubDeviceUpdateAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/iotHubDeviceUpdateAccount:IotHubDeviceUpdateAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    hostName = registerOutput<String>('hostName');
    identity = registerOutput<IotHubDeviceUpdateAccountIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IotHubDeviceUpdateAccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String?>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
