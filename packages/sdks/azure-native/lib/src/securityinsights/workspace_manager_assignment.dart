import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workspace_manager_assignment_args.dart';

/// The workspace manager assignment
///
/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a workspace manager assignment.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceManagerAssignment = new AzureNative.SecurityInsights.WorkspaceManagerAssignment("workspaceManagerAssignment", new()
///     {
///         Items = new[]
///         {
///             new AzureNative.SecurityInsights.Inputs.AssignmentItemArgs
///             {
///                 ResourceId = "/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspac-es/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/microsoftSecurityIncidentCreationRuleExampleOne",
///             },
///             new AzureNative.SecurityInsights.Inputs.AssignmentItemArgs
///             {
///                 ResourceId = "/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspac-es/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/microsoftSecurityIncidentCreationRuleExampleTwo",
///             },
///         },
///         ResourceGroupName = "myRg",
///         TargetResourceName = "37207a7a-3b8a-438f-a559-c7df400e1b96",
///         WorkspaceManagerAssignmentName = "47cdc5f5-37c4-47b5-bd5f-83c84b8bdd58",
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
/// 		_, err := securityinsights.NewWorkspaceManagerAssignment(ctx, "workspaceManagerAssignment", &securityinsights.WorkspaceManagerAssignmentArgs{
/// 			Items: securityinsights.AssignmentItemArray{
/// 				&securityinsights.AssignmentItemArgs{
/// 					ResourceId: pulumi.String("/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspac-es/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/microsoftSecurityIncidentCreationRuleExampleOne"),
/// 				},
/// 				&securityinsights.AssignmentItemArgs{
/// 					ResourceId: pulumi.String("/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspac-es/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/microsoftSecurityIncidentCreationRuleExampleTwo"),
/// 				},
/// 			},
/// 			ResourceGroupName:              pulumi.String("myRg"),
/// 			TargetResourceName:             pulumi.String("37207a7a-3b8a-438f-a559-c7df400e1b96"),
/// 			WorkspaceManagerAssignmentName: pulumi.String("47cdc5f5-37c4-47b5-bd5f-83c84b8bdd58"),
/// 			WorkspaceName:                  pulumi.String("myWorkspace"),
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
/// import com.pulumi.azurenative.securityinsights.WorkspaceManagerAssignment;
/// import com.pulumi.azurenative.securityinsights.WorkspaceManagerAssignmentArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.AssignmentItemArgs;
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
///         var workspaceManagerAssignment = new WorkspaceManagerAssignment("workspaceManagerAssignment", WorkspaceManagerAssignmentArgs.builder()
///             .items(
///                 AssignmentItemArgs.builder()
///                     .resourceId("/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspac-es/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/microsoftSecurityIncidentCreationRuleExampleOne")
///                     .build(),
///                 AssignmentItemArgs.builder()
///                     .resourceId("/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspac-es/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/microsoftSecurityIncidentCreationRuleExampleTwo")
///                     .build())
///             .resourceGroupName("myRg")
///             .targetResourceName("37207a7a-3b8a-438f-a559-c7df400e1b96")
///             .workspaceManagerAssignmentName("47cdc5f5-37c4-47b5-bd5f-83c84b8bdd58")
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
/// const workspaceManagerAssignment = new azure_native.securityinsights.WorkspaceManagerAssignment("workspaceManagerAssignment", {
///     items: [
///         {
///             resourceId: "/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspac-es/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/microsoftSecurityIncidentCreationRuleExampleOne",
///         },
///         {
///             resourceId: "/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspac-es/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/microsoftSecurityIncidentCreationRuleExampleTwo",
///         },
///     ],
///     resourceGroupName: "myRg",
///     targetResourceName: "37207a7a-3b8a-438f-a559-c7df400e1b96",
///     workspaceManagerAssignmentName: "47cdc5f5-37c4-47b5-bd5f-83c84b8bdd58",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_manager_assignment = azure_native.securityinsights.WorkspaceManagerAssignment("workspaceManagerAssignment",
///     items=[
///         {
///             "resource_id": "/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspac-es/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/microsoftSecurityIncidentCreationRuleExampleOne",
///         },
///         {
///             "resource_id": "/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspac-es/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/microsoftSecurityIncidentCreationRuleExampleTwo",
///         },
///     ],
///     resource_group_name="myRg",
///     target_resource_name="37207a7a-3b8a-438f-a559-c7df400e1b96",
///     workspace_manager_assignment_name="47cdc5f5-37c4-47b5-bd5f-83c84b8bdd58",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceManagerAssignment:
///     type: azure-native:securityinsights:WorkspaceManagerAssignment
///     properties:
///       items:
///         - resourceId: /subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspac-es/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/microsoftSecurityIncidentCreationRuleExampleOne
///         - resourceId: /subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspac-es/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/microsoftSecurityIncidentCreationRuleExampleTwo
///       resourceGroupName: myRg
///       targetResourceName: 37207a7a-3b8a-438f-a559-c7df400e1b96
///       workspaceManagerAssignmentName: 47cdc5f5-37c4-47b5-bd5f-83c84b8bdd58
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
/// $ pulumi import azure-native:securityinsights:WorkspaceManagerAssignment 47cdc5f5-37c4-47b5-bd5f-83c84b8bdd58 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/workspaceManagerAssignments/{workspaceManagerAssignmentName}
/// ```
class WorkspaceManagerAssignment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource Etag.
  late final pulumi.Output<String> etag;

  /// List of resources included in this workspace manager assignment
  late final pulumi.Output<List<Map<String, dynamic>>> items;

  /// The time the last job associated to this assignment ended at
  late final pulumi.Output<String> lastJobEndTime;

  /// State of the last job associated to this assignment
  late final pulumi.Output<String> lastJobProvisioningState;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The resource name of the workspace manager group targeted by the workspace manager assignment
  late final pulumi.Output<String> targetResourceName;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkspaceManagerAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceManagerAssignment]. {@macro pulumi_securityinsights_workspace_manager_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceManagerAssignment(
    String name, {
    WorkspaceManagerAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:securityinsights:WorkspaceManagerAssignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    items = registerOutput<List<Map<String, dynamic>>>('items');
    lastJobEndTime = registerOutput<String>('lastJobEndTime');
    lastJobProvisioningState = registerOutput<String>(
      'lastJobProvisioningState',
    );
    this.name = registerOutput<String>('name');
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
    targetResourceName = registerOutput<String>('targetResourceName');
    type = registerOutput<String>('type');
  }
}
