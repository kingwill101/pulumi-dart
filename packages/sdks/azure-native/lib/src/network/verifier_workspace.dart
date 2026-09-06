import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'verifier_workspace_args.dart';
import 'verifier_workspace_properties_response.dart';

/// Instance of Verifier Workspace.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2024-01-01-preview.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VerifierWorkspaceCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var verifierWorkspace = new AzureNative.Network.VerifierWorkspace("verifierWorkspace", new()
///     {
///         Location = "eastus",
///         NetworkManagerName = "testNetworkManager",
///         Properties = new AzureNative.Network.Inputs.VerifierWorkspacePropertiesArgs
///         {
///             Description = "A sample workspace",
///         },
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
/// 		_, err := network.NewVerifierWorkspace(ctx, "verifierWorkspace", &network.VerifierWorkspaceArgs{
/// 			Location:           pulumi.String("eastus"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			Properties: &network.VerifierWorkspacePropertiesArgs{
/// 				Description: pulumi.String("A sample workspace"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			WorkspaceName:     pulumi.String("testWorkspace"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_verifierworkspace" "verifierWorkspace" {
///   location             = "eastus"
///   network_manager_name = "testNetworkManager"
///   properties = {
///     description = "A sample workspace"
///   }
///   resource_group_name = "rg1"
///   workspace_name      = "testWorkspace"
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
/// import com.pulumi.azurenative.network.VerifierWorkspace;
/// import com.pulumi.azurenative.network.VerifierWorkspaceArgs;
/// import com.pulumi.azurenative.network.inputs.VerifierWorkspacePropertiesArgs;
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
///         var verifierWorkspace = new VerifierWorkspace("verifierWorkspace", VerifierWorkspaceArgs.builder()
///             .location("eastus")
///             .networkManagerName("testNetworkManager")
///             .properties(VerifierWorkspacePropertiesArgs.builder()
///                 .description("A sample workspace")
///                 .build())
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
/// const verifierWorkspace = new azure_native.network.VerifierWorkspace("verifierWorkspace", {
///     location: "eastus",
///     networkManagerName: "testNetworkManager",
///     properties: {
///         description: "A sample workspace",
///     },
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
/// verifier_workspace = azure_native.network.VerifierWorkspace("verifierWorkspace",
///     location="eastus",
///     network_manager_name="testNetworkManager",
///     properties={
///         "description": "A sample workspace",
///     },
///     resource_group_name="rg1",
///     workspace_name="testWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   verifierWorkspace:
///     type: azure-native:network:VerifierWorkspace
///     properties:
///       location: eastus
///       networkManagerName: testNetworkManager
///       properties:
///         description: A sample workspace
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
/// $ pulumi import azure-native:network:VerifierWorkspace testWorkspace /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/verifierWorkspaces/{workspaceName}
/// ```
class VerifierWorkspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of Verifier Workspace resource.
  late final pulumi.Output<VerifierWorkspacePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [VerifierWorkspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VerifierWorkspace]. {@macro pulumi_network_verifier_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VerifierWorkspace(
    String name, {
    VerifierWorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:VerifierWorkspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<VerifierWorkspacePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VerifierWorkspacePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [VerifierWorkspace] resource.
  VerifierWorkspace.reference(String urn)
    : super(
        'azure-native:network:VerifierWorkspace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<VerifierWorkspacePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VerifierWorkspacePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
