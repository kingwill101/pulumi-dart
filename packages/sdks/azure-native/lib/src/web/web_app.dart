import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_config_response.dart';
import 'extended_location_response.dart';
import 'function_app_config_response.dart';
import 'hosting_environment_profile_response.dart';
import 'managed_service_identity_response.dart';
import 'resource_config_response.dart';
import 'site_config_response.dart';
import 'site_dns_config_response.dart';
import 'slot_swap_status_response.dart';
import 'web_app_args.dart';

/// A web app, a mobile app backend, or an API app.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Clone web app
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webApp = new AzureNative.Web.WebApp("webApp", new()
///     {
///         CloningInfo = new AzureNative.Web.Inputs.CloningInfoArgs
///         {
///             AppSettingsOverrides =
///             {
///                 { "Setting1", "NewValue1" },
///                 { "Setting3", "NewValue5" },
///             },
///             CloneCustomHostNames = true,
///             CloneSourceControl = true,
///             ConfigureLoadBalancing = false,
///             HostingEnvironment = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/hostingenvironments/aseforsites",
///             Overwrite = false,
///             SourceWebAppId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/sites/srcsiteg478",
///             SourceWebAppLocation = "West Europe",
///         },
///         Kind = "app",
///         Location = "East US",
///         Name = "sitef6141",
///         ResourceGroupName = "testrg123",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewWebApp(ctx, "webApp", &web.WebAppArgs{
/// 			CloningInfo: &web.CloningInfoArgs{
/// 				AppSettingsOverrides: pulumi.StringMap{
/// 					"Setting1": pulumi.String("NewValue1"),
/// 					"Setting3": pulumi.String("NewValue5"),
/// 				},
/// 				CloneCustomHostNames:   pulumi.Bool(true),
/// 				CloneSourceControl:     pulumi.Bool(true),
/// 				ConfigureLoadBalancing: pulumi.Bool(false),
/// 				HostingEnvironment:     pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/hostingenvironments/aseforsites"),
/// 				Overwrite:              pulumi.Bool(false),
/// 				SourceWebAppId:         pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/sites/srcsiteg478"),
/// 				SourceWebAppLocation:   pulumi.String("West Europe"),
/// 			},
/// 			Kind:              pulumi.String("app"),
/// 			Location:          pulumi.String("East US"),
/// 			Name:              pulumi.String("sitef6141"),
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.web.WebApp;
/// import com.pulumi.azurenative.web.WebAppArgs;
/// import com.pulumi.azurenative.web.inputs.CloningInfoArgs;
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
///         var webApp = new WebApp("webApp", WebAppArgs.builder()
///             .cloningInfo(CloningInfoArgs.builder()
///                 .appSettingsOverrides(Map.ofEntries(
///                     Map.entry("Setting1", "NewValue1"),
///                     Map.entry("Setting3", "NewValue5")
///                 ))
///                 .cloneCustomHostNames(true)
///                 .cloneSourceControl(true)
///                 .configureLoadBalancing(false)
///                 .hostingEnvironment("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/hostingenvironments/aseforsites")
///                 .overwrite(false)
///                 .sourceWebAppId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/sites/srcsiteg478")
///                 .sourceWebAppLocation("West Europe")
///                 .build())
///             .kind("app")
///             .location("East US")
///             .name("sitef6141")
///             .resourceGroupName("testrg123")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const webApp = new azure_native.web.WebApp("webApp", {
///     cloningInfo: {
///         appSettingsOverrides: {
///             Setting1: "NewValue1",
///             Setting3: "NewValue5",
///         },
///         cloneCustomHostNames: true,
///         cloneSourceControl: true,
///         configureLoadBalancing: false,
///         hostingEnvironment: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/hostingenvironments/aseforsites",
///         overwrite: false,
///         sourceWebAppId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/sites/srcsiteg478",
///         sourceWebAppLocation: "West Europe",
///     },
///     kind: "app",
///     location: "East US",
///     name: "sitef6141",
///     resourceGroupName: "testrg123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app = azure_native.web.WebApp("webApp",
///     cloning_info={
///         "app_settings_overrides": {
///             "Setting1": "NewValue1",
///             "Setting3": "NewValue5",
///         },
///         "clone_custom_host_names": True,
///         "clone_source_control": True,
///         "configure_load_balancing": False,
///         "hosting_environment": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/hostingenvironments/aseforsites",
///         "overwrite": False,
///         "source_web_app_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/sites/srcsiteg478",
///         "source_web_app_location": "West Europe",
///     },
///     kind="app",
///     location="East US",
///     name="sitef6141",
///     resource_group_name="testrg123")
///
/// ```
///
/// ```yaml
/// resources:
///   webApp:
///     type: azure-native:web:WebApp
///     properties:
///       cloningInfo:
///         appSettingsOverrides:
///           Setting1: NewValue1
///           Setting3: NewValue5
///         cloneCustomHostNames: true
///         cloneSourceControl: true
///         configureLoadBalancing: false
///         hostingEnvironment: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/hostingenvironments/aseforsites
///         overwrite: false
///         sourceWebAppId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/sites/srcsiteg478
///         sourceWebAppLocation: West Europe
///       kind: app
///       location: East US
///       name: sitef6141
///       resourceGroupName: testrg123
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Flex Consumption function app
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webApp = new AzureNative.Web.WebApp("webApp", new()
///     {
///         FunctionAppConfig = new AzureNative.Web.Inputs.FunctionAppConfigArgs
///         {
///             Deployment = new AzureNative.Web.Inputs.FunctionsDeploymentArgs
///             {
///                 Storage = new AzureNative.Web.Inputs.FunctionsDeploymentStorageArgs
///                 {
///                     Authentication = new AzureNative.Web.Inputs.FunctionsDeploymentAuthenticationArgs
///                     {
///                         StorageAccountConnectionStringName = "TheAppSettingName",
///                         Type = AzureNative.Web.AuthenticationType.StorageAccountConnectionString,
///                     },
///                     Type = AzureNative.Web.FunctionsDeploymentStorageType.BlobContainer,
///                     Value = "https://storageAccountName.blob.core.windows.net/containername",
///                 },
///             },
///             Runtime = new AzureNative.Web.Inputs.FunctionsRuntimeArgs
///             {
///                 Name = AzureNative.Web.RuntimeName.Python,
///                 Version = "3.11",
///             },
///             ScaleAndConcurrency = new AzureNative.Web.Inputs.FunctionsScaleAndConcurrencyArgs
///             {
///                 InstanceMemoryMB = 2048,
///                 MaximumInstanceCount = 100,
///             },
///         },
///         Kind = "functionapp,linux",
///         Location = "East US",
///         Name = "sitef6141",
///         ResourceGroupName = "testrg123",
///         SiteConfig = new AzureNative.Web.Inputs.SiteConfigArgs
///         {
///             AppSettings = new[]
///             {
///                 new AzureNative.Web.Inputs.NameValuePairArgs
///                 {
///                     Name = "AzureWebJobsStorage",
///                     Value = "DefaultEndpointsProtocol=https;AccountName=StorageAccountName;AccountKey=Sanitized;EndpointSuffix=core.windows.net",
///                 },
///                 new AzureNative.Web.Inputs.NameValuePairArgs
///                 {
///                     Name = "APPLICATIONINSIGHTS_CONNECTION_STRING",
///                     Value = "InstrumentationKey=Sanitized;IngestionEndpoint=Sanitized;LiveEndpoint=Sanitized",
///                 },
///             },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewWebApp(ctx, "webApp", &web.WebAppArgs{
/// 			FunctionAppConfig: &web.FunctionAppConfigArgs{
/// 				Deployment: &web.FunctionsDeploymentArgs{
/// 					Storage: &web.FunctionsDeploymentStorageArgs{
/// 						Authentication: &web.FunctionsDeploymentAuthenticationArgs{
/// 							StorageAccountConnectionStringName: pulumi.String("TheAppSettingName"),
/// 							Type:                               pulumi.String(web.AuthenticationTypeStorageAccountConnectionString),
/// 						},
/// 						Type:  pulumi.String(web.FunctionsDeploymentStorageTypeBlobContainer),
/// 						Value: pulumi.String("https://storageAccountName.blob.core.windows.net/containername"),
/// 					},
/// 				},
/// 				Runtime: &web.FunctionsRuntimeArgs{
/// 					Name:    pulumi.String(web.RuntimeNamePython),
/// 					Version: pulumi.String("3.11"),
/// 				},
/// 				ScaleAndConcurrency: &web.FunctionsScaleAndConcurrencyArgs{
/// 					InstanceMemoryMB:     pulumi.Int(2048),
/// 					MaximumInstanceCount: pulumi.Int(100),
/// 				},
/// 			},
/// 			Kind:              pulumi.String("functionapp,linux"),
/// 			Location:          pulumi.String("East US"),
/// 			Name:              pulumi.String("sitef6141"),
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			SiteConfig: &web.SiteConfigArgs{
/// 				AppSettings: web.NameValuePairArray{
/// 					&web.NameValuePairArgs{
/// 						Name:  pulumi.String("AzureWebJobsStorage"),
/// 						Value: pulumi.String("DefaultEndpointsProtocol=https;AccountName=StorageAccountName;AccountKey=Sanitized;EndpointSuffix=core.windows.net"),
/// 					},
/// 					&web.NameValuePairArgs{
/// 						Name:  pulumi.String("APPLICATIONINSIGHTS_CONNECTION_STRING"),
/// 						Value: pulumi.String("InstrumentationKey=Sanitized;IngestionEndpoint=Sanitized;LiveEndpoint=Sanitized"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.web.WebApp;
/// import com.pulumi.azurenative.web.WebAppArgs;
/// import com.pulumi.azurenative.web.inputs.FunctionAppConfigArgs;
/// import com.pulumi.azurenative.web.inputs.FunctionsDeploymentArgs;
/// import com.pulumi.azurenative.web.inputs.FunctionsDeploymentStorageArgs;
/// import com.pulumi.azurenative.web.inputs.FunctionsDeploymentAuthenticationArgs;
/// import com.pulumi.azurenative.web.inputs.FunctionsRuntimeArgs;
/// import com.pulumi.azurenative.web.inputs.FunctionsScaleAndConcurrencyArgs;
/// import com.pulumi.azurenative.web.inputs.SiteConfigArgs;
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
///         var webApp = new WebApp("webApp", WebAppArgs.builder()
///             .functionAppConfig(FunctionAppConfigArgs.builder()
///                 .deployment(FunctionsDeploymentArgs.builder()
///                     .storage(FunctionsDeploymentStorageArgs.builder()
///                         .authentication(FunctionsDeploymentAuthenticationArgs.builder()
///                             .storageAccountConnectionStringName("TheAppSettingName")
///                             .type("StorageAccountConnectionString")
///                             .build())
///                         .type("blobContainer")
///                         .value("https://storageAccountName.blob.core.windows.net/containername")
///                         .build())
///                     .build())
///                 .runtime(FunctionsRuntimeArgs.builder()
///                     .name("python")
///                     .version("3.11")
///                     .build())
///                 .scaleAndConcurrency(FunctionsScaleAndConcurrencyArgs.builder()
///                     .instanceMemoryMB(2048)
///                     .maximumInstanceCount(100)
///                     .build())
///                 .build())
///             .kind("functionapp,linux")
///             .location("East US")
///             .name("sitef6141")
///             .resourceGroupName("testrg123")
///             .siteConfig(SiteConfigArgs.builder()
///                 .appSettings(
///                     NameValuePairArgs.builder()
///                         .name("AzureWebJobsStorage")
///                         .value("DefaultEndpointsProtocol=https;AccountName=StorageAccountName;AccountKey=Sanitized;EndpointSuffix=core.windows.net")
///                         .build(),
///                     NameValuePairArgs.builder()
///                         .name("APPLICATIONINSIGHTS_CONNECTION_STRING")
///                         .value("InstrumentationKey=Sanitized;IngestionEndpoint=Sanitized;LiveEndpoint=Sanitized")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const webApp = new azure_native.web.WebApp("webApp", {
///     functionAppConfig: {
///         deployment: {
///             storage: {
///                 authentication: {
///                     storageAccountConnectionStringName: "TheAppSettingName",
///                     type: azure_native.web.AuthenticationType.StorageAccountConnectionString,
///                 },
///                 type: azure_native.web.FunctionsDeploymentStorageType.BlobContainer,
///                 value: "https://storageAccountName.blob.core.windows.net/containername",
///             },
///         },
///         runtime: {
///             name: azure_native.web.RuntimeName.Python,
///             version: "3.11",
///         },
///         scaleAndConcurrency: {
///             instanceMemoryMB: 2048,
///             maximumInstanceCount: 100,
///         },
///     },
///     kind: "functionapp,linux",
///     location: "East US",
///     name: "sitef6141",
///     resourceGroupName: "testrg123",
///     siteConfig: {
///         appSettings: [
///             {
///                 name: "AzureWebJobsStorage",
///                 value: "DefaultEndpointsProtocol=https;AccountName=StorageAccountName;AccountKey=Sanitized;EndpointSuffix=core.windows.net",
///             },
///             {
///                 name: "APPLICATIONINSIGHTS_CONNECTION_STRING",
///                 value: "InstrumentationKey=Sanitized;IngestionEndpoint=Sanitized;LiveEndpoint=Sanitized",
///             },
///         ],
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app = azure_native.web.WebApp("webApp",
///     function_app_config={
///         "deployment": {
///             "storage": {
///                 "authentication": {
///                     "storage_account_connection_string_name": "TheAppSettingName",
///                     "type": azure_native.web.AuthenticationType.STORAGE_ACCOUNT_CONNECTION_STRING,
///                 },
///                 "type": azure_native.web.FunctionsDeploymentStorageType.BLOB_CONTAINER,
///                 "value": "https://storageAccountName.blob.core.windows.net/containername",
///             },
///         },
///         "runtime": {
///             "name": azure_native.web.RuntimeName.PYTHON,
///             "version": "3.11",
///         },
///         "scale_and_concurrency": {
///             "instance_memory_mb": 2048,
///             "maximum_instance_count": 100,
///         },
///     },
///     kind="functionapp,linux",
///     location="East US",
///     name="sitef6141",
///     resource_group_name="testrg123",
///     site_config={
///         "app_settings": [
///             {
///                 "name": "AzureWebJobsStorage",
///                 "value": "DefaultEndpointsProtocol=https;AccountName=StorageAccountName;AccountKey=Sanitized;EndpointSuffix=core.windows.net",
///             },
///             {
///                 "name": "APPLICATIONINSIGHTS_CONNECTION_STRING",
///                 "value": "InstrumentationKey=Sanitized;IngestionEndpoint=Sanitized;LiveEndpoint=Sanitized",
///             },
///         ],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   webApp:
///     type: azure-native:web:WebApp
///     properties:
///       functionAppConfig:
///         deployment:
///           storage:
///             authentication:
///               storageAccountConnectionStringName: TheAppSettingName
///               type: StorageAccountConnectionString
///             type: blobContainer
///             value: https://storageAccountName.blob.core.windows.net/containername
///         runtime:
///           name: python
///           version: '3.11'
///         scaleAndConcurrency:
///           instanceMemoryMB: 2048
///           maximumInstanceCount: 100
///       kind: functionapp,linux
///       location: East US
///       name: sitef6141
///       resourceGroupName: testrg123
///       siteConfig:
///         appSettings:
///           - name: AzureWebJobsStorage
///             value: DefaultEndpointsProtocol=https;AccountName=StorageAccountName;AccountKey=Sanitized;EndpointSuffix=core.windows.net
///           - name: APPLICATIONINSIGHTS_CONNECTION_STRING
///             value: InstrumentationKey=Sanitized;IngestionEndpoint=Sanitized;LiveEndpoint=Sanitized
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Flex Consumption function app with details
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webApp = new AzureNative.Web.WebApp("webApp", new()
///     {
///         FunctionAppConfig = new AzureNative.Web.Inputs.FunctionAppConfigArgs
///         {
///             Deployment = new AzureNative.Web.Inputs.FunctionsDeploymentArgs
///             {
///                 Storage = new AzureNative.Web.Inputs.FunctionsDeploymentStorageArgs
///                 {
///                     Authentication = new AzureNative.Web.Inputs.FunctionsDeploymentAuthenticationArgs
///                     {
///                         StorageAccountConnectionStringName = "TheAppSettingName",
///                         Type = AzureNative.Web.AuthenticationType.StorageAccountConnectionString,
///                     },
///                     Type = AzureNative.Web.FunctionsDeploymentStorageType.BlobContainer,
///                     Value = "https://storageAccountName.blob.core.windows.net/containername",
///                 },
///             },
///             Runtime = new AzureNative.Web.Inputs.FunctionsRuntimeArgs
///             {
///                 Name = AzureNative.Web.RuntimeName.Python,
///                 Version = "3.11",
///             },
///             ScaleAndConcurrency = new AzureNative.Web.Inputs.FunctionsScaleAndConcurrencyArgs
///             {
///                 AlwaysReady = new[]
///                 {
///                     new AzureNative.Web.Inputs.FunctionsAlwaysReadyConfigArgs
///                     {
///                         InstanceCount = 2,
///                         Name = "http",
///                     },
///                 },
///                 InstanceMemoryMB = 2048,
///                 MaximumInstanceCount = 100,
///                 Triggers = new AzureNative.Web.Inputs.FunctionsScaleAndConcurrencyTriggersArgs
///                 {
///                     Http = new AzureNative.Web.Inputs.FunctionsScaleAndConcurrencyHttpArgs
///                     {
///                         PerInstanceConcurrency = 16,
///                     },
///                 },
///             },
///         },
///         Kind = "functionapp,linux",
///         Location = "East US",
///         Name = "sitef6141",
///         ResourceGroupName = "testrg123",
///         SiteConfig = new AzureNative.Web.Inputs.SiteConfigArgs
///         {
///             AppSettings = new[]
///             {
///                 new AzureNative.Web.Inputs.NameValuePairArgs
///                 {
///                     Name = "AzureWebJobsStorage",
///                     Value = "DefaultEndpointsProtocol=https;AccountName=StorageAccountName;AccountKey=Sanitized;EndpointSuffix=core.windows.net",
///                 },
///                 new AzureNative.Web.Inputs.NameValuePairArgs
///                 {
///                     Name = "APPLICATIONINSIGHTS_CONNECTION_STRING",
///                     Value = "InstrumentationKey=Sanitized;IngestionEndpoint=Sanitized;LiveEndpoint=Sanitized",
///                 },
///             },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewWebApp(ctx, "webApp", &web.WebAppArgs{
/// 			FunctionAppConfig: &web.FunctionAppConfigArgs{
/// 				Deployment: &web.FunctionsDeploymentArgs{
/// 					Storage: &web.FunctionsDeploymentStorageArgs{
/// 						Authentication: &web.FunctionsDeploymentAuthenticationArgs{
/// 							StorageAccountConnectionStringName: pulumi.String("TheAppSettingName"),
/// 							Type:                               pulumi.String(web.AuthenticationTypeStorageAccountConnectionString),
/// 						},
/// 						Type:  pulumi.String(web.FunctionsDeploymentStorageTypeBlobContainer),
/// 						Value: pulumi.String("https://storageAccountName.blob.core.windows.net/containername"),
/// 					},
/// 				},
/// 				Runtime: &web.FunctionsRuntimeArgs{
/// 					Name:    pulumi.String(web.RuntimeNamePython),
/// 					Version: pulumi.String("3.11"),
/// 				},
/// 				ScaleAndConcurrency: &web.FunctionsScaleAndConcurrencyArgs{
/// 					AlwaysReady: web.FunctionsAlwaysReadyConfigArray{
/// 						&web.FunctionsAlwaysReadyConfigArgs{
/// 							InstanceCount: pulumi.Int(2),
/// 							Name:          pulumi.String("http"),
/// 						},
/// 					},
/// 					InstanceMemoryMB:     pulumi.Int(2048),
/// 					MaximumInstanceCount: pulumi.Int(100),
/// 					Triggers: &web.FunctionsScaleAndConcurrencyTriggersArgs{
/// 						Http: &web.FunctionsScaleAndConcurrencyHttpArgs{
/// 							PerInstanceConcurrency: pulumi.Int(16),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Kind:              pulumi.String("functionapp,linux"),
/// 			Location:          pulumi.String("East US"),
/// 			Name:              pulumi.String("sitef6141"),
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			SiteConfig: &web.SiteConfigArgs{
/// 				AppSettings: web.NameValuePairArray{
/// 					&web.NameValuePairArgs{
/// 						Name:  pulumi.String("AzureWebJobsStorage"),
/// 						Value: pulumi.String("DefaultEndpointsProtocol=https;AccountName=StorageAccountName;AccountKey=Sanitized;EndpointSuffix=core.windows.net"),
/// 					},
/// 					&web.NameValuePairArgs{
/// 						Name:  pulumi.String("APPLICATIONINSIGHTS_CONNECTION_STRING"),
/// 						Value: pulumi.String("InstrumentationKey=Sanitized;IngestionEndpoint=Sanitized;LiveEndpoint=Sanitized"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.web.WebApp;
/// import com.pulumi.azurenative.web.WebAppArgs;
/// import com.pulumi.azurenative.web.inputs.FunctionAppConfigArgs;
/// import com.pulumi.azurenative.web.inputs.FunctionsDeploymentArgs;
/// import com.pulumi.azurenative.web.inputs.FunctionsDeploymentStorageArgs;
/// import com.pulumi.azurenative.web.inputs.FunctionsDeploymentAuthenticationArgs;
/// import com.pulumi.azurenative.web.inputs.FunctionsRuntimeArgs;
/// import com.pulumi.azurenative.web.inputs.FunctionsScaleAndConcurrencyArgs;
/// import com.pulumi.azurenative.web.inputs.FunctionsScaleAndConcurrencyTriggersArgs;
/// import com.pulumi.azurenative.web.inputs.FunctionsScaleAndConcurrencyHttpArgs;
/// import com.pulumi.azurenative.web.inputs.SiteConfigArgs;
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
///         var webApp = new WebApp("webApp", WebAppArgs.builder()
///             .functionAppConfig(FunctionAppConfigArgs.builder()
///                 .deployment(FunctionsDeploymentArgs.builder()
///                     .storage(FunctionsDeploymentStorageArgs.builder()
///                         .authentication(FunctionsDeploymentAuthenticationArgs.builder()
///                             .storageAccountConnectionStringName("TheAppSettingName")
///                             .type("StorageAccountConnectionString")
///                             .build())
///                         .type("blobContainer")
///                         .value("https://storageAccountName.blob.core.windows.net/containername")
///                         .build())
///                     .build())
///                 .runtime(FunctionsRuntimeArgs.builder()
///                     .name("python")
///                     .version("3.11")
///                     .build())
///                 .scaleAndConcurrency(FunctionsScaleAndConcurrencyArgs.builder()
///                     .alwaysReady(FunctionsAlwaysReadyConfigArgs.builder()
///                         .instanceCount(2)
///                         .name("http")
///                         .build())
///                     .instanceMemoryMB(2048)
///                     .maximumInstanceCount(100)
///                     .triggers(FunctionsScaleAndConcurrencyTriggersArgs.builder()
///                         .http(FunctionsScaleAndConcurrencyHttpArgs.builder()
///                             .perInstanceConcurrency(16)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .kind("functionapp,linux")
///             .location("East US")
///             .name("sitef6141")
///             .resourceGroupName("testrg123")
///             .siteConfig(SiteConfigArgs.builder()
///                 .appSettings(
///                     NameValuePairArgs.builder()
///                         .name("AzureWebJobsStorage")
///                         .value("DefaultEndpointsProtocol=https;AccountName=StorageAccountName;AccountKey=Sanitized;EndpointSuffix=core.windows.net")
///                         .build(),
///                     NameValuePairArgs.builder()
///                         .name("APPLICATIONINSIGHTS_CONNECTION_STRING")
///                         .value("InstrumentationKey=Sanitized;IngestionEndpoint=Sanitized;LiveEndpoint=Sanitized")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const webApp = new azure_native.web.WebApp("webApp", {
///     functionAppConfig: {
///         deployment: {
///             storage: {
///                 authentication: {
///                     storageAccountConnectionStringName: "TheAppSettingName",
///                     type: azure_native.web.AuthenticationType.StorageAccountConnectionString,
///                 },
///                 type: azure_native.web.FunctionsDeploymentStorageType.BlobContainer,
///                 value: "https://storageAccountName.blob.core.windows.net/containername",
///             },
///         },
///         runtime: {
///             name: azure_native.web.RuntimeName.Python,
///             version: "3.11",
///         },
///         scaleAndConcurrency: {
///             alwaysReady: [{
///                 instanceCount: 2,
///                 name: "http",
///             }],
///             instanceMemoryMB: 2048,
///             maximumInstanceCount: 100,
///             triggers: {
///                 http: {
///                     perInstanceConcurrency: 16,
///                 },
///             },
///         },
///     },
///     kind: "functionapp,linux",
///     location: "East US",
///     name: "sitef6141",
///     resourceGroupName: "testrg123",
///     siteConfig: {
///         appSettings: [
///             {
///                 name: "AzureWebJobsStorage",
///                 value: "DefaultEndpointsProtocol=https;AccountName=StorageAccountName;AccountKey=Sanitized;EndpointSuffix=core.windows.net",
///             },
///             {
///                 name: "APPLICATIONINSIGHTS_CONNECTION_STRING",
///                 value: "InstrumentationKey=Sanitized;IngestionEndpoint=Sanitized;LiveEndpoint=Sanitized",
///             },
///         ],
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app = azure_native.web.WebApp("webApp",
///     function_app_config={
///         "deployment": {
///             "storage": {
///                 "authentication": {
///                     "storage_account_connection_string_name": "TheAppSettingName",
///                     "type": azure_native.web.AuthenticationType.STORAGE_ACCOUNT_CONNECTION_STRING,
///                 },
///                 "type": azure_native.web.FunctionsDeploymentStorageType.BLOB_CONTAINER,
///                 "value": "https://storageAccountName.blob.core.windows.net/containername",
///             },
///         },
///         "runtime": {
///             "name": azure_native.web.RuntimeName.PYTHON,
///             "version": "3.11",
///         },
///         "scale_and_concurrency": {
///             "always_ready": [{
///                 "instance_count": 2,
///                 "name": "http",
///             }],
///             "instance_memory_mb": 2048,
///             "maximum_instance_count": 100,
///             "triggers": {
///                 "http": {
///                     "per_instance_concurrency": 16,
///                 },
///             },
///         },
///     },
///     kind="functionapp,linux",
///     location="East US",
///     name="sitef6141",
///     resource_group_name="testrg123",
///     site_config={
///         "app_settings": [
///             {
///                 "name": "AzureWebJobsStorage",
///                 "value": "DefaultEndpointsProtocol=https;AccountName=StorageAccountName;AccountKey=Sanitized;EndpointSuffix=core.windows.net",
///             },
///             {
///                 "name": "APPLICATIONINSIGHTS_CONNECTION_STRING",
///                 "value": "InstrumentationKey=Sanitized;IngestionEndpoint=Sanitized;LiveEndpoint=Sanitized",
///             },
///         ],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   webApp:
///     type: azure-native:web:WebApp
///     properties:
///       functionAppConfig:
///         deployment:
///           storage:
///             authentication:
///               storageAccountConnectionStringName: TheAppSettingName
///               type: StorageAccountConnectionString
///             type: blobContainer
///             value: https://storageAccountName.blob.core.windows.net/containername
///         runtime:
///           name: python
///           version: '3.11'
///         scaleAndConcurrency:
///           alwaysReady:
///             - instanceCount: 2
///               name: http
///           instanceMemoryMB: 2048
///           maximumInstanceCount: 100
///           triggers:
///             http:
///               perInstanceConcurrency: 16
///       kind: functionapp,linux
///       location: East US
///       name: sitef6141
///       resourceGroupName: testrg123
///       siteConfig:
///         appSettings:
///           - name: AzureWebJobsStorage
///             value: DefaultEndpointsProtocol=https;AccountName=StorageAccountName;AccountKey=Sanitized;EndpointSuffix=core.windows.net
///           - name: APPLICATIONINSIGHTS_CONNECTION_STRING
///             value: InstrumentationKey=Sanitized;IngestionEndpoint=Sanitized;LiveEndpoint=Sanitized
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update web app
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webApp = new AzureNative.Web.WebApp("webApp", new()
///     {
///         Kind = "app",
///         Location = "East US",
///         Name = "sitef6141",
///         ResourceGroupName = "testrg123",
///         ServerFarmId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Web/serverfarms/DefaultAsp",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewWebApp(ctx, "webApp", &web.WebAppArgs{
/// 			Kind:              pulumi.String("app"),
/// 			Location:          pulumi.String("East US"),
/// 			Name:              pulumi.String("sitef6141"),
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			ServerFarmId:      pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Web/serverfarms/DefaultAsp"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.web.WebApp;
/// import com.pulumi.azurenative.web.WebAppArgs;
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
///         var webApp = new WebApp("webApp", WebAppArgs.builder()
///             .kind("app")
///             .location("East US")
///             .name("sitef6141")
///             .resourceGroupName("testrg123")
///             .serverFarmId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Web/serverfarms/DefaultAsp")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const webApp = new azure_native.web.WebApp("webApp", {
///     kind: "app",
///     location: "East US",
///     name: "sitef6141",
///     resourceGroupName: "testrg123",
///     serverFarmId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Web/serverfarms/DefaultAsp",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app = azure_native.web.WebApp("webApp",
///     kind="app",
///     location="East US",
///     name="sitef6141",
///     resource_group_name="testrg123",
///     server_farm_id="/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Web/serverfarms/DefaultAsp")
///
/// ```
///
/// ```yaml
/// resources:
///   webApp:
///     type: azure-native:web:WebApp
///     properties:
///       kind: app
///       location: East US
///       name: sitef6141
///       resourceGroupName: testrg123
///       serverFarmId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Web/serverfarms/DefaultAsp
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebApp sitef6141 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}
/// ```
class WebApp extends pulumi.CustomResource {
  /// Specifies the scope of uniqueness for the default hostname during resource creation
  late final pulumi.Output<String?> autoGeneratedDomainNameLabelScope;

  /// Management information availability state for the app.
  late final pulumi.Output<String> availabilityState;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// &lt;code&gt;true&lt;/code&gt; to enable client affinity; &lt;code&gt;false&lt;/code&gt; to stop sending session affinity cookies, which route client requests in the same session to the same instance. Default is &lt;code&gt;true&lt;/code&gt;.
  late final pulumi.Output<bool?> clientAffinityEnabled;

  /// &lt;code&gt;true&lt;/code&gt; to enable client certificate authentication (TLS mutual authentication); otherwise, &lt;code&gt;false&lt;/code&gt;. Default is &lt;code&gt;false&lt;/code&gt;.
  late final pulumi.Output<bool?> clientCertEnabled;

  /// client certificate authentication comma-separated exclusion paths
  late final pulumi.Output<String?> clientCertExclusionPaths;

  /// This composes with ClientCertEnabled setting.
  /// - ClientCertEnabled: false means ClientCert is ignored.
  /// - ClientCertEnabled: true and ClientCertMode: Required means ClientCert is required.
  /// - ClientCertEnabled: true and ClientCertMode: Optional means ClientCert is optional or accepted.
  late final pulumi.Output<String?> clientCertMode;

  /// Size of the function container.
  late final pulumi.Output<int?> containerSize;

  /// Unique identifier that verifies the custom domains assigned to the app. Customer will add this id to a txt record for verification.
  late final pulumi.Output<String?> customDomainVerificationId;

  /// Maximum allowed daily memory-time quota (applicable on dynamic apps only).
  late final pulumi.Output<int?> dailyMemoryTimeQuota;

  /// Dapr configuration of the app.
  late final pulumi.Output<DaprConfigResponse?> daprConfig;

  /// Default hostname of the app. Read-only.
  late final pulumi.Output<String> defaultHostName;

  /// Property to configure various DNS related settings for a site.
  late final pulumi.Output<SiteDnsConfigResponse?> dnsConfiguration;

  /// &lt;code&gt;true&lt;/code&gt; if the app is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;. Setting this value to false disables the app (takes the app offline).
  late final pulumi.Output<bool?> enabled;

  /// Enabled hostnames for the app.Hostnames need to be assigned (see HostNames) AND enabled. Otherwise,
  /// the app is not served on those hostnames.
  late final pulumi.Output<List<String>> enabledHostNames;

  /// Whether to use end to end encryption between the FrontEnd and the Worker
  late final pulumi.Output<bool?> endToEndEncryptionEnabled;

  /// Extended Location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// Configuration specific of the Azure Function app.
  late final pulumi.Output<FunctionAppConfigResponse?> functionAppConfig;

  /// Hostname SSL states are used to manage the SSL bindings for app's hostnames.
  late final pulumi.Output<List<Map<String, dynamic>>?> hostNameSslStates;

  /// Hostnames associated with the app.
  late final pulumi.Output<List<String>> hostNames;

  /// &lt;code&gt;true&lt;/code&gt; to disable the public hostnames of the app; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// If &lt;code&gt;true&lt;/code&gt;, the app is only accessible via API management process.
  late final pulumi.Output<bool?> hostNamesDisabled;

  /// App Service Environment to use for the app.
  late final pulumi.Output<HostingEnvironmentProfileResponse?>
  hostingEnvironmentProfile;

  /// HttpsOnly: configures a web site to accept only https requests. Issues redirect for
  /// http requests
  late final pulumi.Output<bool?> httpsOnly;

  /// Hyper-V sandbox.
  late final pulumi.Output<bool?> hyperV;

  /// Managed service identity.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// Specifies an operation id if this site has a pending operation.
  late final pulumi.Output<String> inProgressOperationId;

  /// Specifies the IP mode of the app.
  late final pulumi.Output<String?> ipMode;

  /// &lt;code&gt;true&lt;/code&gt; if the app is a default container; otherwise, &lt;code&gt;false&lt;/code&gt;.
  late final pulumi.Output<bool> isDefaultContainer;

  /// Obsolete: Hyper-V sandbox.
  late final pulumi.Output<bool?> isXenon;

  /// Identity to use for Key Vault Reference authentication.
  late final pulumi.Output<String?> keyVaultReferenceIdentity;

  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  late final pulumi.Output<String?> kind;

  /// Last time the app was modified, in UTC. Read-only.
  late final pulumi.Output<String> lastModifiedTimeUtc;

  /// Resource Location.
  late final pulumi.Output<String> location;

  /// Azure Resource Manager ID of the customer's selected Managed Environment on which to host this app. This must be of the form /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.App/managedEnvironments/{managedEnvironmentName}
  late final pulumi.Output<String?> managedEnvironmentId;

  /// Maximum number of workers.
  /// This only applies to Functions container.
  late final pulumi.Output<int> maxNumberOfWorkers;

  /// Resource Name.
  late final pulumi.Output<String> name;

  /// List of IP addresses that the app uses for outbound connections (e.g. database access). Includes VIPs from tenants that site can be hosted with current settings. Read-only.
  late final pulumi.Output<String> outboundIpAddresses;

  /// List of IP addresses that the app uses for outbound connections (e.g. database access). Includes VIPs from all tenants except dataComponent. Read-only.
  late final pulumi.Output<String> possibleOutboundIpAddresses;

  /// Property to allow or block all public traffic. Allowed Values: 'Enabled', 'Disabled' or an empty string.
  late final pulumi.Output<String?> publicNetworkAccess;

  /// Site redundancy mode
  late final pulumi.Output<String?> redundancyMode;

  /// Name of the repository site.
  late final pulumi.Output<String> repositorySiteName;

  /// &lt;code&gt;true&lt;/code&gt; if reserved; otherwise, &lt;code&gt;false&lt;/code&gt;.
  late final pulumi.Output<bool?> reserved;

  /// Function app resource requirements.
  late final pulumi.Output<ResourceConfigResponse?> resourceConfig;

  /// Name of the resource group the app belongs to. Read-only.
  late final pulumi.Output<String> resourceGroup;

  /// &lt;code&gt;true&lt;/code&gt; to stop SCM (KUDU) site when the app is stopped; otherwise, &lt;code&gt;false&lt;/code&gt;. The default is &lt;code&gt;false&lt;/code&gt;.
  late final pulumi.Output<bool?> scmSiteAlsoStopped;

  /// Resource ID of the associated App Service plan, formatted as: "/subscriptions/{subscriptionID}/resourceGroups/{groupName}/providers/Microsoft.Web/serverfarms/{appServicePlanName}".
  late final pulumi.Output<String?> serverFarmId;

  /// Configuration of the app.
  late final pulumi.Output<SiteConfigResponse?> siteConfig;

  /// Current SKU of application based on associated App Service Plan. Some valid SKU values are Free, Shared, Basic, Dynamic, FlexConsumption, Standard, Premium, PremiumV2, PremiumV3, Isolated, IsolatedV2
  late final pulumi.Output<String> sku;

  /// Status of the last deployment slot swap operation.
  late final pulumi.Output<SlotSwapStatusResponse> slotSwapStatus;

  /// Current state of the app.
  late final pulumi.Output<String> state;

  /// Checks if Customer provided storage account is required
  late final pulumi.Output<bool?> storageAccountRequired;

  /// App suspended till in case memory-time quota is exceeded.
  late final pulumi.Output<String> suspendedTill;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Specifies which deployment slot this app will swap into. Read-only.
  late final pulumi.Output<String> targetSwapSlot;

  /// Azure Traffic Manager hostnames associated with the app. Read-only.
  late final pulumi.Output<List<String>> trafficManagerHostNames;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// State indicating whether the app has exceeded its quota usage. Read-only.
  late final pulumi.Output<String> usageState;

  /// Azure Resource Manager ID of the Virtual network and subnet to be joined by Regional VNET Integration.
  /// This must be of the form /subscriptions/{subscriptionName}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}
  late final pulumi.Output<String?> virtualNetworkSubnetId;

  /// To enable Backup and Restore operations over virtual network
  late final pulumi.Output<bool?> vnetBackupRestoreEnabled;

  /// To enable accessing content over virtual network
  late final pulumi.Output<bool?> vnetContentShareEnabled;

  /// To enable pulling image over Virtual Network
  late final pulumi.Output<bool?> vnetImagePullEnabled;

  /// Virtual Network Route All enabled. This causes all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied.
  late final pulumi.Output<bool?> vnetRouteAllEnabled;

  /// Workload profile name for function app to execute on.
  late final pulumi.Output<String?> workloadProfileName;

  /// Creates a new [WebApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebApp]. {@macro pulumi_web_web_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebApp(String name, {WebAppArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:web:WebApp',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    autoGeneratedDomainNameLabelScope = registerOutput<String?>(
      'autoGeneratedDomainNameLabelScope',
    );
    availabilityState = registerOutput<String>('availabilityState');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    clientCertEnabled = registerOutput<bool?>('clientCertEnabled');
    clientCertExclusionPaths = registerOutput<String?>(
      'clientCertExclusionPaths',
    );
    clientCertMode = registerOutput<String?>('clientCertMode');
    containerSize = registerOutput<int?>('containerSize');
    customDomainVerificationId = registerOutput<String?>(
      'customDomainVerificationId',
    );
    dailyMemoryTimeQuota = registerOutput<int?>('dailyMemoryTimeQuota');
    daprConfig = registerOutput<DaprConfigResponse?>('daprConfig');
    defaultHostName = registerOutput<String>('defaultHostName');
    dnsConfiguration = registerOutput<SiteDnsConfigResponse?>(
      'dnsConfiguration',
    );
    enabled = registerOutput<bool?>('enabled');
    enabledHostNames = registerOutput<List<String>>('enabledHostNames');
    endToEndEncryptionEnabled = registerOutput<bool?>(
      'endToEndEncryptionEnabled',
    );
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    functionAppConfig = registerOutput<FunctionAppConfigResponse?>(
      'functionAppConfig',
    );
    hostNameSslStates = registerOutput<List<Map<String, dynamic>>?>(
      'hostNameSslStates',
    );
    hostNames = registerOutput<List<String>>('hostNames');
    hostNamesDisabled = registerOutput<bool?>('hostNamesDisabled');
    hostingEnvironmentProfile =
        registerOutput<HostingEnvironmentProfileResponse?>(
          'hostingEnvironmentProfile',
        );
    httpsOnly = registerOutput<bool?>('httpsOnly');
    hyperV = registerOutput<bool?>('hyperV');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    inProgressOperationId = registerOutput<String>('inProgressOperationId');
    ipMode = registerOutput<String?>('ipMode');
    isDefaultContainer = registerOutput<bool>('isDefaultContainer');
    isXenon = registerOutput<bool?>('isXenon');
    keyVaultReferenceIdentity = registerOutput<String?>(
      'keyVaultReferenceIdentity',
    );
    kind = registerOutput<String?>('kind');
    lastModifiedTimeUtc = registerOutput<String>('lastModifiedTimeUtc');
    location = registerOutput<String>('location');
    managedEnvironmentId = registerOutput<String?>('managedEnvironmentId');
    maxNumberOfWorkers = registerOutput<int>('maxNumberOfWorkers');
    this.name = registerOutput<String>('name');
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddresses = registerOutput<String>(
      'possibleOutboundIpAddresses',
    );
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    redundancyMode = registerOutput<String?>('redundancyMode');
    repositorySiteName = registerOutput<String>('repositorySiteName');
    reserved = registerOutput<bool?>('reserved');
    resourceConfig = registerOutput<ResourceConfigResponse?>('resourceConfig');
    resourceGroup = registerOutput<String>('resourceGroup');
    scmSiteAlsoStopped = registerOutput<bool?>('scmSiteAlsoStopped');
    serverFarmId = registerOutput<String?>('serverFarmId');
    siteConfig = registerOutput<SiteConfigResponse?>('siteConfig');
    sku = registerOutput<String>('sku');
    slotSwapStatus = registerOutput<SlotSwapStatusResponse>('slotSwapStatus');
    state = registerOutput<String>('state');
    storageAccountRequired = registerOutput<bool?>('storageAccountRequired');
    suspendedTill = registerOutput<String>('suspendedTill');
    tags = registerOutput<Map<String, String>?>('tags');
    targetSwapSlot = registerOutput<String>('targetSwapSlot');
    trafficManagerHostNames = registerOutput<List<String>>(
      'trafficManagerHostNames',
    );
    type = registerOutput<String>('type');
    usageState = registerOutput<String>('usageState');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    vnetBackupRestoreEnabled = registerOutput<bool?>(
      'vnetBackupRestoreEnabled',
    );
    vnetContentShareEnabled = registerOutput<bool?>('vnetContentShareEnabled');
    vnetImagePullEnabled = registerOutput<bool?>('vnetImagePullEnabled');
    vnetRouteAllEnabled = registerOutput<bool?>('vnetRouteAllEnabled');
    workloadProfileName = registerOutput<String?>('workloadProfileName');
  }
}
