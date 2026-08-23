import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_args.dart';
import 'get_api_result.dart';
import 'get_api_version_set_args.dart';
import 'get_api_version_set_result.dart';
import 'get_gateway_args.dart';
import 'get_gateway_host_name_configuration_args.dart';
import 'get_gateway_host_name_configuration_result.dart';
import 'get_gateway_result.dart';
import 'get_group_args.dart';
import 'get_group_result.dart';
import 'get_product_args.dart';
import 'get_product_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_subscription_args.dart';
import 'get_subscription_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';

/// Use this data source to access information about an existing API Management API.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getApi({
///     name: "search-api",
///     apiManagementName: "search-api-management",
///     resourceGroupName: "search-service",
///     revision: "2",
/// });
/// export const apiManagementApiId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_api(name="search-api",
///     api_management_name="search-api-management",
///     resource_group_name="search-service",
///     revision="2")
/// pulumi.export("apiManagementApiId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ApiManagement.GetApi.Invoke(new()
///     {
///         Name = "search-api",
///         ApiManagementName = "search-api-management",
///         ResourceGroupName = "search-service",
///         Revision = "2",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["apiManagementApiId"] = example.Apply(getApiResult => getApiResult.Id),
///     };
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
/// 		example, err := apimanagement.LookupApi(ctx, &apimanagement.LookupApiArgs{
/// 			Name:              "search-api",
/// 			ApiManagementName: "search-api-management",
/// 			ResourceGroupName: "search-service",
/// 			Revision:          "2",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("apiManagementApiId", example.Id)
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
/// data "azure_apimanagement_getapi" "example" {
///   name                = "search-api"
///   api_management_name = "search-api-management"
///   resource_group_name = "search-service"
///   revision            = "2"
/// }
///
/// output "apiManagementApiId" {
///   value = data.azure_apimanagement_getapi.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetApiArgs;
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
///         final var example = ApimanagementFunctions.getApi(GetApiArgs.builder()
///             .name("search-api")
///             .apiManagementName("search-api-management")
///             .resourceGroupName("search-service")
///             .revision("2")
///             .build());
///
///         ctx.export("apiManagementApiId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getApi
///       arguments:
///         name: search-api
///         apiManagementName: search-api-management
///         resourceGroupName: search-service
///         revision: '2'
/// outputs:
///   apiManagementApiId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_get_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiResult> getApi(
  GetApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:apimanagement/getApi:getApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiResult.fromMap(result);
}

/// Uses this data source to access information about an API Version Set within an API Management Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getApiVersionSet({
///     resourceGroupName: "example-resources",
///     apiManagementName: "example-api",
///     name: "example-api-version-set",
/// });
/// export const apiManagementApiVersionSetId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_api_version_set(resource_group_name="example-resources",
///     api_management_name="example-api",
///     name="example-api-version-set")
/// pulumi.export("apiManagementApiVersionSetId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ApiManagement.GetApiVersionSet.Invoke(new()
///     {
///         ResourceGroupName = "example-resources",
///         ApiManagementName = "example-api",
///         Name = "example-api-version-set",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["apiManagementApiVersionSetId"] = example.Apply(getApiVersionSetResult => getApiVersionSetResult.Id),
///     };
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
/// 		example, err := apimanagement.LookupApiVersionSet(ctx, &apimanagement.LookupApiVersionSetArgs{
/// 			ResourceGroupName: "example-resources",
/// 			ApiManagementName: "example-api",
/// 			Name:              "example-api-version-set",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("apiManagementApiVersionSetId", example.Id)
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
/// data "azure_apimanagement_getapiversionset" "example" {
///   resource_group_name = "example-resources"
///   api_management_name = "example-api"
///   name                = "example-api-version-set"
/// }
///
/// output "apiManagementApiVersionSetId" {
///   value = data.azure_apimanagement_getapiversionset.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetApiVersionSetArgs;
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
///         final var example = ApimanagementFunctions.getApiVersionSet(GetApiVersionSetArgs.builder()
///             .resourceGroupName("example-resources")
///             .apiManagementName("example-api")
///             .name("example-api-version-set")
///             .build());
///
///         ctx.export("apiManagementApiVersionSetId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getApiVersionSet
///       arguments:
///         resourceGroupName: example-resources
///         apiManagementName: example-api
///         name: example-api-version-set
/// outputs:
///   apiManagementApiVersionSetId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_api_version_set_get_api_version_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiVersionSetResult> getApiVersionSet(
  GetApiVersionSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:apimanagement/getApiVersionSet:getApiVersionSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiVersionSetResult.fromMap(result);
}

