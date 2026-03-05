import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_cidr_args.dart';
import 'static_cidr_properties_response.dart';
import 'system_data_response.dart';

/// Instance of StaticCidr resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2024-01-01-preview.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StaticCidrs_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var staticCidr = new AzureNative.Network.StaticCidr("staticCidr", new()
///     {
///         NetworkManagerName = "TestNetworkManager",
///         PoolName = "TestPool",
///         ResourceGroupName = "rg1",
///         StaticCidrName = "TestStaticCidr",
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
/// 		_, err := network.NewStaticCidr(ctx, "staticCidr", &network.StaticCidrArgs{
/// 			NetworkManagerName: pulumi.String("TestNetworkManager"),
/// 			PoolName:           pulumi.String("TestPool"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			StaticCidrName:     pulumi.String("TestStaticCidr"),
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
/// import com.pulumi.azurenative.network.StaticCidr;
/// import com.pulumi.azurenative.network.StaticCidrArgs;
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
///         var staticCidr = new StaticCidr("staticCidr", StaticCidrArgs.builder()
///             .networkManagerName("TestNetworkManager")
///             .poolName("TestPool")
///             .resourceGroupName("rg1")
///             .staticCidrName("TestStaticCidr")
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
/// const staticCidr = new azure_native.network.StaticCidr("staticCidr", {
///     networkManagerName: "TestNetworkManager",
///     poolName: "TestPool",
///     resourceGroupName: "rg1",
///     staticCidrName: "TestStaticCidr",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// static_cidr = azure_native.network.StaticCidr("staticCidr",
///     network_manager_name="TestNetworkManager",
///     pool_name="TestPool",
///     resource_group_name="rg1",
///     static_cidr_name="TestStaticCidr")
///
/// ```
///
/// ```yaml
/// resources:
///   staticCidr:
///     type: azure-native:network:StaticCidr
///     properties:
///       networkManagerName: TestNetworkManager
///       poolName: TestPool
///       resourceGroupName: rg1
///       staticCidrName: TestStaticCidr
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
/// $ pulumi import azure-native:network:StaticCidr OnPremResources /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/ipamPools/{poolName}/staticCidrs/{staticCidrName}
/// ```
class StaticCidr extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties of static CIDR resource.
  late final pulumi.Output<StaticCidrPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [StaticCidr].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticCidr]. {@macro pulumi_network_static_cidr_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticCidr(
    String name, {
    StaticCidrArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:StaticCidr',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StaticCidrPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StaticCidrPropertiesResponse.fromMap(
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
    type = registerOutput<String>('type');
  }
}
