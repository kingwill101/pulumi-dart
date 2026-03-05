import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipam_pool_args.dart';
import 'ipam_pool_properties_response.dart';
import 'system_data_response.dart';

/// Instance of Pool resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2024-01-01-preview.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IpamPools_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ipamPool = new AzureNative.Network.IpamPool("ipamPool", new()
///     {
///         Location = "eastus",
///         NetworkManagerName = "TestNetworkManager",
///         PoolName = "TestPool",
///         Properties = new AzureNative.Network.Inputs.IpamPoolPropertiesArgs
///         {
///             AddressPrefixes = new[]
///             {
///                 "10.0.0.0/24",
///             },
///             Description = "Test description.",
///             ParentPoolName = "",
///         },
///         ResourceGroupName = "rg1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewIpamPool(ctx, "ipamPool", &network.IpamPoolArgs{
/// 			Location:           pulumi.String("eastus"),
/// 			NetworkManagerName: pulumi.String("TestNetworkManager"),
/// 			PoolName:           pulumi.String("TestPool"),
/// 			Properties: &network.IpamPoolPropertiesArgs{
/// 				AddressPrefixes: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/24"),
/// 				},
/// 				Description:    pulumi.String("Test description."),
/// 				ParentPoolName: pulumi.String(""),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.IpamPool;
/// import com.pulumi.azurenative.network.IpamPoolArgs;
/// import com.pulumi.azurenative.network.inputs.IpamPoolPropertiesArgs;
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
///         var ipamPool = new IpamPool("ipamPool", IpamPoolArgs.builder()
///             .location("eastus")
///             .networkManagerName("TestNetworkManager")
///             .poolName("TestPool")
///             .properties(IpamPoolPropertiesArgs.builder()
///                 .addressPrefixes("10.0.0.0/24")
///                 .description("Test description.")
///                 .parentPoolName("")
///                 .build())
///             .resourceGroupName("rg1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const ipamPool = new azure_native.network.IpamPool("ipamPool", {
///     location: "eastus",
///     networkManagerName: "TestNetworkManager",
///     poolName: "TestPool",
///     properties: {
///         addressPrefixes: ["10.0.0.0/24"],
///         description: "Test description.",
///         parentPoolName: "",
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ipam_pool = azure_native.network.IpamPool("ipamPool",
///     location="eastus",
///     network_manager_name="TestNetworkManager",
///     pool_name="TestPool",
///     properties={
///         "address_prefixes": ["10.0.0.0/24"],
///         "description": "Test description.",
///         "parent_pool_name": "",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   ipamPool:
///     type: azure-native:network:IpamPool
///     properties:
///       location: eastus
///       networkManagerName: TestNetworkManager
///       poolName: TestPool
///       properties:
///         addressPrefixes:
///           - 10.0.0.0/24
///         description: Test description.
///         parentPoolName: ""
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:network:IpamPool TestPool /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/ipamPools/{poolName}
/// ```
class IpamPool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties of IpamPool resource properties which are specific to the Pool resource.
  late final pulumi.Output<IpamPoolPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IpamPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpamPool]. {@macro pulumi_network_ipam_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpamPool(
    String name, {
    IpamPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:IpamPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IpamPoolPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IpamPoolPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
