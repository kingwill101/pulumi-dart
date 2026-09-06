import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workspace_setting_args.dart';

/// Configures where to store the OMS agent data for workspaces under a scope
///
/// Uses Azure REST API version 2017-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2017-08-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a workspace setting data for subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceSetting = new AzureNative.Security.WorkspaceSetting("workspaceSetting", new()
///     {
///         Scope = "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///         WorkspaceId = "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace",
///         WorkspaceSettingName = "default",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewWorkspaceSetting(ctx, "workspaceSetting", &security.WorkspaceSettingArgs{
/// 			Scope:                pulumi.String("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"),
/// 			WorkspaceId:          pulumi.String("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace"),
/// 			WorkspaceSettingName: pulumi.String("default"),
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
/// resource "azure-native_security_workspacesetting" "workspaceSetting" {
///   scope                  = "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"
///   workspace_id           = "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace"
///   workspace_setting_name = "default"
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
/// import com.pulumi.azurenative.security.WorkspaceSetting;
/// import com.pulumi.azurenative.security.WorkspaceSettingArgs;
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
///         var workspaceSetting = new WorkspaceSetting("workspaceSetting", WorkspaceSettingArgs.builder()
///             .scope("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23")
///             .workspaceId("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace")
///             .workspaceSettingName("default")
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
/// const workspaceSetting = new azure_native.security.WorkspaceSetting("workspaceSetting", {
///     scope: "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///     workspaceId: "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace",
///     workspaceSettingName: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_setting = azure_native.security.WorkspaceSetting("workspaceSetting",
///     scope="/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///     workspace_id="/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace",
///     workspace_setting_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceSetting:
///     type: azure-native:security:WorkspaceSetting
///     properties:
///       scope: /subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23
///       workspaceId: /subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace
///       workspaceSettingName: default
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
/// $ pulumi import azure-native:security:WorkspaceSetting default /subscriptions/{subscriptionId}/providers/Microsoft.Security/workspaceSettings/{workspaceSettingName}
/// ```
class WorkspaceSetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// All the VMs in this scope will send their security data to the mentioned workspace unless overridden by a setting with more specific scope
  late final pulumi.Output<String> scope;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The full Azure ID of the workspace to save the data in
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceSetting]. {@macro pulumi_security_workspace_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceSetting(
    String name, {
    WorkspaceSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:WorkspaceSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    scope = registerOutput<String>('scope');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Creates a typed reference to an existing [WorkspaceSetting] resource.
  WorkspaceSetting.reference(String urn)
    : super(
        'azure-native:security:WorkspaceSetting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    scope = registerOutput<String>('scope');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
