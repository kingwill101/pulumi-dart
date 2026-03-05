import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workspace_manager_configuration_args.dart';

/// The workspace manager configuration
///
/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a workspace manager Configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceManagerConfiguration = new AzureNative.SecurityInsights.WorkspaceManagerConfiguration("workspaceManagerConfiguration", new()
///     {
///         Mode = AzureNative.SecurityInsights.Mode.Enabled,
///         ResourceGroupName = "myRg",
///         WorkspaceManagerConfigurationName = "default",
///         WorkspaceName = "myWorkspace",
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
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewWorkspaceManagerConfiguration(ctx, "workspaceManagerConfiguration", &securityinsights.WorkspaceManagerConfigurationArgs{
/// 			Mode:                              pulumi.String(securityinsights.ModeEnabled),
/// 			ResourceGroupName:                 pulumi.String("myRg"),
/// 			WorkspaceManagerConfigurationName: pulumi.String("default"),
/// 			WorkspaceName:                     pulumi.String("myWorkspace"),
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
/// import com.pulumi.azurenative.securityinsights.WorkspaceManagerConfiguration;
/// import com.pulumi.azurenative.securityinsights.WorkspaceManagerConfigurationArgs;
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
///         var workspaceManagerConfiguration = new WorkspaceManagerConfiguration("workspaceManagerConfiguration", WorkspaceManagerConfigurationArgs.builder()
///             .mode("Enabled")
///             .resourceGroupName("myRg")
///             .workspaceManagerConfigurationName("default")
///             .workspaceName("myWorkspace")
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
/// const workspaceManagerConfiguration = new azure_native.securityinsights.WorkspaceManagerConfiguration("workspaceManagerConfiguration", {
///     mode: azure_native.securityinsights.Mode.Enabled,
///     resourceGroupName: "myRg",
///     workspaceManagerConfigurationName: "default",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_manager_configuration = azure_native.securityinsights.WorkspaceManagerConfiguration("workspaceManagerConfiguration",
///     mode=azure_native.securityinsights.Mode.ENABLED,
///     resource_group_name="myRg",
///     workspace_manager_configuration_name="default",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceManagerConfiguration:
///     type: azure-native:securityinsights:WorkspaceManagerConfiguration
///     properties:
///       mode: Enabled
///       resourceGroupName: myRg
///       workspaceManagerConfigurationName: default
///       workspaceName: myWorkspace
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
/// $ pulumi import azure-native:securityinsights:WorkspaceManagerConfiguration default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/workspaceManagerConfigurations/{workspaceManagerConfigurationName}
/// ```
class WorkspaceManagerConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Etag.
  late final pulumi.Output<String> etag;
  /// The current mode of the workspace manager configuration
  late final pulumi.Output<String> mode;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkspaceManagerConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceManagerConfiguration]. {@macro pulumi_securityinsights_workspace_manager_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceManagerConfiguration(
    String name, {
    WorkspaceManagerConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:WorkspaceManagerConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
