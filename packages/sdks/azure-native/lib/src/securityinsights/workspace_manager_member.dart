import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workspace_manager_member_args.dart';

/// The workspace manager member
///
/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a workspace manager member
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceManagerMember = new AzureNative.SecurityInsights.WorkspaceManagerMember("workspaceManagerMember", new()
///     {
///         ResourceGroupName = "myRg",
///         TargetWorkspaceResourceId = "/subscriptions/7aef9d48-814f-45ad-b644-b0343316e174/resourceGroups/otherRg/providers/Microsoft.OperationalInsights/workspaces/Example_Workspace",
///         TargetWorkspaceTenantId = "f676d436-8d16-42db-81b7-ab578e110ccd",
///         WorkspaceManagerMemberName = "afbd324f-6c48-459c-8710-8d1e1cd03812",
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
/// 		_, err := securityinsights.NewWorkspaceManagerMember(ctx, "workspaceManagerMember", &securityinsights.WorkspaceManagerMemberArgs{
/// 			ResourceGroupName:          pulumi.String("myRg"),
/// 			TargetWorkspaceResourceId:  pulumi.String("/subscriptions/7aef9d48-814f-45ad-b644-b0343316e174/resourceGroups/otherRg/providers/Microsoft.OperationalInsights/workspaces/Example_Workspace"),
/// 			TargetWorkspaceTenantId:    pulumi.String("f676d436-8d16-42db-81b7-ab578e110ccd"),
/// 			WorkspaceManagerMemberName: pulumi.String("afbd324f-6c48-459c-8710-8d1e1cd03812"),
/// 			WorkspaceName:              pulumi.String("myWorkspace"),
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
/// import com.pulumi.azurenative.securityinsights.WorkspaceManagerMember;
/// import com.pulumi.azurenative.securityinsights.WorkspaceManagerMemberArgs;
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
///         var workspaceManagerMember = new WorkspaceManagerMember("workspaceManagerMember", WorkspaceManagerMemberArgs.builder()
///             .resourceGroupName("myRg")
///             .targetWorkspaceResourceId("/subscriptions/7aef9d48-814f-45ad-b644-b0343316e174/resourceGroups/otherRg/providers/Microsoft.OperationalInsights/workspaces/Example_Workspace")
///             .targetWorkspaceTenantId("f676d436-8d16-42db-81b7-ab578e110ccd")
///             .workspaceManagerMemberName("afbd324f-6c48-459c-8710-8d1e1cd03812")
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
/// const workspaceManagerMember = new azure_native.securityinsights.WorkspaceManagerMember("workspaceManagerMember", {
///     resourceGroupName: "myRg",
///     targetWorkspaceResourceId: "/subscriptions/7aef9d48-814f-45ad-b644-b0343316e174/resourceGroups/otherRg/providers/Microsoft.OperationalInsights/workspaces/Example_Workspace",
///     targetWorkspaceTenantId: "f676d436-8d16-42db-81b7-ab578e110ccd",
///     workspaceManagerMemberName: "afbd324f-6c48-459c-8710-8d1e1cd03812",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_manager_member = azure_native.securityinsights.WorkspaceManagerMember("workspaceManagerMember",
///     resource_group_name="myRg",
///     target_workspace_resource_id="/subscriptions/7aef9d48-814f-45ad-b644-b0343316e174/resourceGroups/otherRg/providers/Microsoft.OperationalInsights/workspaces/Example_Workspace",
///     target_workspace_tenant_id="f676d436-8d16-42db-81b7-ab578e110ccd",
///     workspace_manager_member_name="afbd324f-6c48-459c-8710-8d1e1cd03812",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceManagerMember:
///     type: azure-native:securityinsights:WorkspaceManagerMember
///     properties:
///       resourceGroupName: myRg
///       targetWorkspaceResourceId: /subscriptions/7aef9d48-814f-45ad-b644-b0343316e174/resourceGroups/otherRg/providers/Microsoft.OperationalInsights/workspaces/Example_Workspace
///       targetWorkspaceTenantId: f676d436-8d16-42db-81b7-ab578e110ccd
///       workspaceManagerMemberName: afbd324f-6c48-459c-8710-8d1e1cd03812
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
/// $ pulumi import azure-native:securityinsights:WorkspaceManagerMember afbd324f-6c48-459c-8710-8d1e1cd03812 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/workspaceManagerMembers/{workspaceManagerMemberName}
/// ```
class WorkspaceManagerMember extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource Etag.
  late final pulumi.Output<String> etag;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Fully qualified resource ID of the target Sentinel workspace joining the given Sentinel workspace manager
  late final pulumi.Output<String> targetWorkspaceResourceId;

  /// Tenant id of the target Sentinel workspace joining the given Sentinel workspace manager
  late final pulumi.Output<String> targetWorkspaceTenantId;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkspaceManagerMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceManagerMember]. {@macro pulumi_securityinsights_workspace_manager_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceManagerMember(
    String name, {
    WorkspaceManagerMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:securityinsights:WorkspaceManagerMember',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData');
    targetWorkspaceResourceId = registerOutput<String>(
      'targetWorkspaceResourceId',
    );
    targetWorkspaceTenantId = registerOutput<String>('targetWorkspaceTenantId');
    type = registerOutput<String>('type');
  }
}
