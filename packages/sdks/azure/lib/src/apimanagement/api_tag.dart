import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_tag_args.dart';
import 'api_tag_state.dart';

/// Manages the Assignment of an API Management API Tag to an API.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = azure.apimanagement.getServiceOutput({
///     name: "example-apim",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleApi = new azure.apimanagement.Api("example", {
///     name: "example-api",
///     resourceGroupName: exampleResourceGroup.name,
///     apiManagementName: example.apply(example => example.name),
///     revision: "1",
/// });
/// const exampleTag = new azure.apimanagement.Tag("example", {
///     apiManagementId: example.apply(example => example.id),
///     name: "example-tag",
/// });
/// const exampleApiTag = new azure.apimanagement.ApiTag("example", {
///     apiId: exampleApi.id,
///     name: exampleTag.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = azure.apimanagement.get_service_output(name="example-apim",
///     resource_group_name=example_resource_group.name)
/// example_api = azure.apimanagement.Api("example",
///     name="example-api",
///     resource_group_name=example_resource_group.name,
///     api_management_name=example.name,
///     revision="1")
/// example_tag = azure.apimanagement.Tag("example",
///     api_management_id=example.id,
///     name="example-tag")
/// example_api_tag = azure.apimanagement.ApiTag("example",
///     api_id=example_api.id,
///     name=example_tag.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = Azure.ApiManagement.GetService.Invoke(new()
///     {
///         Name = "example-apim",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleApi = new Azure.ApiManagement.Api("example", new()
///     {
///         Name = "example-api",
///         ResourceGroupName = exampleResourceGroup.Name,
///         ApiManagementName = example.Apply(getServiceResult => getServiceResult.Name),
///         Revision = "1",
///     });
///
///     var exampleTag = new Azure.ApiManagement.Tag("example", new()
///     {
///         ApiManagementId = example.Apply(getServiceResult => getServiceResult.Id),
///         Name = "example-tag",
///     });
///
///     var exampleApiTag = new Azure.ApiManagement.ApiTag("example", new()
///     {
///         ApiId = exampleApi.Id,
///         Name = exampleTag.Name,
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
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := apimanagement.LookupServiceOutput(ctx, apimanagement.GetServiceOutputArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		exampleApi, err := apimanagement.NewApi(ctx, "example", &apimanagement.ApiArgs{
/// 			Name:              pulumi.String("example-api"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			ApiManagementName: pulumi.String(example.ApplyT(func(example apimanagement.GetServiceResult) (*string, error) {
/// 				return &example.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Revision: pulumi.String("1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTag, err := apimanagement.NewTag(ctx, "example", &apimanagement.TagArgs{
/// 			ApiManagementId: pulumi.String(example.ApplyT(func(example apimanagement.GetServiceResult) (*string, error) {
/// 				return &example.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Name: pulumi.String("example-tag"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewApiTag(ctx, "example", &apimanagement.ApiTagArgs{
/// 			ApiId: exampleApi.ID(),
/// 			Name:  exampleTag.Name,
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
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetServiceArgs;
/// import com.pulumi.azure.apimanagement.Api;
/// import com.pulumi.azure.apimanagement.ApiArgs;
/// import com.pulumi.azure.apimanagement.Tag;
/// import com.pulumi.azure.apimanagement.TagArgs;
/// import com.pulumi.azure.apimanagement.ApiTag;
/// import com.pulumi.azure.apimanagement.ApiTagArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var example = ApimanagementFunctions.getService(GetServiceArgs.builder()
///             .name("example-apim")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleApi = new Api("exampleApi", ApiArgs.builder()
///             .name("example-api")
///             .resourceGroupName(exampleResourceGroup.name())
///             .apiManagementName(example.applyValue(_example -> _example.name()))
///             .revision("1")
///             .build());
///
///         var exampleTag = new Tag("exampleTag", TagArgs.builder()
///             .apiManagementId(example.applyValue(_example -> _example.id()))
///             .name("example-tag")
///             .build());
///
///         var exampleApiTag = new ApiTag("exampleApiTag", ApiTagArgs.builder()
///             .apiId(exampleApi.id())
///             .name(exampleTag.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleApi:
///     type: azure:apimanagement:Api
///     name: example
///     properties:
///       name: example-api
///       resourceGroupName: ${exampleResourceGroup.name}
///       apiManagementName: ${example.name}
///       revision: '1'
///   exampleTag:
///     type: azure:apimanagement:Tag
///     name: example
///     properties:
///       apiManagementId: ${example.id}
///       name: example-tag
///   exampleApiTag:
///     type: azure:apimanagement:ApiTag
///     name: example
///     properties:
///       apiId: ${exampleApi.id}
///       name: ${exampleTag.name}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getService
///       arguments:
///         name: example-apim
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management API Tags can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/apiTag:ApiTag example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/apis/api1/tags/tag1
/// ```
class ApiTag extends pulumi.CustomResource {
  /// The ID of the API Management API. Changing this forces a new API Management API Tag to be created.
  late final pulumi.Output<String> apiId;

  /// The name of the tag. It must be known in the API Management instance. Changing this forces a new API Management API Tag to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [ApiTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiTag]. {@macro pulumi_apimanagement_api_tag_api_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiTag(String name, {ApiTagArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:apimanagement/apiTag:ApiTag',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    apiId = registerOutput<String>('apiId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [ApiTag] resource's state with the given [name] and [id].
  static ApiTag get(
    String name,
    pulumi.Input<String> id, {
    ApiTagState? state,
  }) {
    return ApiTag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApiTag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:apimanagement/apiTag:ApiTag',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiId = registerOutput<String>('apiId');
    this.name = registerOutput<String>('name');
  }
}
