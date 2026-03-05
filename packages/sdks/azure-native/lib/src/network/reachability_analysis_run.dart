import 'package:pulumi/pulumi.dart' as pulumi;
import 'reachability_analysis_run_args.dart';
import 'reachability_analysis_run_properties_response.dart';
import 'system_data_response.dart';

/// Configuration information for analysis run.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2024-01-01-preview.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ReachabilityAnalysisRunCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var reachabilityAnalysisRun = new AzureNative.Network.ReachabilityAnalysisRun("reachabilityAnalysisRun", new()
///     {
///         NetworkManagerName = "testNetworkManager",
///         Properties = new AzureNative.Network.Inputs.ReachabilityAnalysisRunPropertiesArgs
///         {
///             Description = "A sample reachability analysis run",
///             IntentId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/verifierWorkspaces/testVerifierWorkspace1/reachabilityAnalysisIntents/testReachabilityAnalysisIntenant1",
///         },
///         ReachabilityAnalysisRunName = "testAnalysisRunName",
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
/// 		_, err := network.NewReachabilityAnalysisRun(ctx, "reachabilityAnalysisRun", &network.ReachabilityAnalysisRunArgs{
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			Properties: &network.ReachabilityAnalysisRunPropertiesArgs{
/// 				Description: pulumi.String("A sample reachability analysis run"),
/// 				IntentId:    pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/verifierWorkspaces/testVerifierWorkspace1/reachabilityAnalysisIntents/testReachabilityAnalysisIntenant1"),
/// 			},
/// 			ReachabilityAnalysisRunName: pulumi.String("testAnalysisRunName"),
/// 			ResourceGroupName:           pulumi.String("rg1"),
/// 			WorkspaceName:               pulumi.String("testWorkspace"),
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
/// import com.pulumi.azurenative.network.ReachabilityAnalysisRun;
/// import com.pulumi.azurenative.network.ReachabilityAnalysisRunArgs;
/// import com.pulumi.azurenative.network.inputs.ReachabilityAnalysisRunPropertiesArgs;
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
///         var reachabilityAnalysisRun = new ReachabilityAnalysisRun("reachabilityAnalysisRun", ReachabilityAnalysisRunArgs.builder()
///             .networkManagerName("testNetworkManager")
///             .properties(ReachabilityAnalysisRunPropertiesArgs.builder()
///                 .description("A sample reachability analysis run")
///                 .intentId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/verifierWorkspaces/testVerifierWorkspace1/reachabilityAnalysisIntents/testReachabilityAnalysisIntenant1")
///                 .build())
///             .reachabilityAnalysisRunName("testAnalysisRunName")
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
/// const reachabilityAnalysisRun = new azure_native.network.ReachabilityAnalysisRun("reachabilityAnalysisRun", {
///     networkManagerName: "testNetworkManager",
///     properties: {
///         description: "A sample reachability analysis run",
///         intentId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/verifierWorkspaces/testVerifierWorkspace1/reachabilityAnalysisIntents/testReachabilityAnalysisIntenant1",
///     },
///     reachabilityAnalysisRunName: "testAnalysisRunName",
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
/// reachability_analysis_run = azure_native.network.ReachabilityAnalysisRun("reachabilityAnalysisRun",
///     network_manager_name="testNetworkManager",
///     properties={
///         "description": "A sample reachability analysis run",
///         "intent_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/verifierWorkspaces/testVerifierWorkspace1/reachabilityAnalysisIntents/testReachabilityAnalysisIntenant1",
///     },
///     reachability_analysis_run_name="testAnalysisRunName",
///     resource_group_name="rg1",
///     workspace_name="testWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   reachabilityAnalysisRun:
///     type: azure-native:network:ReachabilityAnalysisRun
///     properties:
///       networkManagerName: testNetworkManager
///       properties:
///         description: A sample reachability analysis run
///         intentId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/verifierWorkspaces/testVerifierWorkspace1/reachabilityAnalysisIntents/testReachabilityAnalysisIntenant1
///       reachabilityAnalysisRunName: testAnalysisRunName
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
/// $ pulumi import azure-native:network:ReachabilityAnalysisRun testAnalysisRunName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName}/reachabilityAnalysisRuns/{reachabilityAnalysisRunName}
/// ```
class ReachabilityAnalysisRun extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Represents the Reachability Analysis Run properties.
  late final pulumi.Output<ReachabilityAnalysisRunPropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ReachabilityAnalysisRun].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReachabilityAnalysisRun]. {@macro pulumi_network_reachability_analysis_run_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReachabilityAnalysisRun(
    String name, {
    ReachabilityAnalysisRunArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:ReachabilityAnalysisRun',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ReachabilityAnalysisRunPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ReachabilityAnalysisRunPropertiesResponse.fromMap(
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
