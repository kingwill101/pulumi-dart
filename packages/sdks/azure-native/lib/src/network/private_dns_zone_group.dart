import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_dns_zone_config_response.dart';
import 'private_dns_zone_group_args.dart';

/// Private dns zone group resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create private dns zone group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateDnsZoneGroup = new AzureNative.Network.PrivateDnsZoneGroup("privateDnsZoneGroup", new()
///     {
///         PrivateDnsZoneConfigs = new[]
///         {
///             new AzureNative.Network.Inputs.PrivateDnsZoneConfigArgs
///             {
///                 PrivateDnsZoneId = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateDnsZones/zone1.com",
///             },
///         },
///         PrivateDnsZoneGroupName = "testPdnsgroup",
///         PrivateEndpointName = "testPe",
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
/// 		_, err := network.NewPrivateDnsZoneGroup(ctx, "privateDnsZoneGroup", &network.PrivateDnsZoneGroupArgs{
/// 			PrivateDnsZoneConfigs: network.PrivateDnsZoneConfigArray{
/// 				&network.PrivateDnsZoneConfigArgs{
/// 					PrivateDnsZoneId: pulumi.String("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateDnsZones/zone1.com"),
/// 				},
/// 			},
/// 			PrivateDnsZoneGroupName: pulumi.String("testPdnsgroup"),
/// 			PrivateEndpointName:     pulumi.String("testPe"),
/// 			ResourceGroupName:       pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.PrivateDnsZoneGroup;
/// import com.pulumi.azurenative.network.PrivateDnsZoneGroupArgs;
/// import com.pulumi.azurenative.network.inputs.PrivateDnsZoneConfigArgs;
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
///         var privateDnsZoneGroup = new PrivateDnsZoneGroup("privateDnsZoneGroup", PrivateDnsZoneGroupArgs.builder()
///             .privateDnsZoneConfigs(PrivateDnsZoneConfigArgs.builder()
///                 .privateDnsZoneId("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateDnsZones/zone1.com")
///                 .build())
///             .privateDnsZoneGroupName("testPdnsgroup")
///             .privateEndpointName("testPe")
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
/// const privateDnsZoneGroup = new azure_native.network.PrivateDnsZoneGroup("privateDnsZoneGroup", {
///     privateDnsZoneConfigs: [{
///         privateDnsZoneId: "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateDnsZones/zone1.com",
///     }],
///     privateDnsZoneGroupName: "testPdnsgroup",
///     privateEndpointName: "testPe",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_dns_zone_group = azure_native.network.PrivateDnsZoneGroup("privateDnsZoneGroup",
///     private_dns_zone_configs=[{
///         "private_dns_zone_id": "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateDnsZones/zone1.com",
///     }],
///     private_dns_zone_group_name="testPdnsgroup",
///     private_endpoint_name="testPe",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   privateDnsZoneGroup:
///     type: azure-native:network:PrivateDnsZoneGroup
///     properties:
///       privateDnsZoneConfigs:
///         - privateDnsZoneId: /subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateDnsZones/zone1.com
///       privateDnsZoneGroupName: testPdnsgroup
///       privateEndpointName: testPe
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
/// $ pulumi import azure-native:network:PrivateDnsZoneGroup testPdnsgroup /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateEndpoints/{privateEndpointName}/privateDnsZoneGroups/{privateDnsZoneGroupName}
/// ```
class PrivateDnsZoneGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// A collection of private dns zone configurations of the private dns zone group.
  late final pulumi.Output<List<PrivateDnsZoneConfigResponse>?> privateDnsZoneConfigs;
  /// The provisioning state of the private dns zone group resource.
  late final pulumi.Output<String> provisioningState;

  /// Creates a new [PrivateDnsZoneGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateDnsZoneGroup]. {@macro pulumi_network_private_dns_zone_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateDnsZoneGroup(
    String name, {
    PrivateDnsZoneGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:PrivateDnsZoneGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    this.privateDnsZoneConfigs = registerOutput<List<PrivateDnsZoneConfigResponse>?>('privateDnsZoneConfigs');
    this.provisioningState = registerOutput<String>('provisioningState');
  }
}
