import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_service_args.dart';
import 'get_app_service_plan_args.dart';
import 'get_app_service_plan_result.dart';
import 'get_app_service_result.dart';
import 'get_certificate_args.dart';
import 'get_certificate_order_args.dart';
import 'get_certificate_order_result.dart';
import 'get_certificate_result.dart';
import 'get_environment_v3_args.dart';
import 'get_environment_v3_result.dart';
import 'get_function_app_args.dart';
import 'get_function_app_host_keys_args.dart';
import 'get_function_app_host_keys_result.dart';
import 'get_function_app_result.dart';
import 'get_linux_function_app_args.dart';
import 'get_linux_function_app_result.dart';
import 'get_linux_web_app_args.dart';
import 'get_linux_web_app_result.dart';
import 'get_service_plan_args.dart';
import 'get_service_plan_result.dart';
import 'get_source_control_token_args.dart';
import 'get_source_control_token_result.dart';
import 'get_static_web_app_args.dart';
import 'get_static_web_app_result.dart';
import 'get_windows_function_app_args.dart';
import 'get_windows_function_app_result.dart';
import 'get_windows_web_app_args.dart';
import 'get_windows_web_app_result.dart';

/// Use this data source to access information about an existing App Service.
///
/// !> **Note:** The `azure.appservice.AppService` data source is deprecated in version 5.0 of the provider and will be removed in version 6.0. Please use the `azure.appservice.LinuxWebApp` and `azure.appservice.WindowsWebApp` data sources instead.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appservice.getAppService({
///     name: "search-app-service",
///     resourceGroupName: "search-service",
/// });
/// export const appServiceId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.get_app_service(name="search-app-service",
///     resource_group_name="search-service")
/// pulumi.export("appServiceId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.AppService.GetAppService.Invoke(new()
///     {
///         Name = "search-app-service",
///         ResourceGroupName = "search-service",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["appServiceId"] = example.Apply(getAppServiceResult => getAppServiceResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appservice.LookupAppService(ctx, &appservice.LookupAppServiceArgs{
/// 			Name:              "search-app-service",
/// 			ResourceGroupName: "search-service",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("appServiceId", example.Id)
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetAppServiceArgs;
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
///         final var example = AppserviceFunctions.getAppService(GetAppServiceArgs.builder()
///             .name("search-app-service")
///             .resourceGroupName("search-service")
///             .build());
///
///         ctx.export("appServiceId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getAppService
///       arguments:
///         name: search-app-service
///         resourceGroupName: search-service
/// outputs:
///   appServiceId: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appservice_get_app_service_get_app_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppServiceResult> getAppService(
  GetAppServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appservice/getAppService:getAppService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppServiceResult.fromMap(result);
}

/// Use this data source to access information about an existing App Service Plan (formerly known as a `Server Farm`).
///
/// !> **Note:** The `azure.appservice.Plan` data source is deprecated in version 5.0 of the provider and will be removed in version 6.0. Please use the `azure.appservice.ServicePlan` data source instead.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appservice.getAppServicePlan({
///     name: "search-app-service-plan",
///     resourceGroupName: "search-service",
/// });
/// export const appServicePlanId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.get_app_service_plan(name="search-app-service-plan",
///     resource_group_name="search-service")
/// pulumi.export("appServicePlanId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.AppService.GetAppServicePlan.Invoke(new()
///     {
///         Name = "search-app-service-plan",
///         ResourceGroupName = "search-service",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["appServicePlanId"] = example.Apply(getAppServicePlanResult => getAppServicePlanResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appservice.GetAppServicePlan(ctx, &appservice.GetAppServicePlanArgs{
/// 			Name:              "search-app-service-plan",
/// 			ResourceGroupName: "search-service",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("appServicePlanId", example.Id)
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetAppServicePlanArgs;
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
///         final var example = AppserviceFunctions.getAppServicePlan(GetAppServicePlanArgs.builder()
///             .name("search-app-service-plan")
///             .resourceGroupName("search-service")
///             .build());
///
///         ctx.export("appServicePlanId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getAppServicePlan
///       arguments:
///         name: search-app-service-plan
///         resourceGroupName: search-service
/// outputs:
///   appServicePlanId: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appservice_get_app_service_plan_get_app_service_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppServicePlanResult> getAppServicePlan(
  GetAppServicePlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appservice/getAppServicePlan:getAppServicePlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppServicePlanResult.fromMap(result);
}

