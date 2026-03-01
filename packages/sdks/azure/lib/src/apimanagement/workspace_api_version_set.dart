import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_api_version_set_args.dart';
import 'workspace_api_version_set_state.dart';

/// Manages an API Version Set within an API Management Workspace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "Example Publisher",
///     publisherEmail: "publisher@example.com",
///     skuName: "Premium_1",
/// });
/// const exampleWorkspace = new azure.apimanagement.Workspace("example", {
///     name: "example-workspace",
///     apiManagementId: exampleService.id,
///     displayName: "Example Workspace",
///     description: "Example workspace for development",
/// });
/// const exampleWorkspaceApiVersionSet = new azure.apimanagement.WorkspaceApiVersionSet("example", {
///     name: "example-version-set",
///     apiManagementWorkspaceId: exampleWorkspace.id,
///     displayName: "Example API Version Set",
///     versioningScheme: "Segment",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="Example Publisher",
///     publisher_email="publisher@example.com",
///     sku_name="Premium_1")
/// example_workspace = azure.apimanagement.Workspace("example",
///     name="example-workspace",
///     api_management_id=example_service.id,
///     display_name="Example Workspace",
///     description="Example workspace for development")
/// example_workspace_api_version_set = azure.apimanagement.WorkspaceApiVersionSet("example",
///     name="example-version-set",
///     api_management_workspace_id=example_workspace.id,
///     display_name="Example API Version Set",
///     versioning_scheme="Segment")
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "Example Publisher",
///         PublisherEmail = "publisher@example.com",
///         SkuName = "Premium_1",
///     });
///
///     var exampleWorkspace = new Azure.ApiManagement.Workspace("example", new()
///     {
///         Name = "example-workspace",
///         ApiManagementId = exampleService.Id,
///         DisplayName = "Example Workspace",
///         Description = "Example workspace for development",
///     });
///
///     var exampleWorkspaceApiVersionSet = new Azure.ApiManagement.WorkspaceApiVersionSet("example", new()
///     {
///         Name = "example-version-set",
///         ApiManagementWorkspaceId = exampleWorkspace.Id,
///         DisplayName = "Example API Version Set",
///         VersioningScheme = "Segment",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("Example Publisher"),
/// 			PublisherEmail:    pulumi.String("publisher@example.com"),
/// 			SkuName:           pulumi.String("Premium_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := apimanagement.NewWorkspace(ctx, "example", &apimanagement.WorkspaceArgs{
/// 			Name:            pulumi.String("example-workspace"),
/// 			ApiManagementId: exampleService.ID(),
/// 			DisplayName:     pulumi.String("Example Workspace"),
/// 			Description:     pulumi.String("Example workspace for development"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewWorkspaceApiVersionSet(ctx, "example", &apimanagement.WorkspaceApiVersionSetArgs{
/// 			Name:                     pulumi.String("example-version-set"),
/// 			ApiManagementWorkspaceId: exampleWorkspace.ID(),
/// 			DisplayName:              pulumi.String("Example API Version Set"),
/// 			VersioningScheme:         pulumi.String("Segment"),
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
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.Workspace;
/// import com.pulumi.azure.apimanagement.WorkspaceArgs;
/// import com.pulumi.azure.apimanagement.WorkspaceApiVersionSet;
/// import com.pulumi.azure.apimanagement.WorkspaceApiVersionSetArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("Example Publisher")
///             .publisherEmail("publisher@example.com")
///             .skuName("Premium_1")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example-workspace")
///             .apiManagementId(exampleService.id())
///             .displayName("Example Workspace")
///             .description("Example workspace for development")
///             .build());
///
///         var exampleWorkspaceApiVersionSet = new WorkspaceApiVersionSet("exampleWorkspaceApiVersionSet", WorkspaceApiVersionSetArgs.builder()
///             .name("example-version-set")
///             .apiManagementWorkspaceId(exampleWorkspace.id())
///             .displayName("Example API Version Set")
///             .versioningScheme("Segment")
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
///       name: example-resources
///       location: West Europe
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: Example Publisher
///       publisherEmail: publisher@example.com
///       skuName: Premium_1
///   exampleWorkspace:
///     type: azure:apimanagement:Workspace
///     name: example
///     properties:
///       name: example-workspace
///       apiManagementId: ${exampleService.id}
///       displayName: Example Workspace
///       description: Example workspace for development
///   exampleWorkspaceApiVersionSet:
///     type: azure:apimanagement:WorkspaceApiVersionSet
///     name: example
///     properties:
///       name: example-version-set
///       apiManagementWorkspaceId: ${exampleWorkspace.id}
///       displayName: Example API Version Set
///       versioningScheme: Segment
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2024-05-01
///
/// ## Import
///
/// API Management Workspace API Version Sets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/workspaceApiVersionSet:WorkspaceApiVersionSet example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/workspaces/workspace1/apiVersionSets/set1
/// ```
class WorkspaceApiVersionSet extends pulumi.CustomResource {
  /// Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementWorkspaceId;
  /// Specifies the description of the API Management Workspace API Version Set.
  late final pulumi.Output<String?> description;
  /// Specifies the display name of the API Management Workspace API Version Set.
  late final pulumi.Output<String> displayName;
  /// Specifies the name of the API Management Workspace API Version Set. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the header to read from inbound requests to determine the API version.
  late final pulumi.Output<String?> versionHeaderName;
  /// Specifies the name of the query string parameter to read from inbound requests to determine the API version.
  late final pulumi.Output<String?> versionQueryName;
  /// Specifies where in a request that the API Version should be read from. Possible values are `Header`, `Query` and `Segment`.
  late final pulumi.Output<String> versioningScheme;

  /// Creates a new [WorkspaceApiVersionSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceApiVersionSet]. {@macro pulumi_apimanagement_workspace_api_version_set_workspace_api_version_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceApiVersionSet(
    String name, {
    WorkspaceApiVersionSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/workspaceApiVersionSet:WorkspaceApiVersionSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementWorkspaceId = registerOutput<String>('apiManagementWorkspaceId');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.versionHeaderName = registerOutput<String?>('versionHeaderName');
    this.versionQueryName = registerOutput<String?>('versionQueryName');
    this.versioningScheme = registerOutput<String>('versioningScheme');
  }

  /// Gets an existing [WorkspaceApiVersionSet] resource's state with the given [name] and [id].
  static WorkspaceApiVersionSet get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceApiVersionSetState? state,
  }) {
    return WorkspaceApiVersionSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceApiVersionSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/workspaceApiVersionSet:WorkspaceApiVersionSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementWorkspaceId = registerOutput<String>('apiManagementWorkspaceId');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.versionHeaderName = registerOutput<String?>('versionHeaderName');
    this.versionQueryName = registerOutput<String?>('versionQueryName');
    this.versioningScheme = registerOutput<String>('versioningScheme');
  }
}
