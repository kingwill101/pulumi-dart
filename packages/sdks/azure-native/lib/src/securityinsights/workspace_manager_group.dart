import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workspace_manager_group_args.dart';

/// The workspace manager group
///
/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a workspace manager group.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceManagerGroup = new AzureNative.SecurityInsights.WorkspaceManagerGroup("workspaceManagerGroup", new()
///     {
///         Description = "Group of all financial and banking institutions",
///         DisplayName = "Banks",
///         MemberResourceNames = new[]
///         {
///             "afbd324f-6c48-459c-8710-8d1e1cd03812",
///             "f5fa104e-c0e3-4747-9182-d342dc048a9e",
///         },
///         ResourceGroupName = "myRg",
///         WorkspaceManagerGroupName = "37207a7a-3b8a-438f-a559-c7df400e1b96",
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
/// 		_, err := securityinsights.NewWorkspaceManagerGroup(ctx, "workspaceManagerGroup", &securityinsights.WorkspaceManagerGroupArgs{
/// 			Description: pulumi.String("Group of all financial and banking institutions"),
/// 			DisplayName: pulumi.String("Banks"),
/// 			MemberResourceNames: pulumi.StringArray{
/// 				pulumi.String("afbd324f-6c48-459c-8710-8d1e1cd03812"),
/// 				pulumi.String("f5fa104e-c0e3-4747-9182-d342dc048a9e"),
/// 			},
/// 			ResourceGroupName:         pulumi.String("myRg"),
/// 			WorkspaceManagerGroupName: pulumi.String("37207a7a-3b8a-438f-a559-c7df400e1b96"),
/// 			WorkspaceName:             pulumi.String("myWorkspace"),
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
/// import com.pulumi.azurenative.securityinsights.WorkspaceManagerGroup;
/// import com.pulumi.azurenative.securityinsights.WorkspaceManagerGroupArgs;
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
///         var workspaceManagerGroup = new WorkspaceManagerGroup("workspaceManagerGroup", WorkspaceManagerGroupArgs.builder()
///             .description("Group of all financial and banking institutions")
///             .displayName("Banks")
///             .memberResourceNames(
///                 "afbd324f-6c48-459c-8710-8d1e1cd03812",
///                 "f5fa104e-c0e3-4747-9182-d342dc048a9e")
///             .resourceGroupName("myRg")
///             .workspaceManagerGroupName("37207a7a-3b8a-438f-a559-c7df400e1b96")
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
/// const workspaceManagerGroup = new azure_native.securityinsights.WorkspaceManagerGroup("workspaceManagerGroup", {
///     description: "Group of all financial and banking institutions",
///     displayName: "Banks",
///     memberResourceNames: [
///         "afbd324f-6c48-459c-8710-8d1e1cd03812",
///         "f5fa104e-c0e3-4747-9182-d342dc048a9e",
///     ],
///     resourceGroupName: "myRg",
///     workspaceManagerGroupName: "37207a7a-3b8a-438f-a559-c7df400e1b96",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_manager_group = azure_native.securityinsights.WorkspaceManagerGroup("workspaceManagerGroup",
///     description="Group of all financial and banking institutions",
///     display_name="Banks",
///     member_resource_names=[
///         "afbd324f-6c48-459c-8710-8d1e1cd03812",
///         "f5fa104e-c0e3-4747-9182-d342dc048a9e",
///     ],
///     resource_group_name="myRg",
///     workspace_manager_group_name="37207a7a-3b8a-438f-a559-c7df400e1b96",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceManagerGroup:
///     type: azure-native:securityinsights:WorkspaceManagerGroup
///     properties:
///       description: Group of all financial and banking institutions
///       displayName: Banks
///       memberResourceNames:
///         - afbd324f-6c48-459c-8710-8d1e1cd03812
///         - f5fa104e-c0e3-4747-9182-d342dc048a9e
///       resourceGroupName: myRg
///       workspaceManagerGroupName: 37207a7a-3b8a-438f-a559-c7df400e1b96
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
/// $ pulumi import azure-native:securityinsights:WorkspaceManagerGroup 37207a7a-3b8a-438f-a559-c7df400e1b96 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/workspaceManagerGroups/{workspaceManagerGroupName}
/// ```
class WorkspaceManagerGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The description of the workspace manager group
  late final pulumi.Output<String?> description;

  /// The display name of the workspace manager group
  late final pulumi.Output<String> displayName;

  /// Resource Etag.
  late final pulumi.Output<String> etag;

  /// The names of the workspace manager members participating in this group.
  late final pulumi.Output<List<String>> memberResourceNames;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkspaceManagerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceManagerGroup]. {@macro pulumi_securityinsights_workspace_manager_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceManagerGroup(
    String name, {
    WorkspaceManagerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:securityinsights:WorkspaceManagerGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    memberResourceNames = registerOutput<List<String>>('memberResourceNames');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
