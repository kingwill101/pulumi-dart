import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_diagnostic_args.dart';
import 'api_diagnostic_backend_request.dart';
import 'api_diagnostic_backend_response.dart';
import 'api_diagnostic_frontend_request.dart';
import 'api_diagnostic_frontend_response.dart';
import 'api_diagnostic_state.dart';

/// Manages a API Management Service API Diagnostics Logs.
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
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "example-appinsights",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "My Company",
///     publisherEmail: "company@mycompany.io",
///     skuName: "Developer_1",
/// });
/// const exampleApi = new azure.apimanagement.Api("example", {
///     name: "example-api",
///     resourceGroupName: example.name,
///     apiManagementName: exampleService.name,
///     revision: "1",
///     displayName: "Example API",
///     path: "example",
///     protocols: ["https"],
///     "import": {
///         contentFormat: "swagger-link-json",
///         contentValue: "https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json",
///     },
/// });
/// const exampleLogger = new azure.apimanagement.Logger("example", {
///     name: "example-apimlogger",
///     apiManagementName: exampleService.name,
///     resourceGroupName: example.name,
///     applicationInsights: {
///         instrumentationKey: exampleInsights.instrumentationKey,
///     },
/// });
/// const exampleApiDiagnostic = new azure.apimanagement.ApiDiagnostic("example", {
///     identifier: "applicationinsights",
///     resourceGroupName: example.name,
///     apiManagementName: exampleService.name,
///     apiName: exampleApi.name,
///     apiManagementLoggerId: exampleLogger.id,
///     samplingPercentage: 5,
///     alwaysLogErrors: true,
///     logClientIp: true,
///     verbosity: "verbose",
///     httpCorrelationProtocol: "W3C",
///     frontendRequest: {
///         bodyBytes: 32,
///         headersToLogs: [
///             "content-type",
///             "accept",
///             "origin",
///         ],
///     },
///     frontendResponse: {
///         bodyBytes: 32,
///         headersToLogs: [
///             "content-type",
///             "content-length",
///             "origin",
///         ],
///     },
///     backendRequest: {
///         bodyBytes: 32,
///         headersToLogs: [
///             "content-type",
///             "accept",
///             "origin",
///         ],
///     },
///     backendResponse: {
///         bodyBytes: 32,
///         headersToLogs: [
///             "content-type",
///             "content-length",
///             "origin",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_insights = azure.appinsights.Insights("example",
///     name="example-appinsights",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="My Company",
///     publisher_email="company@mycompany.io",
///     sku_name="Developer_1")
/// example_api = azure.apimanagement.Api("example",
///     name="example-api",
///     resource_group_name=example.name,
///     api_management_name=example_service.name,
///     revision="1",
///     display_name="Example API",
///     path="example",
///     protocols=["https"],
///     import_={
///         "content_format": "swagger-link-json",
///         "content_value": "https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json",
///     })
/// example_logger = azure.apimanagement.Logger("example",
///     name="example-apimlogger",
///     api_management_name=example_service.name,
///     resource_group_name=example.name,
///     application_insights={
///         "instrumentation_key": example_insights.instrumentation_key,
///     })
/// example_api_diagnostic = azure.apimanagement.ApiDiagnostic("example",
///     identifier="applicationinsights",
///     resource_group_name=example.name,
///     api_management_name=example_service.name,
///     api_name=example_api.name,
///     api_management_logger_id=example_logger.id,
///     sampling_percentage=float(5),
///     always_log_errors=True,
///     log_client_ip=True,
///     verbosity="verbose",
///     http_correlation_protocol="W3C",
///     frontend_request={
///         "body_bytes": 32,
///         "headers_to_logs": [
///             "content-type",
///             "accept",
///             "origin",
///         ],
///     },
///     frontend_response={
///         "body_bytes": 32,
///         "headers_to_logs": [
///             "content-type",
///             "content-length",
///             "origin",
///         ],
///     },
///     backend_request={
///         "body_bytes": 32,
///         "headers_to_logs": [
///             "content-type",
///             "accept",
///             "origin",
///         ],
///     },
///     backend_response={
///         "body_bytes": 32,
///         "headers_to_logs": [
///             "content-type",
///             "content-length",
///             "origin",
///         ],
///     })
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
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "example-appinsights",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "My Company",
///         PublisherEmail = "company@mycompany.io",
///         SkuName = "Developer_1",
///     });
///
///     var exampleApi = new Azure.ApiManagement.Api("example", new()
///     {
///         Name = "example-api",
///         ResourceGroupName = example.Name,
///         ApiManagementName = exampleService.Name,
///         Revision = "1",
///         DisplayName = "Example API",
///         Path = "example",
///         Protocols = new[]
///         {
///             "https",
///         },
///         Import = new Azure.ApiManagement.Inputs.ApiImportArgs
///         {
///             ContentFormat = "swagger-link-json",
///             ContentValue = "https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json",
///         },
///     });
///
///     var exampleLogger = new Azure.ApiManagement.Logger("example", new()
///     {
///         Name = "example-apimlogger",
///         ApiManagementName = exampleService.Name,
///         ResourceGroupName = example.Name,
///         ApplicationInsights = new Azure.ApiManagement.Inputs.LoggerApplicationInsightsArgs
///         {
///             InstrumentationKey = exampleInsights.InstrumentationKey,
///         },
///     });
///
///     var exampleApiDiagnostic = new Azure.ApiManagement.ApiDiagnostic("example", new()
///     {
///         Identifier = "applicationinsights",
///         ResourceGroupName = example.Name,
///         ApiManagementName = exampleService.Name,
///         ApiName = exampleApi.Name,
///         ApiManagementLoggerId = exampleLogger.Id,
///         SamplingPercentage = 5,
///         AlwaysLogErrors = true,
///         LogClientIp = true,
///         Verbosity = "verbose",
///         HttpCorrelationProtocol = "W3C",
///         FrontendRequest = new Azure.ApiManagement.Inputs.ApiDiagnosticFrontendRequestArgs
///         {
///             BodyBytes = 32,
///             HeadersToLogs = new[]
///             {
///                 "content-type",
///                 "accept",
///                 "origin",
///             },
///         },
///         FrontendResponse = new Azure.ApiManagement.Inputs.ApiDiagnosticFrontendResponseArgs
///         {
///             BodyBytes = 32,
///             HeadersToLogs = new[]
///             {
///                 "content-type",
///                 "content-length",
///                 "origin",
///             },
///         },
///         BackendRequest = new Azure.ApiManagement.Inputs.ApiDiagnosticBackendRequestArgs
///         {
///             BodyBytes = 32,
///             HeadersToLogs = new[]
///             {
///                 "content-type",
///                 "accept",
///                 "origin",
///             },
///         },
///         BackendResponse = new Azure.ApiManagement.Inputs.ApiDiagnosticBackendResponseArgs
///         {
///             BodyBytes = 32,
///             HeadersToLogs = new[]
///             {
///                 "content-type",
///                 "content-length",
///                 "origin",
///             },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
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
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("example-appinsights"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("My Company"),
/// 			PublisherEmail:    pulumi.String("company@mycompany.io"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApi, err := apimanagement.NewApi(ctx, "example", &apimanagement.ApiArgs{
/// 			Name:              pulumi.String("example-api"),
/// 			ResourceGroupName: example.Name,
/// 			ApiManagementName: exampleService.Name,
/// 			Revision:          pulumi.String("1"),
/// 			DisplayName:       pulumi.String("Example API"),
/// 			Path:              pulumi.String("example"),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("https"),
/// 			},
/// 			Import: &apimanagement.ApiImportArgs{
/// 				ContentFormat: pulumi.String("swagger-link-json"),
/// 				ContentValue:  pulumi.String("https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogger, err := apimanagement.NewLogger(ctx, "example", &apimanagement.LoggerArgs{
/// 			Name:              pulumi.String("example-apimlogger"),
/// 			ApiManagementName: exampleService.Name,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationInsights: &apimanagement.LoggerApplicationInsightsArgs{
/// 				InstrumentationKey: exampleInsights.InstrumentationKey,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewApiDiagnostic(ctx, "example", &apimanagement.ApiDiagnosticArgs{
/// 			Identifier:              pulumi.String("applicationinsights"),
/// 			ResourceGroupName:       example.Name,
/// 			ApiManagementName:       exampleService.Name,
/// 			ApiName:                 exampleApi.Name,
/// 			ApiManagementLoggerId:   exampleLogger.ID().ToIDOutput().ToStringOutput(),
/// 			SamplingPercentage:      pulumi.Float64(5),
/// 			AlwaysLogErrors:         pulumi.Bool(true),
/// 			LogClientIp:             pulumi.Bool(true),
/// 			Verbosity:               pulumi.String("verbose"),
/// 			HttpCorrelationProtocol: pulumi.String("W3C"),
/// 			FrontendRequest: &apimanagement.ApiDiagnosticFrontendRequestArgs{
/// 				BodyBytes: pulumi.Int(32),
/// 				HeadersToLogs: pulumi.StringArray{
/// 					pulumi.String("content-type"),
/// 					pulumi.String("accept"),
/// 					pulumi.String("origin"),
/// 				},
/// 			},
/// 			FrontendResponse: &apimanagement.ApiDiagnosticFrontendResponseArgs{
/// 				BodyBytes: pulumi.Int(32),
/// 				HeadersToLogs: pulumi.StringArray{
/// 					pulumi.String("content-type"),
/// 					pulumi.String("content-length"),
/// 					pulumi.String("origin"),
/// 				},
/// 			},
/// 			BackendRequest: &apimanagement.ApiDiagnosticBackendRequestArgs{
/// 				BodyBytes: pulumi.Int(32),
/// 				HeadersToLogs: pulumi.StringArray{
/// 					pulumi.String("content-type"),
/// 					pulumi.String("accept"),
/// 					pulumi.String("origin"),
/// 				},
/// 			},
/// 			BackendResponse: &apimanagement.ApiDiagnosticBackendResponseArgs{
/// 				BodyBytes: pulumi.Int(32),
/// 				HeadersToLogs: pulumi.StringArray{
/// 					pulumi.String("content-type"),
/// 					pulumi.String("content-length"),
/// 					pulumi.String("origin"),
/// 				},
/// 			},
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_appinsights_insights" "example" {
///   name                = "example-appinsights"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   application_type    = "web"
/// }
/// resource "azure_apimanagement_service" "example" {
///   name                = "example-apim"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   publisher_name      = "My Company"
///   publisher_email     = "company@mycompany.io"
///   sku_name            = "Developer_1"
/// }
/// resource "azure_apimanagement_api" "example" {
///   name                = "example-api"
///   resource_group_name = azure_core_resourcegroup.example.name
///   api_management_name = azure_apimanagement_service.example.name
///   revision            = "1"
///   display_name        = "Example API"
///   path                = "example"
///   protocols           = ["https"]
///   import = {
///     content_format = "swagger-link-json"
///     content_value  = "https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json"
///   }
/// }
/// resource "azure_apimanagement_logger" "example" {
///   name                = "example-apimlogger"
///   api_management_name = azure_apimanagement_service.example.name
///   resource_group_name = azure_core_resourcegroup.example.name
///   application_insights = {
///     instrumentation_key = azure_appinsights_insights.example.instrumentation_key
///   }
/// }
/// resource "azure_apimanagement_apidiagnostic" "example" {
///   identifier                = "applicationinsights"
///   resource_group_name       = azure_core_resourcegroup.example.name
///   api_management_name       = azure_apimanagement_service.example.name
///   api_name                  = azure_apimanagement_api.example.name
///   api_management_logger_id  = azure_apimanagement_logger.example.id
///   sampling_percentage       = 5
///   always_log_errors         = true
///   log_client_ip             = true
///   verbosity                 = "verbose"
///   http_correlation_protocol = "W3C"
///   frontend_request = {
///     body_bytes      = 32
///     headers_to_logs = ["content-type", "accept", "origin"]
///   }
///   frontend_response = {
///     body_bytes      = 32
///     headers_to_logs = ["content-type", "content-length", "origin"]
///   }
///   backend_request = {
///     body_bytes      = 32
///     headers_to_logs = ["content-type", "accept", "origin"]
///   }
///   backend_response = {
///     body_bytes      = 32
///     headers_to_logs = ["content-type", "content-length", "origin"]
///   }
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
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.Api;
/// import com.pulumi.azure.apimanagement.ApiArgs;
/// import com.pulumi.azure.apimanagement.inputs.ApiImportArgs;
/// import com.pulumi.azure.apimanagement.Logger;
/// import com.pulumi.azure.apimanagement.LoggerArgs;
/// import com.pulumi.azure.apimanagement.inputs.LoggerApplicationInsightsArgs;
/// import com.pulumi.azure.apimanagement.ApiDiagnostic;
/// import com.pulumi.azure.apimanagement.ApiDiagnosticArgs;
/// import com.pulumi.azure.apimanagement.inputs.ApiDiagnosticFrontendRequestArgs;
/// import com.pulumi.azure.apimanagement.inputs.ApiDiagnosticFrontendResponseArgs;
/// import com.pulumi.azure.apimanagement.inputs.ApiDiagnosticBackendRequestArgs;
/// import com.pulumi.azure.apimanagement.inputs.ApiDiagnosticBackendResponseArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("example-appinsights")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("My Company")
///             .publisherEmail("company@mycompany.io")
///             .skuName("Developer_1")
///             .build());
///
///         var exampleApi = new Api("exampleApi", ApiArgs.builder()
///             .name("example-api")
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .revision("1")
///             .displayName("Example API")
///             .path("example")
///             .protocols("https")
///             .import_(ApiImportArgs.builder()
///                 .contentFormat("swagger-link-json")
///                 .contentValue("https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json")
///                 .build())
///             .build());
///
///         var exampleLogger = new Logger("exampleLogger", LoggerArgs.builder()
///             .name("example-apimlogger")
///             .apiManagementName(exampleService.name())
///             .resourceGroupName(example.name())
///             .applicationInsights(LoggerApplicationInsightsArgs.builder()
///                 .instrumentationKey(exampleInsights.instrumentationKey())
///                 .build())
///             .build());
///
///         var exampleApiDiagnostic = new ApiDiagnostic("exampleApiDiagnostic", ApiDiagnosticArgs.builder()
///             .identifier("applicationinsights")
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .apiName(exampleApi.name())
///             .apiManagementLoggerId(exampleLogger.id())
///             .samplingPercentage(5.0)
///             .alwaysLogErrors(true)
///             .logClientIp(true)
///             .verbosity("verbose")
///             .httpCorrelationProtocol("W3C")
///             .frontendRequest(ApiDiagnosticFrontendRequestArgs.builder()
///                 .bodyBytes(32)
///                 .headersToLogs(
///                     "content-type",
///                     "accept",
///                     "origin")
///                 .build())
///             .frontendResponse(ApiDiagnosticFrontendResponseArgs.builder()
///                 .bodyBytes(32)
///                 .headersToLogs(
///                     "content-type",
///                     "content-length",
///                     "origin")
///                 .build())
///             .backendRequest(ApiDiagnosticBackendRequestArgs.builder()
///                 .bodyBytes(32)
///                 .headersToLogs(
///                     "content-type",
///                     "accept",
///                     "origin")
///                 .build())
///             .backendResponse(ApiDiagnosticBackendResponseArgs.builder()
///                 .bodyBytes(32)
///                 .headersToLogs(
///                     "content-type",
///                     "content-length",
///                     "origin")
///                 .build())
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
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: example-appinsights
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: My Company
///       publisherEmail: company@mycompany.io
///       skuName: Developer_1
///   exampleApi:
///     type: azure:apimanagement:Api
///     name: example
///     properties:
///       name: example-api
///       resourceGroupName: ${example.name}
///       apiManagementName: ${exampleService.name}
///       revision: '1'
///       displayName: Example API
///       path: example
///       protocols:
///         - https
///       import:
///         contentFormat: swagger-link-json
///         contentValue: https://raw.githubusercontent.com/hashicorp/terraform-provider-azurerm/refs/heads/main/internal/services/apimanagement/testdata/api_management_api_swagger.json
///   exampleLogger:
///     type: azure:apimanagement:Logger
///     name: example
///     properties:
///       name: example-apimlogger
///       apiManagementName: ${exampleService.name}
///       resourceGroupName: ${example.name}
///       applicationInsights:
///         instrumentationKey: ${exampleInsights.instrumentationKey}
///   exampleApiDiagnostic:
///     type: azure:apimanagement:ApiDiagnostic
///     name: example
///     properties:
///       identifier: applicationinsights
///       resourceGroupName: ${example.name}
///       apiManagementName: ${exampleService.name}
///       apiName: ${exampleApi.name}
///       apiManagementLoggerId: ${exampleLogger.id}
///       samplingPercentage: 5
///       alwaysLogErrors: true
///       logClientIp: true
///       verbosity: verbose
///       httpCorrelationProtocol: W3C
///       frontendRequest:
///         bodyBytes: 32
///         headersToLogs:
///           - content-type
///           - accept
///           - origin
///       frontendResponse:
///         bodyBytes: 32
///         headersToLogs:
///           - content-type
///           - content-length
///           - origin
///       backendRequest:
///         bodyBytes: 32
///         headersToLogs:
///           - content-type
///           - accept
///           - origin
///       backendResponse:
///         bodyBytes: 32
///         headersToLogs:
///           - content-type
///           - content-length
///           - origin
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
/// API Management Service API Diagnostics Logs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/apiDiagnostic:ApiDiagnostic example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/instance1/apis/api1/diagnostics/diagnostic1
/// ```
class ApiDiagnostic extends pulumi.CustomResource {
  /// Always log errors. Send telemetry if there is an erroneous condition, regardless of sampling settings.
  late final pulumi.Output<bool> alwaysLogErrors;
  /// The ID (name) of the Diagnostics Logger.
  late final pulumi.Output<String> apiManagementLoggerId;
  /// The name of the API Management Service instance. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The name of the API on which to configure the Diagnostics Logs. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  late final pulumi.Output<String> apiName;
  /// A `backendRequest` block as defined below.
  late final pulumi.Output<ApiDiagnosticBackendRequest> backendRequest;
  /// A `backendResponse` block as defined below.
  late final pulumi.Output<ApiDiagnosticBackendResponse> backendResponse;
  /// A `frontendRequest` block as defined below.
  late final pulumi.Output<ApiDiagnosticFrontendRequest> frontendRequest;
  /// A `frontendResponse` block as defined below.
  late final pulumi.Output<ApiDiagnosticFrontendResponse> frontendResponse;
  /// The HTTP Correlation Protocol to use. Possible values are `None`, `Legacy` or `W3C`.
  late final pulumi.Output<String> httpCorrelationProtocol;
  /// Identifier of the Diagnostics Logs. Possible values are `applicationinsights` and `azuremonitor`. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  late final pulumi.Output<String> identifier;
  /// Log client IP address.
  late final pulumi.Output<bool> logClientIp;
  /// The format of the Operation Name for Application Insights telemetries. Possible values are `Name`, and `Url`. Defaults to `Name`.
  late final pulumi.Output<String?> operationNameFormat;
  /// The name of the Resource Group where the API Management Service API Diagnostics Logs should exist. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Sampling (%). For high traffic APIs, please read this [documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-app-insights#performance-implications-and-log-sampling) to understand performance implications and log sampling. Valid values are between `0.0` and `100.0`.
  late final pulumi.Output<double> samplingPercentage;
  /// Logging verbosity. Possible values are `verbose`, `information` or `error`.
  late final pulumi.Output<String> verbosity;

  /// Creates a new [ApiDiagnostic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiDiagnostic]. {@macro pulumi_apimanagement_api_diagnostic_api_diagnostic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiDiagnostic(
    String name, {
    ApiDiagnosticArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiDiagnostic:ApiDiagnostic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    alwaysLogErrors = registerOutput<bool>('alwaysLogErrors');
    apiManagementLoggerId = registerOutput<String>('apiManagementLoggerId');
    apiManagementName = registerOutput<String>('apiManagementName');
    apiName = registerOutput<String>('apiName');
    backendRequest = registerOutput<ApiDiagnosticBackendRequest>('backendRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiDiagnosticBackendRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backendResponse = registerOutput<ApiDiagnosticBackendResponse>('backendResponse', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiDiagnosticBackendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frontendRequest = registerOutput<ApiDiagnosticFrontendRequest>('frontendRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiDiagnosticFrontendRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frontendResponse = registerOutput<ApiDiagnosticFrontendResponse>('frontendResponse', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiDiagnosticFrontendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpCorrelationProtocol = registerOutput<String>('httpCorrelationProtocol');
    identifier = registerOutput<String>('identifier');
    logClientIp = registerOutput<bool>('logClientIp');
    operationNameFormat = registerOutput<String?>('operationNameFormat');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    samplingPercentage = registerOutput<double>('samplingPercentage');
    verbosity = registerOutput<String>('verbosity');
  }

  /// Gets an existing [ApiDiagnostic] resource's state with the given [name] and [id].
  static ApiDiagnostic get(
    String name,
    pulumi.Input<String> id, {
    ApiDiagnosticState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApiDiagnostic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApiDiagnostic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiDiagnostic:ApiDiagnostic',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alwaysLogErrors = registerOutput<bool>('alwaysLogErrors');
    apiManagementLoggerId = registerOutput<String>('apiManagementLoggerId');
    apiManagementName = registerOutput<String>('apiManagementName');
    apiName = registerOutput<String>('apiName');
    backendRequest = registerOutput<ApiDiagnosticBackendRequest>('backendRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiDiagnosticBackendRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backendResponse = registerOutput<ApiDiagnosticBackendResponse>('backendResponse', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiDiagnosticBackendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frontendRequest = registerOutput<ApiDiagnosticFrontendRequest>('frontendRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiDiagnosticFrontendRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frontendResponse = registerOutput<ApiDiagnosticFrontendResponse>('frontendResponse', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiDiagnosticFrontendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpCorrelationProtocol = registerOutput<String>('httpCorrelationProtocol');
    identifier = registerOutput<String>('identifier');
    logClientIp = registerOutput<bool>('logClientIp');
    operationNameFormat = registerOutput<String?>('operationNameFormat');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    samplingPercentage = registerOutput<double>('samplingPercentage');
    verbosity = registerOutput<String>('verbosity');
  }

  /// Creates a typed reference to an existing [ApiDiagnostic] resource.
  ApiDiagnostic.reference(String urn)
    : super(
        'azure:apimanagement/apiDiagnostic:ApiDiagnostic',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alwaysLogErrors = registerOutput<bool>('alwaysLogErrors');
    apiManagementLoggerId = registerOutput<String>('apiManagementLoggerId');
    apiManagementName = registerOutput<String>('apiManagementName');
    apiName = registerOutput<String>('apiName');
    backendRequest = registerOutput<ApiDiagnosticBackendRequest>('backendRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiDiagnosticBackendRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backendResponse = registerOutput<ApiDiagnosticBackendResponse>('backendResponse', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiDiagnosticBackendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frontendRequest = registerOutput<ApiDiagnosticFrontendRequest>('frontendRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiDiagnosticFrontendRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frontendResponse = registerOutput<ApiDiagnosticFrontendResponse>('frontendResponse', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiDiagnosticFrontendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpCorrelationProtocol = registerOutput<String>('httpCorrelationProtocol');
    identifier = registerOutput<String>('identifier');
    logClientIp = registerOutput<bool>('logClientIp');
    operationNameFormat = registerOutput<String?>('operationNameFormat');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    samplingPercentage = registerOutput<double>('samplingPercentage');
    verbosity = registerOutput<String>('verbosity');
  }
}
