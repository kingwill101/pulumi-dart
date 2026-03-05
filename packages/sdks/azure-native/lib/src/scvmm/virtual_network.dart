import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'virtual_network_args.dart';

/// The VirtualNetworks resource definition.
///
/// Uses Azure REST API version 2023-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-21-preview.
///
/// Other available API versions: 2022-05-21-preview, 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateVirtualNetwork
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetwork = new AzureNative.ScVmm.VirtualNetwork("virtualNetwork", new()
///     {
///         ExtendedLocation = new AzureNative.ScVmm.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///             Type = "customLocation",
///         },
///         Location = "East US",
///         ResourceGroupName = "testrg",
///         Uuid = "aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///         VirtualNetworkName = "HRVirtualNetwork",
///         VmmServerId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer",
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
/// 	scvmm "github.com/pulumi/pulumi-azure-native-sdk/scvmm/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := scvmm.NewVirtualNetwork(ctx, "virtualNetwork", &scvmm.VirtualNetworkArgs{
/// 			ExtendedLocation: &scvmm.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
/// 			Location:           pulumi.String("East US"),
/// 			ResourceGroupName:  pulumi.String("testrg"),
/// 			Uuid:               pulumi.String("aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"),
/// 			VirtualNetworkName: pulumi.String("HRVirtualNetwork"),
/// 			VmmServerId:        pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer"),
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
/// import com.pulumi.azurenative.scvmm.VirtualNetwork;
/// import com.pulumi.azurenative.scvmm.VirtualNetworkArgs;
/// import com.pulumi.azurenative.scvmm.inputs.ExtendedLocationArgs;
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
///         var virtualNetwork = new VirtualNetwork("virtualNetwork", VirtualNetworkArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
///             .location("East US")
///             .resourceGroupName("testrg")
///             .uuid("aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee")
///             .virtualNetworkName("HRVirtualNetwork")
///             .vmmServerId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer")
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
/// const virtualNetwork = new azure_native.scvmm.VirtualNetwork("virtualNetwork", {
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///         type: "customLocation",
///     },
///     location: "East US",
///     resourceGroupName: "testrg",
///     uuid: "aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     virtualNetworkName: "HRVirtualNetwork",
///     vmmServerId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network = azure_native.scvmm.VirtualNetwork("virtualNetwork",
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///         "type": "customLocation",
///     },
///     location="East US",
///     resource_group_name="testrg",
///     uuid="aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     virtual_network_name="HRVirtualNetwork",
///     vmm_server_id="/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetwork:
///     type: azure-native:scvmm:VirtualNetwork
///     properties:
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso
///         type: customLocation
///       location: East US
///       resourceGroupName: testrg
///       uuid: aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee
///       virtualNetworkName: HRVirtualNetwork
///       vmmServerId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer
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
/// $ pulumi import azure-native:scvmm:VirtualNetwork HRVirtualNetwork /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ScVmm/virtualNetworks/{virtualNetworkName}
/// ```
class VirtualNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The extended location.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;

  /// Gets or sets the inventory Item ID for the resource.
  late final pulumi.Output<String?> inventoryItemId;

  /// Gets or sets the location.
  late final pulumi.Output<String> location;

  /// Resource Name
  late final pulumi.Output<String> name;

  /// Name of the virtual network in vmmServer.
  late final pulumi.Output<String> networkName;

  /// Gets or sets the provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// The system data.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource Type
  late final pulumi.Output<String> type;

  /// Unique ID of the virtual network.
  late final pulumi.Output<String?> uuid;

  /// ARM Id of the vmmServer resource in which this resource resides.
  late final pulumi.Output<String?> vmmServerId;

  /// Creates a new [VirtualNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetwork]. {@macro pulumi_scvmm_virtual_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetwork(
    String name, {
    VirtualNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:scvmm:VirtualNetwork',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    inventoryItemId = registerOutput<String?>('inventoryItemId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkName = registerOutput<String>('networkName');
    provisioningState = registerOutput<String>('provisioningState');
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
    uuid = registerOutput<String?>('uuid');
    vmmServerId = registerOutput<String?>('vmmServerId');
  }
}