/// Use this data source to access information about an existing API Management Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getService({
///     name: "example-apim",
///     resourceGroupName: "example-rg",
/// });
/// const exampleGetGateway = example.then(example => azure.apimanagement.getGateway({
///     name: "example-api-gateway",
///     apiManagementId: example.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_service(name="example-apim",
///     resource_group_name="example-rg")
/// example_get_gateway = azure.apimanagement.get_gateway(name="example-api-gateway",
///     api_management_id=example.id)
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
///         Name = "example-apim",
///         ResourceGroupName = "example-rg",
///     });
///
///     var exampleGetGateway = Azure.ApiManagement.GetGateway.Invoke(new()
///     {
///         Name = "example-api-gateway",
///         ApiManagementId = example.Apply(getServiceResult => getServiceResult.Id),
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
/// 			Name:              "example-apim",
/// 			ResourceGroupName: "example-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.LookupGateway(ctx, &apimanagement.LookupGatewayArgs{
/// 			Name:            "example-api-gateway",
/// 			ApiManagementId: example.Id,
/// 		}, nil)
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
/// data "azure_apimanagement_getservice" "example" {
///   name                = "example-apim"
///   resource_group_name = "example-rg"
/// }
/// data "azure_apimanagement_getgateway" "exampleGetGateway" {
///   name              = "example-api-gateway"
///   api_management_id = data.azure_apimanagement_getservice.example.id
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
/// import com.pulumi.azure.apimanagement.inputs.GetGatewayArgs;
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
///         final var example = ApimanagementFunctions.getService(GetServiceArgs.builder()
///             .name("example-apim")
///             .resourceGroupName("example-rg")
///             .build());
///
///         final var exampleGetGateway = ApimanagementFunctions.getGateway(GetGatewayArgs.builder()
///             .name("example-api-gateway")
///             .apiManagementId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getService
///       arguments:
///         name: example-apim
///         resourceGroupName: example-rg
///   exampleGetGateway:
///     fn::invoke:
///       function: azure:apimanagement:getGateway
///       arguments:
///         name: example-api-gateway
///         apiManagementId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_gateway_get_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayResult> getGateway(
  GetGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:apimanagement/getGateway:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult.fromMap(result);
}

