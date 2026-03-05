import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_aad_admin_args.dart';

/// Workspace active directory administrator
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update workspace active directory admin
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceAadAdmin = new AzureNative.Synapse.WorkspaceAadAdmin("workspaceAadAdmin", new()
///     {
///         AdministratorType = "ActiveDirectory",
///         Login = "bob@contoso.com",
///         ResourceGroupName = "resourceGroup1",
///         Sid = "c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///         TenantId = "c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///         WorkspaceName = "workspace1",
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewWorkspaceAadAdmin(ctx, "workspaceAadAdmin", &synapse.WorkspaceAadAdminArgs{
/// 			AdministratorType: pulumi.String("ActiveDirectory"),
/// 			Login:             pulumi.String("bob@contoso.com"),
/// 			ResourceGroupName: pulumi.String("resourceGroup1"),
/// 			Sid:               pulumi.String("c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c"),
/// 			TenantId:          pulumi.String("c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c"),
/// 			WorkspaceName:     pulumi.String("workspace1"),
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
/// import com.pulumi.azurenative.synapse.WorkspaceAadAdmin;
/// import com.pulumi.azurenative.synapse.WorkspaceAadAdminArgs;
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
///         var workspaceAadAdmin = new WorkspaceAadAdmin("workspaceAadAdmin", WorkspaceAadAdminArgs.builder()
///             .administratorType("ActiveDirectory")
///             .login("bob@contoso.com")
///             .resourceGroupName("resourceGroup1")
///             .sid("c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c")
///             .tenantId("c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c")
///             .workspaceName("workspace1")
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
/// const workspaceAadAdmin = new azure_native.synapse.WorkspaceAadAdmin("workspaceAadAdmin", {
///     administratorType: "ActiveDirectory",
///     login: "bob@contoso.com",
///     resourceGroupName: "resourceGroup1",
///     sid: "c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///     tenantId: "c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///     workspaceName: "workspace1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_aad_admin = azure_native.synapse.WorkspaceAadAdmin("workspaceAadAdmin",
///     administrator_type="ActiveDirectory",
///     login="bob@contoso.com",
///     resource_group_name="resourceGroup1",
///     sid="c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///     tenant_id="c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///     workspace_name="workspace1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceAadAdmin:
///     type: azure-native:synapse:WorkspaceAadAdmin
///     properties:
///       administratorType: ActiveDirectory
///       login: bob@contoso.com
///       resourceGroupName: resourceGroup1
///       sid: c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c
///       tenantId: c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c
///       workspaceName: workspace1
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
/// $ pulumi import azure-native:synapse:WorkspaceAadAdmin activeDirectory /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/administrators/activeDirectory
/// ```
class WorkspaceAadAdmin extends pulumi.CustomResource {
  /// Workspace active directory administrator type
  late final pulumi.Output<String?> administratorType;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Login of the workspace active directory administrator
  late final pulumi.Output<String?> login;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Object ID of the workspace active directory administrator
  late final pulumi.Output<String?> sid;
  /// Tenant ID of the workspace active directory administrator
  late final pulumi.Output<String?> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkspaceAadAdmin].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceAadAdmin]. {@macro pulumi_synapse_workspace_aad_admin_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceAadAdmin(
    String name, {
    WorkspaceAadAdminArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:WorkspaceAadAdmin',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorType = registerOutput<String?>('administratorType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    login = registerOutput<String?>('login');
    this.name = registerOutput<String>('name');
    sid = registerOutput<String?>('sid');
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }
}
