import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_application_group_association_args.dart';
import 'workspace_application_group_association_state.dart';

/// Manages a Virtual Desktop Workspace Application Group Association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "rg-example-virtualdesktop",
///     location: "West Europe",
/// });
/// const pooledbreadthfirst = new azure.desktopvirtualization.HostPool("pooledbreadthfirst", {
///     name: "pooledbreadthfirst",
///     location: example.location,
///     resourceGroupName: example.name,
///     type: "Pooled",
///     loadBalancerType: "BreadthFirst",
/// });
/// const remoteapp = new azure.desktopvirtualization.ApplicationGroup("remoteapp", {
///     name: "remoteapp",
///     location: example.location,
///     resourceGroupName: example.name,
///     type: "RemoteApp",
///     hostPoolId: pooledbreadthfirst.id,
/// });
/// const workspace = new azure.desktopvirtualization.Workspace("workspace", {
///     name: "workspace",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const workspaceremoteapp = new azure.desktopvirtualization.WorkspaceApplicationGroupAssociation("workspaceremoteapp", {
///     workspaceId: workspace.id,
///     applicationGroupId: remoteapp.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example-virtualdesktop",
///     location="West Europe")
/// pooledbreadthfirst = azure.desktopvirtualization.HostPool("pooledbreadthfirst",
///     name="pooledbreadthfirst",
///     location=example.location,
///     resource_group_name=example.name,
///     type="Pooled",
///     load_balancer_type="BreadthFirst")
/// remoteapp = azure.desktopvirtualization.ApplicationGroup("remoteapp",
///     name="remoteapp",
///     location=example.location,
///     resource_group_name=example.name,
///     type="RemoteApp",
///     host_pool_id=pooledbreadthfirst.id)
/// workspace = azure.desktopvirtualization.Workspace("workspace",
///     name="workspace",
///     location=example.location,
///     resource_group_name=example.name)
/// workspaceremoteapp = azure.desktopvirtualization.WorkspaceApplicationGroupAssociation("workspaceremoteapp",
///     workspace_id=workspace.id,
///     application_group_id=remoteapp.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "rg-example-virtualdesktop",
///         Location = "West Europe",
///     });
///
///     var pooledbreadthfirst = new Azure.DesktopVirtualization.HostPool("pooledbreadthfirst", new()
///     {
///         Name = "pooledbreadthfirst",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Type = "Pooled",
///         LoadBalancerType = "BreadthFirst",
///     });
///
///     var remoteapp = new Azure.DesktopVirtualization.ApplicationGroup("remoteapp", new()
///     {
///         Name = "remoteapp",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Type = "RemoteApp",
///         HostPoolId = pooledbreadthfirst.Id,
///     });
///
///     var workspace = new Azure.DesktopVirtualization.Workspace("workspace", new()
///     {
///         Name = "workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var workspaceremoteapp = new Azure.DesktopVirtualization.WorkspaceApplicationGroupAssociation("workspaceremoteapp", new()
///     {
///         WorkspaceId = workspace.Id,
///         ApplicationGroupId = remoteapp.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/desktopvirtualization"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("rg-example-virtualdesktop"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pooledbreadthfirst, err := desktopvirtualization.NewHostPool(ctx, "pooledbreadthfirst", &desktopvirtualization.HostPoolArgs{
/// 			Name:              pulumi.String("pooledbreadthfirst"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Type:              pulumi.String("Pooled"),
/// 			LoadBalancerType:  pulumi.String("BreadthFirst"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		remoteapp, err := desktopvirtualization.NewApplicationGroup(ctx, "remoteapp", &desktopvirtualization.ApplicationGroupArgs{
/// 			Name:              pulumi.String("remoteapp"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Type:              pulumi.String("RemoteApp"),
/// 			HostPoolId:        pooledbreadthfirst.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workspace, err := desktopvirtualization.NewWorkspace(ctx, "workspace", &desktopvirtualization.WorkspaceArgs{
/// 			Name:              pulumi.String("workspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = desktopvirtualization.NewWorkspaceApplicationGroupAssociation(ctx, "workspaceremoteapp", &desktopvirtualization.WorkspaceApplicationGroupAssociationArgs{
/// 			WorkspaceId:        workspace.ID(),
/// 			ApplicationGroupId: remoteapp.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.desktopvirtualization.HostPool;
/// import com.pulumi.azure.desktopvirtualization.HostPoolArgs;
/// import com.pulumi.azure.desktopvirtualization.ApplicationGroup;
/// import com.pulumi.azure.desktopvirtualization.ApplicationGroupArgs;
/// import com.pulumi.azure.desktopvirtualization.Workspace;
/// import com.pulumi.azure.desktopvirtualization.WorkspaceArgs;
/// import com.pulumi.azure.desktopvirtualization.WorkspaceApplicationGroupAssociation;
/// import com.pulumi.azure.desktopvirtualization.WorkspaceApplicationGroupAssociationArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("rg-example-virtualdesktop")
///             .location("West Europe")
///             .build());
///
///         var pooledbreadthfirst = new HostPool("pooledbreadthfirst", HostPoolArgs.builder()
///             .name("pooledbreadthfirst")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .type("Pooled")
///             .loadBalancerType("BreadthFirst")
///             .build());
///
///         var remoteapp = new ApplicationGroup("remoteapp", ApplicationGroupArgs.builder()
///             .name("remoteapp")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .type("RemoteApp")
///             .hostPoolId(pooledbreadthfirst.id())
///             .build());
///
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .name("workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var workspaceremoteapp = new WorkspaceApplicationGroupAssociation("workspaceremoteapp", WorkspaceApplicationGroupAssociationArgs.builder()
///             .workspaceId(workspace.id())
///             .applicationGroupId(remoteapp.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: rg-example-virtualdesktop
///       location: West Europe
///   pooledbreadthfirst:
///     type: azure:desktopvirtualization:HostPool
///     properties:
///       name: pooledbreadthfirst
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       type: Pooled
///       loadBalancerType: BreadthFirst
///   remoteapp:
///     type: azure:desktopvirtualization:ApplicationGroup
///     properties:
///       name: remoteapp
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       type: RemoteApp
///       hostPoolId: ${pooledbreadthfirst.id}
///   workspace:
///     type: azure:desktopvirtualization:Workspace
///     properties:
///       name: workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   workspaceremoteapp:
///     type: azure:desktopvirtualization:WorkspaceApplicationGroupAssociation
///     properties:
///       workspaceId: ${workspace.id}
///       applicationGroupId: ${remoteapp.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DesktopVirtualization` - 2024-04-03
///
/// ## Import
///
/// Associations between Virtual Desktop Workspaces and Virtual Desktop Application Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:desktopvirtualization/workspaceApplicationGroupAssociation:WorkspaceApplicationGroupAssociation association1 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myGroup1/providers/Microsoft.DesktopVirtualization/workspaces/myworkspace|/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myGroup1/providers/Microsoft.DesktopVirtualization/applicationGroups/myapplicationgroup"
/// ```
///
/// > **Note:** This ID is specific to this provider - and is of the format `{virtualDesktopWorkspaceID}|{virtualDesktopApplicationGroupID}`.
class WorkspaceApplicationGroupAssociation extends pulumi.CustomResource {
  /// The resource ID for the Virtual Desktop Application Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationGroupId;
  /// The resource ID for the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceApplicationGroupAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceApplicationGroupAssociation]. {@macro pulumi_desktopvirtualization_workspace_application_group_association_workspace_application_group_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceApplicationGroupAssociation(
    String name, {
    WorkspaceApplicationGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/workspaceApplicationGroupAssociation:WorkspaceApplicationGroupAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationGroupId = registerOutput<String>('applicationGroupId');
    this.workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [WorkspaceApplicationGroupAssociation] resource's state with the given [name] and [id].
  static WorkspaceApplicationGroupAssociation get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceApplicationGroupAssociationState? state,
  }) {
    return WorkspaceApplicationGroupAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceApplicationGroupAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/workspaceApplicationGroupAssociation:WorkspaceApplicationGroupAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationGroupId = registerOutput<String>('applicationGroupId');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
