import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_wan_args.dart';

/// VirtualWAN Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VirtualWANCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualWan = new AzureNative.Network.VirtualWan("virtualWan", new()
///     {
///         DisableVpnEncryption = false,
///         Location = "West US",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         Type = "Basic",
///         VirtualWANName = "wan1",
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
/// 		_, err := network.NewVirtualWan(ctx, "virtualWan", &network.VirtualWanArgs{
/// 			DisableVpnEncryption: pulumi.Bool(false),
/// 			Location:             pulumi.String("West US"),
/// 			ResourceGroupName:    pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			Type:           pulumi.String("Basic"),
/// 			VirtualWANName: pulumi.String("wan1"),
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
/// import com.pulumi.azurenative.network.VirtualWan;
/// import com.pulumi.azurenative.network.VirtualWanArgs;
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
///         var virtualWan = new VirtualWan("virtualWan", VirtualWanArgs.builder()
///             .disableVpnEncryption(false)
///             .location("West US")
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "value1"))
///             .type("Basic")
///             .virtualWANName("wan1")
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
/// const virtualWan = new azure_native.network.VirtualWan("virtualWan", {
///     disableVpnEncryption: false,
///     location: "West US",
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "value1",
///     },
///     type: "Basic",
///     virtualWANName: "wan1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_wan = azure_native.network.VirtualWan("virtualWan",
///     disable_vpn_encryption=False,
///     location="West US",
///     resource_group_name="rg1",
///     tags={
///         "key1": "value1",
///     },
///     type="Basic",
///     virtual_wan_name="wan1")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualWan:
///     type: azure-native:network:VirtualWan
///     properties:
///       disableVpnEncryption: false
///       location: West US
///       resourceGroupName: rg1
///       tags:
///         key1: value1
///       type: Basic
///       virtualWANName: wan1
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
/// $ pulumi import azure-native:network:VirtualWan wan1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualWans/{VirtualWANName}
/// ```
class VirtualWan extends pulumi.CustomResource {
  /// True if branch to branch traffic is allowed.
  late final pulumi.Output<bool?> allowBranchToBranchTraffic;

  /// True if Vnet to Vnet traffic is allowed.
  late final pulumi.Output<bool?> allowVnetToVnetTraffic;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Vpn encryption to be disabled or not.
  late final pulumi.Output<bool?> disableVpnEncryption;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Resource location.
  late final pulumi.Output<String> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// The office local breakout category.
  late final pulumi.Output<String> office365LocalBreakoutCategory;

  /// The provisioning state of the virtual WAN resource.
  late final pulumi.Output<String> provisioningState;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// List of VirtualHubs in the VirtualWAN.
  late final pulumi.Output<List<Map<String, dynamic>>> virtualHubs;

  /// List of VpnSites in the VirtualWAN.
  late final pulumi.Output<List<Map<String, dynamic>>> vpnSites;

  /// Creates a new [VirtualWan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualWan]. {@macro pulumi_network_virtual_wan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualWan(
    String name, {
    VirtualWanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:VirtualWan',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowBranchToBranchTraffic = registerOutput<bool?>(
      'allowBranchToBranchTraffic',
    );
    allowVnetToVnetTraffic = registerOutput<bool?>('allowVnetToVnetTraffic');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    disableVpnEncryption = registerOutput<bool?>('disableVpnEncryption');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    office365LocalBreakoutCategory = registerOutput<String>(
      'office365LocalBreakoutCategory',
    );
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualHubs = registerOutput<List<Map<String, dynamic>>>('virtualHubs');
    vpnSites = registerOutput<List<Map<String, dynamic>>>('vpnSites');
  }
}