/// Use this data source to access information about an App Service Certificate.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appservice.getCertificate({
///     name: "example-app-service-certificate",
///     resourceGroupName: "example-rg",
/// });
/// export const appServiceCertificateId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.get_certificate(name="example-app-service-certificate",
///     resource_group_name="example-rg")
/// pulumi.export("appServiceCertificateId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.AppService.GetCertificate.Invoke(new()
///     {
///         Name = "example-app-service-certificate",
///         ResourceGroupName = "example-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["appServiceCertificateId"] = example.Apply(getCertificateResult => getCertificateResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appservice.LookupCertificate(ctx, &appservice.LookupCertificateArgs{
/// 			Name:              "example-app-service-certificate",
/// 			ResourceGroupName: "example-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("appServiceCertificateId", example.Id)
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetCertificateArgs;
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
///         final var example = AppserviceFunctions.getCertificate(GetCertificateArgs.builder()
///             .name("example-app-service-certificate")
///             .resourceGroupName("example-rg")
///             .build());
///
///         ctx.export("appServiceCertificateId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getCertificate
///       arguments:
///         name: example-app-service-certificate
///         resourceGroupName: example-rg
/// outputs:
///   appServiceCertificateId: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appservice_get_certificate_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appservice/getCertificate:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// Use this data source to access information about an existing App Service Certificate Order.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appservice.getCertificateOrder({
///     name: "example-cert-order",
///     resourceGroupName: "example-resources",
/// });
/// export const certificateOrderId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.get_certificate_order(name="example-cert-order",
///     resource_group_name="example-resources")
/// pulumi.export("certificateOrderId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.AppService.GetCertificateOrder.Invoke(new()
///     {
///         Name = "example-cert-order",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["certificateOrderId"] = example.Apply(getCertificateOrderResult => getCertificateOrderResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appservice.LookupCertificateOrder(ctx, &appservice.LookupCertificateOrderArgs{
/// 			Name:              "example-cert-order",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("certificateOrderId", example.Id)
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetCertificateOrderArgs;
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
///         final var example = AppserviceFunctions.getCertificateOrder(GetCertificateOrderArgs.builder()
///             .name("example-cert-order")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("certificateOrderId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getCertificateOrder
///       arguments:
///         name: example-cert-order
///         resourceGroupName: example-resources
/// outputs:
///   certificateOrderId: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appservice_get_certificate_order_get_certificate_order_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateOrderResult> getCertificateOrder(
  GetCertificateOrderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appservice/getCertificateOrder:getCertificateOrder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateOrderResult.fromMap(result);
}

/// Use this data source to access information about an existing 3rd Generation (v3) App Service Environment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appservice.getEnvironmentV3({
///     name: "example-ASE",
///     resourceGroupName: "example-resource-group",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.get_environment_v3(name="example-ASE",
///     resource_group_name="example-resource-group")
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
///     var example = Azure.AppService.GetEnvironmentV3.Invoke(new()
///     {
///         Name = "example-ASE",
///         ResourceGroupName = "example-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getEnvironmentV3Result => getEnvironmentV3Result.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appservice.LookupEnvironmentV3(ctx, &appservice.LookupEnvironmentV3Args{
/// 			Name:              "example-ASE",
/// 			ResourceGroupName: "example-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetEnvironmentV3Args;
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
///         final var example = AppserviceFunctions.getEnvironmentV3(GetEnvironmentV3Args.builder()
///             .name("example-ASE")
///             .resourceGroupName("example-resource-group")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getEnvironmentV3
///       arguments:
///         name: example-ASE
///         resourceGroupName: example-resource-group
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_appservice_get_environment_v3_get_environment_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentV3Result> getEnvironmentV3(
  GetEnvironmentV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appservice/getEnvironmentV3:getEnvironmentV3',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentV3Result.fromMap(result);
}

