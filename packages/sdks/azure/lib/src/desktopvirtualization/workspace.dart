import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_args.dart';
import 'workspace_state.dart';

/// Manages a Virtual Desktop Workspace.
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
/// const workspace = new azure.desktopvirtualization.Workspace("workspace", {
///     name: "workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     friendlyName: "FriendlyName",
///     description: "A description of my workspace",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example-virtualdesktop",
///     location="West Europe")
/// workspace = azure.desktopvirtualization.Workspace("workspace",
///     name="workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     friendly_name="FriendlyName",
///     description="A description of my workspace")
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
///     var workspace = new Azure.DesktopVirtualization.Workspace("workspace", new()
///     {
///         Name = "workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         FriendlyName = "FriendlyName",
///         Description = "A description of my workspace",
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
/// 		_, err = desktopvirtualization.NewWorkspace(ctx, "workspace", &desktopvirtualization.WorkspaceArgs{
/// 			Name:              pulumi.String("workspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			FriendlyName:      pulumi.String("FriendlyName"),
/// 			Description:       pulumi.String("A description of my workspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "rg-example-virtualdesktop"
///   location = "West Europe"
/// }
/// resource "azure_desktopvirtualization_workspace" "workspace" {
///   name                = "workspace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   friendly_name       = "FriendlyName"
///   description         = "A description of my workspace"
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
/// import com.pulumi.azure.desktopvirtualization.Workspace;
/// import com.pulumi.azure.desktopvirtualization.WorkspaceArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("rg-example-virtualdesktop")
///             .location("West Europe")
///             .build());
///
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .name("workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .friendlyName("FriendlyName")
///             .description("A description of my workspace")
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
///   workspace:
///     type: azure:desktopvirtualization:Workspace
///     properties:
///       name: workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       friendlyName: FriendlyName
///       description: A description of my workspace
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DesktopVirtualization` - 2025-10-10
///
/// ## Import
///
/// Virtual Desktop Workspaces can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:desktopvirtualization/workspace:Workspace example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myGroup1/providers/Microsoft.DesktopVirtualization/workspaces/myworkspace
/// ```
class Workspace extends pulumi.CustomResource {
  /// A description for the Virtual Desktop Workspace.
  late final pulumi.Output<String?> description;
  /// A friendly name for the Virtual Desktop Workspace.
  late final pulumi.Output<String?> friendlyName;
  /// The location/region where the Virtual Desktop Workspace is located. Changing the location/region forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Whether public network access is allowed for this Virtual Desktop Workspace. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_desktopvirtualization_workspace_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String?>('friendlyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Workspace] resource's state with the given [name] and [id].
  static Workspace get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Workspace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Workspace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String?>('friendlyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Workspace] resource.
  Workspace.reference(String urn)
    : super(
        'azure:desktopvirtualization/workspace:Workspace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String?>('friendlyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
