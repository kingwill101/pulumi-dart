import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_named_value_args.dart';
import 'workspace_named_value_state.dart';
import 'workspace_named_value_value_from_key_vault.dart';

/// Manages an API Management Workspace Named Value.
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
///     publisherName: "My Company",
///     publisherEmail: "company@terraform.io",
///     skuName: "Premium_1",
/// });
/// const exampleWorkspace = new azure.apimanagement.Workspace("example", {
///     name: "example-workspace",
///     apiManagementId: exampleService.id,
///     displayName: "ExampleWorkspace",
/// });
/// const exampleWorkspaceNamedValue = new azure.apimanagement.WorkspaceNamedValue("example", {
///     name: "example-named-value",
///     apiManagementWorkspaceId: exampleWorkspace.id,
///     displayName: "ExampleProperty",
///     value: "Example Value",
///     tags: [
///         "tag1",
///         "tag2",
///         "tag3",
///     ],
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
///     publisher_name="My Company",
///     publisher_email="company@terraform.io",
///     sku_name="Premium_1")
/// example_workspace = azure.apimanagement.Workspace("example",
///     name="example-workspace",
///     api_management_id=example_service.id,
///     display_name="ExampleWorkspace")
/// example_workspace_named_value = azure.apimanagement.WorkspaceNamedValue("example",
///     name="example-named-value",
///     api_management_workspace_id=example_workspace.id,
///     display_name="ExampleProperty",
///     value="Example Value",
///     tags=[
///         "tag1",
///         "tag2",
///         "tag3",
///     ])
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
///         PublisherName = "My Company",
///         PublisherEmail = "company@terraform.io",
///         SkuName = "Premium_1",
///     });
///
///     var exampleWorkspace = new Azure.ApiManagement.Workspace("example", new()
///     {
///         Name = "example-workspace",
///         ApiManagementId = exampleService.Id,
///         DisplayName = "ExampleWorkspace",
///     });
///
///     var exampleWorkspaceNamedValue = new Azure.ApiManagement.WorkspaceNamedValue("example", new()
///     {
///         Name = "example-named-value",
///         ApiManagementWorkspaceId = exampleWorkspace.Id,
///         DisplayName = "ExampleProperty",
///         Value = "Example Value",
///         Tags = new[]
///         {
///             "tag1",
///             "tag2",
///             "tag3",
///         },
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
/// 			PublisherName:     pulumi.String("My Company"),
/// 			PublisherEmail:    pulumi.String("company@terraform.io"),
/// 			SkuName:           pulumi.String("Premium_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := apimanagement.NewWorkspace(ctx, "example", &apimanagement.WorkspaceArgs{
/// 			Name:            pulumi.String("example-workspace"),
/// 			ApiManagementId: exampleService.ID(),
/// 			DisplayName:     pulumi.String("ExampleWorkspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewWorkspaceNamedValue(ctx, "example", &apimanagement.WorkspaceNamedValueArgs{
/// 			Name:                     pulumi.String("example-named-value"),
/// 			ApiManagementWorkspaceId: exampleWorkspace.ID(),
/// 			DisplayName:              pulumi.String("ExampleProperty"),
/// 			Value:                    pulumi.String("Example Value"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("tag1"),
/// 				pulumi.String("tag2"),
/// 				pulumi.String("tag3"),
/// 			},
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
/// import com.pulumi.azure.apimanagement.WorkspaceNamedValue;
/// import com.pulumi.azure.apimanagement.WorkspaceNamedValueArgs;
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
///             .publisherName("My Company")
///             .publisherEmail("company@terraform.io")
///             .skuName("Premium_1")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example-workspace")
///             .apiManagementId(exampleService.id())
///             .displayName("ExampleWorkspace")
///             .build());
///
///         var exampleWorkspaceNamedValue = new WorkspaceNamedValue("exampleWorkspaceNamedValue", WorkspaceNamedValueArgs.builder()
///             .name("example-named-value")
///             .apiManagementWorkspaceId(exampleWorkspace.id())
///             .displayName("ExampleProperty")
///             .value("Example Value")
///             .tags(
///                 "tag1",
///                 "tag2",
///                 "tag3")
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
///       publisherName: My Company
///       publisherEmail: company@terraform.io
///       skuName: Premium_1
///   exampleWorkspace:
///     type: azure:apimanagement:Workspace
///     name: example
///     properties:
///       name: example-workspace
///       apiManagementId: ${exampleService.id}
///       displayName: ExampleWorkspace
///   exampleWorkspaceNamedValue:
///     type: azure:apimanagement:WorkspaceNamedValue
///     name: example
///     properties:
///       name: example-named-value
///       apiManagementWorkspaceId: ${exampleWorkspace.id}
///       displayName: ExampleProperty
///       value: Example Value
///       tags:
///         - tag1
///         - tag2
///         - tag3
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
/// API Management Workspace Named Values can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/workspaceNamedValue:WorkspaceNamedValue example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/workspaces/workspace1/namedValues/namedValue1
/// ```
class WorkspaceNamedValue extends pulumi.CustomResource {
  /// The ID of the API Management Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementWorkspaceId;
  /// The display name of this API Management Workspace Named Value.
  late final pulumi.Output<String> displayName;
  /// The name of the API Management Workspace Named Value. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies whether the API Management Workspace Named Value is secret. Defaults to `false`.
  ///
  /// > **Note:** Setting the field `secret` to `true` does not make this field sensitive in Terraform, instead it marks the value as secret and encrypts the value in Azure.
  late final pulumi.Output<bool?> secret;
  /// A list of tags to be applied to the API Management Workspace Named Value.
  late final pulumi.Output<List<String>?> tags;
  /// The value of this API Management Workspace Named Value.
  ///
  /// > **Note:** Exactly one of `value` or `value_from_key_vault` must be specified.
  late final pulumi.Output<String?> value;
  /// A `value_from_key_vault` block as defined below.
  ///
  /// > **Note:** Exactly one of `value` or `value_from_key_vault` must be specified. If `value_from_key_vault` is specified, `secret` must also be set to `true`.
  late final pulumi.Output<WorkspaceNamedValueValueFromKeyVault?> valueFromKeyVault;

  /// Creates a new [WorkspaceNamedValue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceNamedValue]. {@macro pulumi_apimanagement_workspace_named_value_workspace_named_value_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceNamedValue(
    String name, {
    WorkspaceNamedValueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/workspaceNamedValue:WorkspaceNamedValue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementWorkspaceId = registerOutput<String>('apiManagementWorkspaceId');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.secret = registerOutput<bool?>('secret');
    this.tags = registerOutput<List<String>?>('tags');
    this.value = registerOutput<String?>('value');
    this.valueFromKeyVault = registerOutput<WorkspaceNamedValueValueFromKeyVault?>('valueFromKeyVault');
  }

  /// Gets an existing [WorkspaceNamedValue] resource's state with the given [name] and [id].
  static WorkspaceNamedValue get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceNamedValueState? state,
  }) {
    return WorkspaceNamedValue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceNamedValue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/workspaceNamedValue:WorkspaceNamedValue',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementWorkspaceId = registerOutput<String>('apiManagementWorkspaceId');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.secret = registerOutput<bool?>('secret');
    this.tags = registerOutput<List<String>?>('tags');
    this.value = registerOutput<String?>('value');
    this.valueFromKeyVault = registerOutput<WorkspaceNamedValueValueFromKeyVault?>('valueFromKeyVault');
  }
}
