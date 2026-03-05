import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_policy_fragment_args.dart';
import 'workspace_policy_fragment_state.dart';

/// Manages an API Management Workspace Policy Fragment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "pub1",
///     publisherEmail: "pub1@email.com",
///     skuName: "Premium_1",
/// });
/// const exampleWorkspace = new azure.apimanagement.Workspace("example", {
///     name: "example-workspace",
///     apiManagementId: exampleService.id,
///     displayName: "Example Workspace",
///     description: "Example API Management Workspace",
/// });
/// const exampleWorkspacePolicyFragment = new azure.apimanagement.WorkspacePolicyFragment("example", {
///     name: "example-policy-fragment",
///     apiManagementWorkspaceId: exampleWorkspace.id,
///     xmlFormat: "xml",
///     xmlContent: std.file({
///         input: "policy-fragment-1.xml",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="pub1",
///     publisher_email="pub1@email.com",
///     sku_name="Premium_1")
/// example_workspace = azure.apimanagement.Workspace("example",
///     name="example-workspace",
///     api_management_id=example_service.id,
///     display_name="Example Workspace",
///     description="Example API Management Workspace")
/// example_workspace_policy_fragment = azure.apimanagement.WorkspacePolicyFragment("example",
///     name="example-policy-fragment",
///     api_management_workspace_id=example_workspace.id,
///     xml_format="xml",
///     xml_content=std.file(input="policy-fragment-1.xml").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
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
///         PublisherName = "pub1",
///         PublisherEmail = "pub1@email.com",
///         SkuName = "Premium_1",
///     });
///
///     var exampleWorkspace = new Azure.ApiManagement.Workspace("example", new()
///     {
///         Name = "example-workspace",
///         ApiManagementId = exampleService.Id,
///         DisplayName = "Example Workspace",
///         Description = "Example API Management Workspace",
///     });
///
///     var exampleWorkspacePolicyFragment = new Azure.ApiManagement.WorkspacePolicyFragment("example", new()
///     {
///         Name = "example-policy-fragment",
///         ApiManagementWorkspaceId = exampleWorkspace.Id,
///         XmlFormat = "xml",
///         XmlContent = Std.File.Invoke(new()
///         {
///             Input = "policy-fragment-1.xml",
///         }).Apply(invoke => invoke.Result),
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 			PublisherName:     pulumi.String("pub1"),
/// 			PublisherEmail:    pulumi.String("pub1@email.com"),
/// 			SkuName:           pulumi.String("Premium_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := apimanagement.NewWorkspace(ctx, "example", &apimanagement.WorkspaceArgs{
/// 			Name:            pulumi.String("example-workspace"),
/// 			ApiManagementId: exampleService.ID(),
/// 			DisplayName:     pulumi.String("Example Workspace"),
/// 			Description:     pulumi.String("Example API Management Workspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "policy-fragment-1.xml",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewWorkspacePolicyFragment(ctx, "example", &apimanagement.WorkspacePolicyFragmentArgs{
/// 			Name:                     pulumi.String("example-policy-fragment"),
/// 			ApiManagementWorkspaceId: exampleWorkspace.ID(),
/// 			XmlFormat:                pulumi.String("xml"),
/// 			XmlContent:               pulumi.String(invokeFile.Result),
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
/// import com.pulumi.azure.apimanagement.WorkspacePolicyFragment;
/// import com.pulumi.azure.apimanagement.WorkspacePolicyFragmentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///             .publisherName("pub1")
///             .publisherEmail("pub1@email.com")
///             .skuName("Premium_1")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example-workspace")
///             .apiManagementId(exampleService.id())
///             .displayName("Example Workspace")
///             .description("Example API Management Workspace")
///             .build());
///
///         var exampleWorkspacePolicyFragment = new WorkspacePolicyFragment("exampleWorkspacePolicyFragment", WorkspacePolicyFragmentArgs.builder()
///             .name("example-policy-fragment")
///             .apiManagementWorkspaceId(exampleWorkspace.id())
///             .xmlFormat("xml")
///             .xmlContent(StdFunctions.file(FileArgs.builder()
///                 .input("policy-fragment-1.xml")
///                 .build()).result())
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
///       publisherName: pub1
///       publisherEmail: pub1@email.com
///       skuName: Premium_1
///   exampleWorkspace:
///     type: azure:apimanagement:Workspace
///     name: example
///     properties:
///       name: example-workspace
///       apiManagementId: ${exampleService.id}
///       displayName: Example Workspace
///       description: Example API Management Workspace
///   exampleWorkspacePolicyFragment:
///     type: azure:apimanagement:WorkspacePolicyFragment
///     name: example
///     properties:
///       name: example-policy-fragment
///       apiManagementWorkspaceId: ${exampleWorkspace.id}
///       xmlFormat: xml
///       xmlContent:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: policy-fragment-1.xml
///           return: result
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2024-05-01
///
/// ## Import
///
/// API Management Workspace Policy Fragments can be imported using the `resource id`, e.g.
///
/// &gt; **Note:** Due to the behaviour of the API, API Management Workspace Policy Fragments can only be imported as `xml`, but can be updated to the desired format after importing.
///
/// ```sh
/// $ pulumi import azure:apimanagement/workspacePolicyFragment:WorkspacePolicyFragment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/instance1/workspaces/workspace1/policyFragments/policyFragment1
/// ```
class WorkspacePolicyFragment extends pulumi.CustomResource {
  /// Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementWorkspaceId;
  /// Specifies the description for the API Management Workspace Policy Fragment.
  late final pulumi.Output<String?> description;
  /// Specifies the name of the API Management Workspace Policy Fragment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the XML content of the API Management Workspace Policy Fragment.
  late final pulumi.Output<String> xmlContent;
  /// Specifies the XML format of the API Management Workspace Policy Fragment. Possible values are `xml` or `rawxml`. Defaults to `xml`.
  late final pulumi.Output<String?> xmlFormat;

  /// Creates a new [WorkspacePolicyFragment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspacePolicyFragment]. {@macro pulumi_apimanagement_workspace_policy_fragment_workspace_policy_fragment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspacePolicyFragment(
    String name, {
    WorkspacePolicyFragmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/workspacePolicyFragment:WorkspacePolicyFragment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementWorkspaceId = registerOutput<String>('apiManagementWorkspaceId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    xmlContent = registerOutput<String>('xmlContent');
    xmlFormat = registerOutput<String?>('xmlFormat');
  }

  /// Gets an existing [WorkspacePolicyFragment] resource's state with the given [name] and [id].
  static WorkspacePolicyFragment get(
    String name,
    pulumi.Input<String> id, {
    WorkspacePolicyFragmentState? state,
  }) {
    return WorkspacePolicyFragment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspacePolicyFragment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/workspacePolicyFragment:WorkspacePolicyFragment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementWorkspaceId = registerOutput<String>('apiManagementWorkspaceId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    xmlContent = registerOutput<String>('xmlContent');
    xmlFormat = registerOutput<String?>('xmlFormat');
  }
}
