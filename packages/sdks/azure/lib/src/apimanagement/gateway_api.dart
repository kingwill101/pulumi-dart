import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_api_args.dart';
import 'gateway_api_state.dart';

/// Manages a API Management Gateway API.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getService({
///     name: "example-api",
///     resourceGroupName: "example-resources",
/// });
/// const exampleGetApi = Promise.all([example, example]).then(([example, example1]) => azure.apimanagement.getApi({
///     name: "search-api",
///     apiManagementName: example.name,
///     resourceGroupName: example1.resourceGroupName,
///     revision: "2",
/// }));
/// const exampleGetGateway = example.then(example => azure.apimanagement.getGateway({
///     name: "example-gateway",
///     apiManagementId: example.id,
/// }));
/// const exampleGatewayApi = new azure.apimanagement.GatewayApi("example", {
///     gatewayId: exampleGetGateway.then(exampleGetGateway => exampleGetGateway.id),
///     apiId: exampleGetApi.then(exampleGetApi => exampleGetApi.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_service(name="example-api",
///     resource_group_name="example-resources")
/// example_get_api = azure.apimanagement.get_api(name="search-api",
///     api_management_name=example.name,
///     resource_group_name=example.resource_group_name,
///     revision="2")
/// example_get_gateway = azure.apimanagement.get_gateway(name="example-gateway",
///     api_management_id=example.id)
/// example_gateway_api = azure.apimanagement.GatewayApi("example",
///     gateway_id=example_get_gateway.id,
///     api_id=example_get_api.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ApiManagement.GetService.Invoke(new()
///     {
///         Name = "example-api",
///         ResourceGroupName = "example-resources",
///     });
///
///     var exampleGetApi = Azure.ApiManagement.GetApi.Invoke(new()
///     {
///         Name = "search-api",
///         ApiManagementName = example.Apply(getServiceResult => getServiceResult.Name),
///         ResourceGroupName = example.Apply(getServiceResult => getServiceResult.ResourceGroupName),
///         Revision = "2",
///     });
///
///     var exampleGetGateway = Azure.ApiManagement.GetGateway.Invoke(new()
///     {
///         Name = "example-gateway",
///         ApiManagementId = example.Apply(getServiceResult => getServiceResult.Id),
///     });
///
///     var exampleGatewayApi = new Azure.ApiManagement.GatewayApi("example", new()
///     {
///         GatewayId = exampleGetGateway.Apply(getGatewayResult => getGatewayResult.Id),
///         ApiId = exampleGetApi.Apply(getApiResult => getApiResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := apimanagement.LookupService(ctx, &apimanagement.LookupServiceArgs{
/// 			Name:              "example-api",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetApi, err := apimanagement.LookupApi(ctx, &apimanagement.LookupApiArgs{
/// 			Name:              "search-api",
/// 			ApiManagementName: example.Name,
/// 			ResourceGroupName: example.ResourceGroupName,
/// 			Revision:          "2",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetGateway, err := apimanagement.LookupGateway(ctx, &apimanagement.LookupGatewayArgs{
/// 			Name:            "example-gateway",
/// 			ApiManagementId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewGatewayApi(ctx, "example", &apimanagement.GatewayApiArgs{
/// 			GatewayId: pulumi.String(exampleGetGateway.Id),
/// 			ApiId:     pulumi.String(exampleGetApi.Id),
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
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetServiceArgs;
/// import com.pulumi.azure.apimanagement.inputs.GetApiArgs;
/// import com.pulumi.azure.apimanagement.inputs.GetGatewayArgs;
/// import com.pulumi.azure.apimanagement.GatewayApi;
/// import com.pulumi.azure.apimanagement.GatewayApiArgs;
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
///         final var example = ApimanagementFunctions.getService(GetServiceArgs.builder()
///             .name("example-api")
///             .resourceGroupName("example-resources")
///             .build());
///
///         final var exampleGetApi = ApimanagementFunctions.getApi(GetApiArgs.builder()
///             .name("search-api")
///             .apiManagementName(example.name())
///             .resourceGroupName(example.resourceGroupName())
///             .revision("2")
///             .build());
///
///         final var exampleGetGateway = ApimanagementFunctions.getGateway(GetGatewayArgs.builder()
///             .name("example-gateway")
///             .apiManagementId(example.id())
///             .build());
///
///         var exampleGatewayApi = new GatewayApi("exampleGatewayApi", GatewayApiArgs.builder()
///             .gatewayId(exampleGetGateway.id())
///             .apiId(exampleGetApi.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleGatewayApi:
///     type: azure:apimanagement:GatewayApi
///     name: example
///     properties:
///       gatewayId: ${exampleGetGateway.id}
///       apiId: ${exampleGetApi.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getService
///       arguments:
///         name: example-api
///         resourceGroupName: example-resources
///   exampleGetApi:
///     fn::invoke:
///       function: azure:apimanagement:getApi
///       arguments:
///         name: search-api
///         apiManagementName: ${example.name}
///         resourceGroupName: ${example.resourceGroupName}
///         revision: '2'
///   exampleGetGateway:
///     fn::invoke:
///       function: azure:apimanagement:getGateway
///       arguments:
///         name: example-gateway
///         apiManagementId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Gateway APIs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/gatewayApi:GatewayApi example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.ApiManagement/service/service1/gateways/gateway1/apis/api1
/// ```
class GatewayApi extends pulumi.CustomResource {
  /// The Identifier of the API Management API within the API Management Service. Changing this forces a new API Management Gateway API to be created.
  late final pulumi.Output<String> apiId;
  /// The Identifier for the API Management Gateway. Changing this forces a new API Management Gateway API to be created.
  late final pulumi.Output<String> gatewayId;

  /// Creates a new [GatewayApi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayApi]. {@macro pulumi_apimanagement_gateway_api_gateway_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayApi(
    String name, {
    GatewayApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/gatewayApi:GatewayApi',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.gatewayId = registerOutput<String>('gatewayId');
  }

  /// Gets an existing [GatewayApi] resource's state with the given [name] and [id].
  static GatewayApi get(
    String name,
    pulumi.Input<String> id, {
    GatewayApiState? state,
  }) {
    return GatewayApi._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GatewayApi._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/gatewayApi:GatewayApi',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.gatewayId = registerOutput<String>('gatewayId');
  }
}