/// Use this data source to access information about an existing API Management Gateway Host Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getService({
///     name: "example-apim",
///     resourceGroupName: "example-resources",
/// });
/// const exampleGetGateway = azure.apimanagement.getGateway({
///     name: "example-gateway",
///     apiManagementId: main.id,
/// });
/// const exampleGetGatewayHostNameConfiguration = Promise.all([example, exampleGetGateway]).then(([example, exampleGetGateway]) => azure.apimanagement.getGatewayHostNameConfiguration({
///     name: "example-host-configuration",
///     apiManagementId: example.id,
///     gatewayName: exampleGetGateway.name,
/// }));
/// export const hostName = exampleGetGatewayHostNameConfiguration.then(exampleGetGatewayHostNameConfiguration => exampleGetGatewayHostNameConfiguration.hostName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_service(name="example-apim",
///     resource_group_name="example-resources")
/// example_get_gateway = azure.apimanagement.get_gateway(name="example-gateway",
///     api_management_id=main["id"])
/// example_get_gateway_host_name_configuration = azure.apimanagement.get_gateway_host_name_configuration(name="example-host-configuration",
///     api_management_id=example.id,
///     gateway_name=example_get_gateway.name)
/// pulumi.export("hostName", example_get_gateway_host_name_configuration.host_name)
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
///         Name = "example-apim",
///         ResourceGroupName = "example-resources",
///     });
///
///     var exampleGetGateway = Azure.ApiManagement.GetGateway.Invoke(new()
///     {
///         Name = "example-gateway",
///         ApiManagementId = main.Id,
///     });
///
///     var exampleGetGatewayHostNameConfiguration = Azure.ApiManagement.GetGatewayHostNameConfiguration.Invoke(new()
///     {
///         Name = "example-host-configuration",
///         ApiManagementId = example.Apply(getServiceResult => getServiceResult.Id),
///         GatewayName = exampleGetGateway.Apply(getGatewayResult => getGatewayResult.Name),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hostName"] = exampleGetGatewayHostNameConfiguration.Apply(getGatewayHostNameConfigurationResult => getGatewayHostNameConfigurationResult.HostName),
///     };
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
/// 			Name:              "example-apim",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetGateway, err := apimanagement.LookupGateway(ctx, &apimanagement.LookupGatewayArgs{
/// 			Name:            "example-gateway",
/// 			ApiManagementId: main.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetGatewayHostNameConfiguration, err := apimanagement.LookupGatewayHostNameConfiguration(ctx, &apimanagement.LookupGatewayHostNameConfigurationArgs{
/// 			Name:            "example-host-configuration",
/// 			ApiManagementId: example.Id,
/// 			GatewayName:     exampleGetGateway.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hostName", exampleGetGatewayHostNameConfiguration.HostName)
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
/// data "azure_apimanagement_getservice" "example" {
///   name                = "example-apim"
///   resource_group_name = "example-resources"
/// }
/// data "azure_apimanagement_getgateway" "exampleGetGateway" {
///   name              = "example-gateway"
///   api_management_id = main.id
/// }
/// data "azure_apimanagement_getgatewayhostnameconfiguration" "exampleGetGatewayHostNameConfiguration" {
///   name              = "example-host-configuration"
///   api_management_id = data.azure_apimanagement_getservice.example.id
///   gateway_name      = data.azure_apimanagement_getgateway.exampleGetGateway.name
/// }
///
/// output "hostName" {
///   value = data.azure_apimanagement_getgatewayhostnameconfiguration.exampleGetGatewayHostNameConfiguration.host_name
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
/// import com.pulumi.azure.apimanagement.inputs.GetGatewayArgs;
/// import com.pulumi.azure.apimanagement.inputs.GetGatewayHostNameConfigurationArgs;
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
///         final var example = ApimanagementFunctions.getService(GetServiceArgs.builder()
///             .name("example-apim")
///             .resourceGroupName("example-resources")
///             .build());
///
///         final var exampleGetGateway = ApimanagementFunctions.getGateway(GetGatewayArgs.builder()
///             .name("example-gateway")
///             .apiManagementId(main.id())
///             .build());
///
///         final var exampleGetGatewayHostNameConfiguration = ApimanagementFunctions.getGatewayHostNameConfiguration(GetGatewayHostNameConfigurationArgs.builder()
///             .name("example-host-configuration")
///             .apiManagementId(example.id())
///             .gatewayName(exampleGetGateway.name())
///             .build());
///
///         ctx.export("hostName", exampleGetGatewayHostNameConfiguration.hostName());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getService
///       arguments:
///         name: example-apim
///         resourceGroupName: example-resources
///   exampleGetGateway:
///     fn::invoke:
///       function: azure:apimanagement:getGateway
///       arguments:
///         name: example-gateway
///         apiManagementId: ${main.id}
///   exampleGetGatewayHostNameConfiguration:
///     fn::invoke:
///       function: azure:apimanagement:getGatewayHostNameConfiguration
///       arguments:
///         name: example-host-configuration
///         apiManagementId: ${example.id}
///         gatewayName: ${exampleGetGateway.name}
/// outputs:
///   hostName: ${exampleGetGatewayHostNameConfiguration.hostName}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_gateway_host_name_configuration_get_gateway_host_name_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayHostNameConfigurationResult> getGatewayHostNameConfiguration(
  GetGatewayHostNameConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:apimanagement/getGatewayHostNameConfiguration:getGatewayHostNameConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayHostNameConfigurationResult.fromMap(result);
}

/// Use this data source to access information about an existing API Management Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getGroup({
///     name: "my-group",
///     apiManagementName: "example-apim",
///     resourceGroupName: "search-service",
/// });
/// export const groupType = example.then(example => example.type);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_group(name="my-group",
///     api_management_name="example-apim",
///     resource_group_name="search-service")
/// pulumi.export("groupType", example.type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ApiManagement.GetGroup.Invoke(new()
///     {
///         Name = "my-group",
///         ApiManagementName = "example-apim",
///         ResourceGroupName = "search-service",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["groupType"] = example.Apply(getGroupResult => getGroupResult.Type),
///     };
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
/// 		example, err := apimanagement.LookupGroup(ctx, &apimanagement.LookupGroupArgs{
/// 			Name:              "my-group",
/// 			ApiManagementName: "example-apim",
/// 			ResourceGroupName: "search-service",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("groupType", example.Type)
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
/// data "azure_apimanagement_getgroup" "example" {
///   name                = "my-group"
///   api_management_name = "example-apim"
///   resource_group_name = "search-service"
/// }
///
/// output "groupType" {
///   value = data.azure_apimanagement_getgroup.example.type
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetGroupArgs;
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
///         final var example = ApimanagementFunctions.getGroup(GetGroupArgs.builder()
///             .name("my-group")
///             .apiManagementName("example-apim")
///             .resourceGroupName("search-service")
///             .build());
///
///         ctx.export("groupType", example.type());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getGroup
///       arguments:
///         name: my-group
///         apiManagementName: example-apim
///         resourceGroupName: search-service
/// outputs:
///   groupType: ${example.type}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_group_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:apimanagement/getGroup:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}

