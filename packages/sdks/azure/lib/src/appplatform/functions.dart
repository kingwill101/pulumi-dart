import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spring_cloud_app_args.dart';
import 'get_spring_cloud_app_result.dart';
import 'get_spring_cloud_service_args.dart';
import 'get_spring_cloud_service_result.dart';

/// Use this data source to access information about an existing Spring Cloud Application.
///
/// !&gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudApp` data source is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appplatform.getSpringCloudApp({
///     name: exampleAzurermSpringCloudApp.name,
///     resourceGroupName: exampleAzurermSpringCloudApp.resourceGroupName,
///     serviceName: exampleAzurermSpringCloudApp.serviceName,
/// });
/// export const springCloudAppId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appplatform.get_spring_cloud_app(name=example_azurerm_spring_cloud_app["name"],
///     resource_group_name=example_azurerm_spring_cloud_app["resourceGroupName"],
///     service_name=example_azurerm_spring_cloud_app["serviceName"])
/// pulumi.export("springCloudAppId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.AppPlatform.GetSpringCloudApp.Invoke(new()
///     {
///         Name = exampleAzurermSpringCloudApp.Name,
///         ResourceGroupName = exampleAzurermSpringCloudApp.ResourceGroupName,
///         ServiceName = exampleAzurermSpringCloudApp.ServiceName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["springCloudAppId"] = example.Apply(getSpringCloudAppResult => getSpringCloudAppResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appplatform"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appplatform.LookupSpringCloudApp(ctx, &appplatform.LookupSpringCloudAppArgs{
/// 			Name:              exampleAzurermSpringCloudApp.Name,
/// 			ResourceGroupName: exampleAzurermSpringCloudApp.ResourceGroupName,
/// 			ServiceName:       exampleAzurermSpringCloudApp.ServiceName,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("springCloudAppId", example.Id)
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
/// import com.pulumi.azure.appplatform.AppplatformFunctions;
/// import com.pulumi.azure.appplatform.inputs.GetSpringCloudAppArgs;
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
///         final var example = AppplatformFunctions.getSpringCloudApp(GetSpringCloudAppArgs.builder()
///             .name(exampleAzurermSpringCloudApp.name())
///             .resourceGroupName(exampleAzurermSpringCloudApp.resourceGroupName())
///             .serviceName(exampleAzurermSpringCloudApp.serviceName())
///             .build());
///
///         ctx.export("springCloudAppId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appplatform:getSpringCloudApp
///       arguments:
///         name: ${exampleAzurermSpringCloudApp.name}
///         resourceGroupName: ${exampleAzurermSpringCloudApp.resourceGroupName}
///         serviceName: ${exampleAzurermSpringCloudApp.serviceName}
/// outputs:
///   springCloudAppId: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_spring_cloud_app_get_spring_cloud_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpringCloudAppResult> getSpringCloudApp(
  GetSpringCloudAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appplatform/getSpringCloudApp:getSpringCloudApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpringCloudAppResult.fromMap(result);
}

/// Use this data source to access information about an existing Spring Cloud Service.
///
/// !&gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudService` data source is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appplatform.getSpringCloudService({
///     name: exampleAzurermSpringCloudService.name,
///     resourceGroupName: exampleAzurermSpringCloudService.resourceGroupName,
/// });
/// export const springCloudServiceId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appplatform.get_spring_cloud_service(name=example_azurerm_spring_cloud_service["name"],
///     resource_group_name=example_azurerm_spring_cloud_service["resourceGroupName"])
/// pulumi.export("springCloudServiceId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.AppPlatform.GetSpringCloudService.Invoke(new()
///     {
///         Name = exampleAzurermSpringCloudService.Name,
///         ResourceGroupName = exampleAzurermSpringCloudService.ResourceGroupName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["springCloudServiceId"] = example.Apply(getSpringCloudServiceResult => getSpringCloudServiceResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appplatform"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appplatform.LookupSpringCloudService(ctx, &appplatform.LookupSpringCloudServiceArgs{
/// 			Name:              exampleAzurermSpringCloudService.Name,
/// 			ResourceGroupName: exampleAzurermSpringCloudService.ResourceGroupName,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("springCloudServiceId", example.Id)
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
/// import com.pulumi.azure.appplatform.AppplatformFunctions;
/// import com.pulumi.azure.appplatform.inputs.GetSpringCloudServiceArgs;
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
///         final var example = AppplatformFunctions.getSpringCloudService(GetSpringCloudServiceArgs.builder()
///             .name(exampleAzurermSpringCloudService.name())
///             .resourceGroupName(exampleAzurermSpringCloudService.resourceGroupName())
///             .build());
///
///         ctx.export("springCloudServiceId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appplatform:getSpringCloudService
///       arguments:
///         name: ${exampleAzurermSpringCloudService.name}
///         resourceGroupName: ${exampleAzurermSpringCloudService.resourceGroupName}
/// outputs:
///   springCloudServiceId: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_spring_cloud_service_get_spring_cloud_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpringCloudServiceResult> getSpringCloudService(
  GetSpringCloudServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appplatform/getSpringCloudService:getSpringCloudService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpringCloudServiceResult.fromMap(result);
}