/// Use this data source to access information about a Function App.
///
/// !> **Note:** The `azure.appservice.FunctionApp` data source is deprecated in version 5.0 of the AzureRM provider and will be removed in version 6.0. Please use the `azure.appservice.LinuxFunctionApp` and `azure.appservice.WindowsFunctionApp` data sources instead.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appservice.getFunctionApp({
///     name: "test-azure-functions",
///     resourceGroupName: exampleAzurermResourceGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.get_function_app(name="test-azure-functions",
///     resource_group_name=example_azurerm_resource_group["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.AppService.GetFunctionApp.Invoke(new()
///     {
///         Name = "test-azure-functions",
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appservice.LookupFunctionApp(ctx, &appservice.LookupFunctionAppArgs{
/// 			Name:              "test-azure-functions",
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
/// 		}, nil)
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetFunctionAppArgs;
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
///         final var example = AppserviceFunctions.getFunctionApp(GetFunctionAppArgs.builder()
///             .name("test-azure-functions")
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getFunctionApp
///       arguments:
///         name: test-azure-functions
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appservice_get_function_app_get_function_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionAppResult> getFunctionApp(
  GetFunctionAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appservice/getFunctionApp:getFunctionApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionAppResult.fromMap(result);
}

/// Use this data source to fetch the Host Keys of an existing Function App
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appservice.getFunctionAppHostKeys({
///     name: "example-function",
///     resourceGroupName: exampleAzurermResourceGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.get_function_app_host_keys(name="example-function",
///     resource_group_name=example_azurerm_resource_group["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.AppService.GetFunctionAppHostKeys.Invoke(new()
///     {
///         Name = "example-function",
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appservice.GetFunctionAppHostKeys(ctx, &appservice.GetFunctionAppHostKeysArgs{
/// 			Name:              "example-function",
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
/// 		}, nil)
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetFunctionAppHostKeysArgs;
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
///         final var example = AppserviceFunctions.getFunctionAppHostKeys(GetFunctionAppHostKeysArgs.builder()
///             .name("example-function")
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getFunctionAppHostKeys
///       arguments:
///         name: example-function
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appservice_get_function_app_host_keys_get_function_app_host_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionAppHostKeysResult> getFunctionAppHostKeys(
  GetFunctionAppHostKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appservice/getFunctionAppHostKeys:getFunctionAppHostKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionAppHostKeysResult.fromMap(result);
}

/// Use this data source to access information about an existing Linux Function App.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appservice.getLinuxFunctionApp({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.get_linux_function_app(name="existing",
///     resource_group_name="existing")
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
///     var example = Azure.AppService.GetLinuxFunctionApp.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getLinuxFunctionAppResult => getLinuxFunctionAppResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appservice.LookupLinuxFunctionApp(ctx, &appservice.LookupLinuxFunctionAppArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetLinuxFunctionAppArgs;
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
///         final var example = AppserviceFunctions.getLinuxFunctionApp(GetLinuxFunctionAppArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getLinuxFunctionApp
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_appservice_get_linux_function_app_get_linux_function_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinuxFunctionAppResult> getLinuxFunctionApp(
  GetLinuxFunctionAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appservice/getLinuxFunctionApp:getLinuxFunctionApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinuxFunctionAppResult.fromMap(result);
}

/// Use this data source to access information about an existing Linux Web App.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appservice.getLinuxWebApp({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.get_linux_web_app(name="existing",
///     resource_group_name="existing")
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
///     var example = Azure.AppService.GetLinuxWebApp.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getLinuxWebAppResult => getLinuxWebAppResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appservice.LookupLinuxWebApp(ctx, &appservice.LookupLinuxWebAppArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetLinuxWebAppArgs;
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
///         final var example = AppserviceFunctions.getLinuxWebApp(GetLinuxWebAppArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getLinuxWebApp
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_appservice_get_linux_web_app_get_linux_web_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinuxWebAppResult> getLinuxWebApp(
  GetLinuxWebAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appservice/getLinuxWebApp:getLinuxWebApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinuxWebAppResult.fromMap(result);
}

/// Use this data source to access information about an existing Service Plan.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appservice.getServicePlan({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.get_service_plan(name="existing",
///     resource_group_name="existing")
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
///     var example = Azure.AppService.GetServicePlan.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getServicePlanResult => getServicePlanResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appservice.LookupServicePlan(ctx, &appservice.LookupServicePlanArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetServicePlanArgs;
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
///         final var example = AppserviceFunctions.getServicePlan(GetServicePlanArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getServicePlan
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_appservice_get_service_plan_get_service_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServicePlanResult> getServicePlan(
  GetServicePlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appservice/getServicePlan:getServicePlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServicePlanResult.fromMap(result);
}

/// Use this data source to access information about an existing App Service Source Control Token.
///
/// > **Note:** This value can only be queried for the user or service principal that is executing Terraform. It is not possible to retrieve for another user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appservice.getSourceControlToken({
///     type: "GitHub",
/// });
/// export const id = exampleAzurermAppServiceGithubToken.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.get_source_control_token(type="GitHub")
/// pulumi.export("id", example_azurerm_app_service_github_token["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.AppService.GetSourceControlToken.Invoke(new()
///     {
///         Type = "GitHub",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = exampleAzurermAppServiceGithubToken.Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appservice.LookupSourceControlToken(ctx, &appservice.LookupSourceControlTokenArgs{
/// 			Type: "GitHub",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", exampleAzurermAppServiceGithubToken.Id)
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetSourceControlTokenArgs;
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
///         final var example = AppserviceFunctions.getSourceControlToken(GetSourceControlTokenArgs.builder()
///             .type("GitHub")
///             .build());
///
///         ctx.export("id", exampleAzurermAppServiceGithubToken.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getSourceControlToken
///       arguments:
///         type: GitHub
/// outputs:
///   id: ${exampleAzurermAppServiceGithubToken.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_appservice_get_source_control_token_get_source_control_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSourceControlTokenResult> getSourceControlToken(
  GetSourceControlTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appservice/getSourceControlToken:getSourceControlToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceControlTokenResult.fromMap(result);
}

/// Use this data source to access information about an existing Static Web App.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appservice.getStaticWebApp({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.get_static_web_app(name="existing",
///     resource_group_name="existing")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.AppService.GetStaticWebApp.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appservice.LookupStaticWebApp(ctx, &appservice.LookupStaticWebAppArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetStaticWebAppArgs;
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
///         final var example = AppserviceFunctions.getStaticWebApp(GetStaticWebAppArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getStaticWebApp
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_appservice_get_static_web_app_get_static_web_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStaticWebAppResult> getStaticWebApp(
  GetStaticWebAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appservice/getStaticWebApp:getStaticWebApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStaticWebAppResult.fromMap(result);
}

/// Use this data source to access information about an existing Windows Function App.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appservice.getWindowsFunctionApp({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.get_windows_function_app(name="existing",
///     resource_group_name="existing")
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
///     var example = Azure.AppService.GetWindowsFunctionApp.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getWindowsFunctionAppResult => getWindowsFunctionAppResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appservice.LookupWindowsFunctionApp(ctx, &appservice.LookupWindowsFunctionAppArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetWindowsFunctionAppArgs;
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
///         final var example = AppserviceFunctions.getWindowsFunctionApp(GetWindowsFunctionAppArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getWindowsFunctionApp
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_appservice_get_windows_function_app_get_windows_function_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWindowsFunctionAppResult> getWindowsFunctionApp(
  GetWindowsFunctionAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appservice/getWindowsFunctionApp:getWindowsFunctionApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWindowsFunctionAppResult.fromMap(result);
}

/// Use this data source to access information about an existing Windows Web App.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appservice.getWindowsWebApp({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.get_windows_web_app(name="existing",
///     resource_group_name="existing")
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
///     var example = Azure.AppService.GetWindowsWebApp.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getWindowsWebAppResult => getWindowsWebAppResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appservice.LookupWindowsWebApp(ctx, &appservice.LookupWindowsWebAppArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetWindowsWebAppArgs;
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
///         final var example = AppserviceFunctions.getWindowsWebApp(GetWindowsWebAppArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getWindowsWebApp
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_appservice_get_windows_web_app_get_windows_web_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWindowsWebAppResult> getWindowsWebApp(
  GetWindowsWebAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appservice/getWindowsWebApp:getWindowsWebApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWindowsWebAppResult.fromMap(result);
}