/// Use this data source to access information about an existing API Management Product.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getProduct({
///     productId: "my-product",
///     apiManagementName: "example-apim",
///     resourceGroupName: "search-service",
/// });
/// export const productTerms = example.then(example => example.terms);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_product(product_id="my-product",
///     api_management_name="example-apim",
///     resource_group_name="search-service")
/// pulumi.export("productTerms", example.terms)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ApiManagement.GetProduct.Invoke(new()
///     {
///         ProductId = "my-product",
///         ApiManagementName = "example-apim",
///         ResourceGroupName = "search-service",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["productTerms"] = example.Apply(getProductResult => getProductResult.Terms),
///     };
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
/// 		example, err := apimanagement.LookupProduct(ctx, &apimanagement.LookupProductArgs{
/// 			ProductId:         "my-product",
/// 			ApiManagementName: "example-apim",
/// 			ResourceGroupName: "search-service",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("productTerms", example.Terms)
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
/// data "azure_apimanagement_getproduct" "example" {
///   product_id          = "my-product"
///   api_management_name = "example-apim"
///   resource_group_name = "search-service"
/// }
///
/// output "productTerms" {
///   value = data.azure_apimanagement_getproduct.example.terms
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetProductArgs;
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
///         final var example = ApimanagementFunctions.getProduct(GetProductArgs.builder()
///             .productId("my-product")
///             .apiManagementName("example-apim")
///             .resourceGroupName("search-service")
///             .build());
///
///         ctx.export("productTerms", example.terms());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getProduct
///       arguments:
///         productId: my-product
///         apiManagementName: example-apim
///         resourceGroupName: search-service
/// outputs:
///   productTerms: ${example.terms}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_product_get_product_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductResult> getProduct(
  GetProductArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:apimanagement/getProduct:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductResult.fromMap(result);
}

