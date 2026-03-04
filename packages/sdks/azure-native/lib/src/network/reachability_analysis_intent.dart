import 'package:pulumi/pulumi.dart' as pulumi;
import 'reachability_analysis_intent_args.dart';
import 'reachability_analysis_intent_properties_response.dart';
import 'system_data_response.dart';

/// Configuration information or intent on which to do the analysis on.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2024-01-01-preview.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ReachabilityAnalysisIntentCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var reachabilityAnalysisIntent = new AzureNative.Network.ReachabilityAnalysisIntent("reachabilityAnalysisIntent", new()
///     {
///         NetworkManagerName = "testNetworkManager",
///         Properties = new AzureNative.Network.Inputs.ReachabilityAnalysisIntentPropertiesArgs
///         {
///             Description = "A sample reachability analysis intent",
///             DestinationResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/testVmDest",
///             IpTraffic = new AzureNative.Network.Inputs.IPTrafficArgs
///             {
///                 DestinationIps = new[]
///                 {
///                     "10.4.0.1",
///                 },
///                 DestinationPorts = new[]
///                 {
///                     "0",
///                 },
///                 Protocols = new[]
///                 {
///                     AzureNative.Network.NetworkProtocol.Any,
///                 },
///                 SourceIps = new[]
///                 {
///                     "10.4.0.0",
///                 },
///                 SourcePorts = new[]
///                 {
///                     "0",
///                 },
///             },
///             SourceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/testVmSrc",
///         },
///         ReachabilityAnalysisIntentName = "testAnalysisIntentName",
///         ResourceGroupName = "rg1",
///         WorkspaceName = "testWorkspace",
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
/// 		_, err := network.NewReachabilityAnalysisIntent(ctx, "reachabilityAnalysisIntent", &network.ReachabilityAnalysisIntentArgs{
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			Properties: &network.ReachabilityAnalysisIntentPropertiesArgs{
/// 				Description:           pulumi.String("A sample reachability analysis intent"),
/// 				DestinationResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/testVmDest"),
/// 				IpTraffic: &network.IPTrafficArgs{
/// 					DestinationIps: pulumi.StringArray{
/// 						pulumi.String("10.4.0.1"),
/// 					},
/// 					DestinationPorts: pulumi.StringArray{
/// 						pulumi.String("0"),
/// 					},
/// 					Protocols: pulumi.StringArray{
/// 						pulumi.String(network.NetworkProtocolAny),
/// 					},
/// 					SourceIps: pulumi.StringArray{
/// 						pulumi.String("10.4.0.0"),
/// 					},
/// 					SourcePorts: pulumi.StringArray{
/// 						pulumi.String("0"),
/// 					},
/// 				},
/// 				SourceResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/testVmSrc"),
/// 			},
/// 			ReachabilityAnalysisIntentName: pulumi.String("testAnalysisIntentName"),
/// 			ResourceGroupName:              pulumi.String("rg1"),
/// 			WorkspaceName:                  pulumi.String("testWorkspace"),
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
/// import com.pulumi.azurenative.network.ReachabilityAnalysisIntent;
/// import com.pulumi.azurenative.network.ReachabilityAnalysisIntentArgs;
/// import com.pulumi.azurenative.network.inputs.ReachabilityAnalysisIntentPropertiesArgs;
/// import com.pulumi.azurenative.network.inputs.IPTrafficArgs;
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
///         var reachabilityAnalysisIntent = new ReachabilityAnalysisIntent("reachabilityAnalysisIntent", ReachabilityAnalysisIntentArgs.builder()
///             .networkManagerName("testNetworkManager")
///             .properties(ReachabilityAnalysisIntentPropertiesArgs.builder()
///                 .description("A sample reachability analysis intent")
///                 .destinationResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/testVmDest")
///                 .ipTraffic(IPTrafficArgs.builder()
///                     .destinationIps("10.4.0.1")
///                     .destinationPorts("0")
///                     .protocols("Any")
///                     .sourceIps("10.4.0.0")
///                     .sourcePorts("0")
///                     .build())
///                 .sourceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/testVmSrc")
///                 .build())
///             .reachabilityAnalysisIntentName("testAnalysisIntentName")
///             .resourceGroupName("rg1")
///             .workspaceName("testWorkspace")
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
/// const reachabilityAnalysisIntent = new azure_native.network.ReachabilityAnalysisIntent("reachabilityAnalysisIntent", {
///     networkManagerName: "testNetworkManager",
///     properties: {
///         description: "A sample reachability analysis intent",
///         destinationResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/testVmDest",
///         ipTraffic: {
///             destinationIps: ["10.4.0.1"],
///             destinationPorts: ["0"],
///             protocols: [azure_native.network.NetworkProtocol.Any],
///             sourceIps: ["10.4.0.0"],
///             sourcePorts: ["0"],
///         },
///         sourceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/testVmSrc",
///     },
///     reachabilityAnalysisIntentName: "testAnalysisIntentName",
///     resourceGroupName: "rg1",
///     workspaceName: "testWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// reachability_analysis_intent = azure_native.network.ReachabilityAnalysisIntent("reachabilityAnalysisIntent",
///     network_manager_name="testNetworkManager",
///     properties={
///         "description": "A sample reachability analysis intent",
///         "destination_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/testVmDest",
///         "ip_traffic": {
///             "destination_ips": ["10.4.0.1"],
///             "destination_ports": ["0"],
///             "protocols": [azure_native.network.NetworkProtocol.ANY],
///             "source_ips": ["10.4.0.0"],
///             "source_ports": ["0"],
///         },
///         "source_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/testVmSrc",
///     },
///     reachability_analysis_intent_name="testAnalysisIntentName",
///     resource_group_name="rg1",
///     workspace_name="testWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   reachabilityAnalysisIntent:
///     type: azure-native:network:ReachabilityAnalysisIntent
///     properties:
///       networkManagerName: testNetworkManager
///       properties:
///         description: A sample reachability analysis intent
///         destinationResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/testVmDest
///         ipTraffic:
///           destinationIps:
///             - 10.4.0.1
///           destinationPorts:
///             - '0'
///           protocols:
///             - Any
///           sourceIps:
///             - 10.4.0.0
///           sourcePorts:
///             - '0'
///         sourceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/testVmSrc
///       reachabilityAnalysisIntentName: testAnalysisIntentName
///       resourceGroupName: rg1
///       workspaceName: testWorkspace
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
/// $ pulumi import azure-native:network:ReachabilityAnalysisIntent testAnalysisIntentName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName}/reachabilityAnalysisIntents/{reachabilityAnalysisIntentName}
/// ```
class ReachabilityAnalysisIntent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Represents the Reachability Analysis Intent properties.
  late final pulumi.Output<ReachabilityAnalysisIntentPropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ReachabilityAnalysisIntent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReachabilityAnalysisIntent]. {@macro pulumi_network_reachability_analysis_intent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReachabilityAnalysisIntent(
    String name, {
    ReachabilityAnalysisIntentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:ReachabilityAnalysisIntent',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ReachabilityAnalysisIntentPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