/// Use this data source to access information about an existing API Management Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getService({
///     name: "search-api",
///     resourceGroupName: "search-service",
/// });
/// export const apiManagementId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_service(name="search-api",
///     resource_group_name="search-service")
/// pulumi.export("apiManagementId", example.id)
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
///         Name = "search-api",
///         ResourceGroupName = "search-service",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["apiManagementId"] = example.Apply(getServiceResult => getServiceResult.Id),
///     };
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
/// 			Name:              "search-api",
/// 			ResourceGroupName: "search-service",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("apiManagementId", example.Id)
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
/// data "azure_apimanagement_getservice" "example" {
///   name                = "search-api"
///   resource_group_name = "search-service"
/// }
///
/// output "apiManagementId" {
///   value = data.azure_apimanagement_getservice.example.id
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
///         final var example = ApimanagementFunctions.getService(GetServiceArgs.builder()
///             .name("search-api")
///             .resourceGroupName("search-service")
///             .build());
///
///         ctx.export("apiManagementId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getService
///       arguments:
///         name: search-api
///         resourceGroupName: search-service
/// outputs:
///   apiManagementId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2024-05-01, 2022-08-01
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:apimanagement/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Use this data source to access information about an existing API Management Subscription.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getSubscription({
///     apiManagementId: "example-apim",
///     subscriptionId: "example-subscription-id",
/// });
/// export const id = example.then(example => example.subscriptionId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_subscription(api_management_id="example-apim",
///     subscription_id="example-subscription-id")
/// pulumi.export("id", example.subscription_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ApiManagement.GetSubscription.Invoke(new()
///     {
///         ApiManagementId = "example-apim",
///         SubscriptionId = "example-subscription-id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getSubscriptionResult => getSubscriptionResult.SubscriptionId),
///     };
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
/// 		example, err := apimanagement.LookupSubscription(ctx, &apimanagement.LookupSubscriptionArgs{
/// 			ApiManagementId: "example-apim",
/// 			SubscriptionId:  "example-subscription-id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.SubscriptionId)
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
/// data "azure_apimanagement_getsubscription" "example" {
///   api_management_id = "example-apim"
///   subscription_id   = "example-subscription-id"
/// }
///
/// output "id" {
///   value = data.azure_apimanagement_getsubscription.example.subscription_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetSubscriptionArgs;
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
///         final var example = ApimanagementFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .apiManagementId("example-apim")
///             .subscriptionId("example-subscription-id")
///             .build());
///
///         ctx.export("id", example.subscriptionId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getSubscription
///       arguments:
///         apiManagementId: example-apim
///         subscriptionId: example-subscription-id
/// outputs:
///   id: ${example.subscriptionId}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_subscription_get_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:apimanagement/getSubscription:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult.fromMap(result);
}

/// Use this data source to access information about an existing API Management User.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getUser({
///     userId: "my-user",
///     apiManagementName: "example-apim",
///     resourceGroupName: "search-service",
/// });
/// export const notes = example.then(example => example.notes);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_user(user_id="my-user",
///     api_management_name="example-apim",
///     resource_group_name="search-service")
/// pulumi.export("notes", example.notes)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ApiManagement.GetUser.Invoke(new()
///     {
///         UserId = "my-user",
///         ApiManagementName = "example-apim",
///         ResourceGroupName = "search-service",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["notes"] = example.Apply(getUserResult => getUserResult.Notes),
///     };
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
/// 		example, err := apimanagement.LookupUser(ctx, &apimanagement.LookupUserArgs{
/// 			UserId:            "my-user",
/// 			ApiManagementName: "example-apim",
/// 			ResourceGroupName: "search-service",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("notes", pulumi.Any(example.Notes))
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
/// data "azure_apimanagement_getuser" "example" {
///   user_id             = "my-user"
///   api_management_name = "example-apim"
///   resource_group_name = "search-service"
/// }
///
/// output "notes" {
///   value = data.azure_apimanagement_getuser.example.notes
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetUserArgs;
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
///         final var example = ApimanagementFunctions.getUser(GetUserArgs.builder()
///             .userId("my-user")
///             .apiManagementName("example-apim")
///             .resourceGroupName("search-service")
///             .build());
///
///         ctx.export("notes", example.notes());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getUser
///       arguments:
///         userId: my-user
///         apiManagementName: example-apim
///         resourceGroupName: search-service
/// outputs:
///   notes: ${example.notes}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_user_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:apimanagement/getUser:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}

/// Use this data source to access information about an existing API Management Workspace.
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
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apimanagement",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     publisherName: "pub1",
///     publisherEmail: "pub1@email.com",
///     skuName: "Premium_1",
/// });
/// const example = azure.apimanagement.getWorkspaceOutput({
///     name: "existing",
///     apiManagementId: exampleService.id,
/// });
/// export const id = example.apply(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apimanagement",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     publisher_name="pub1",
///     publisher_email="pub1@email.com",
///     sku_name="Premium_1")
/// example = azure.apimanagement.get_workspace_output(name="existing",
///     api_management_id=example_service.id)
/// pulumi.export("id", example.id)
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
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apimanagement",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         PublisherName = "pub1",
///         PublisherEmail = "pub1@email.com",
///         SkuName = "Premium_1",
///     });
///
///     var example = Azure.ApiManagement.GetWorkspace.Invoke(new()
///     {
///         Name = "existing",
///         ApiManagementId = exampleService.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getWorkspaceResult => getWorkspaceResult.Id),
///     };
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
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apimanagement"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			PublisherName:     pulumi.String("pub1"),
/// 			PublisherEmail:    pulumi.String("pub1@email.com"),
/// 			SkuName:           pulumi.String("Premium_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := apimanagement.LookupWorkspaceOutput(ctx, apimanagement.GetWorkspaceOutputArgs{
/// 			Name:            pulumi.String("existing"),
/// 			ApiManagementId: exampleService.ID(),
/// 		}, nil)
/// 		ctx.Export("id", example.ApplyT(func(example apimanagement.GetWorkspaceResult) (*string, error) {
/// 			return example.Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// data "azure_apimanagement_getworkspace" "example" {
///   name              = "existing"
///   api_management_id = azure_apimanagement_service.example.id
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_apimanagement_service" "example" {
///   name                = "example-apimanagement"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   publisher_name      = "pub1"
///   publisher_email     = "pub1@email.com"
///   sku_name            = "Premium_1"
/// }
/// output "id" {
///   value = data.azure_apimanagement_getworkspace.example.id
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
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetWorkspaceArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apimanagement")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .publisherName("pub1")
///             .publisherEmail("pub1@email.com")
///             .skuName("Premium_1")
///             .build());
///
///         final var example = ApimanagementFunctions.getWorkspace(GetWorkspaceArgs.builder()
///             .name("existing")
///             .apiManagementId(exampleService.id())
///             .build());
///
///         ctx.export("id", example.applyValue(_example -> _example.id()));
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
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apimanagement
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       publisherName: pub1
///       publisherEmail: pub1@email.com
///       skuName: Premium_1
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getWorkspace
///       arguments:
///         name: existing
///         apiManagementId: ${exampleService.id}
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2024-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_apimanagement_get_workspace_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:apimanagement/getWorkspace:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}
