import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_args.dart';
import 'diagnostic_backend_request.dart';
import 'diagnostic_backend_response.dart';
import 'diagnostic_frontend_request.dart';
import 'diagnostic_frontend_response.dart';
import 'diagnostic_state.dart';

/// Manages an API Management Service Diagnostic.
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
/// const exampleLogger = new azure.apimanagement.Logger("example", {
///     name: "example-apimlogger",
///     apiManagementName: exampleService.name,
///     resourceGroupName: example.name,
///     applicationInsights: {
///         instrumentationKey: exampleInsights.instrumentationKey,
///     },
/// });
/// const exampleDiagnostic = new azure.apimanagement.Diagnostic("example", {
///     identifier: "applicationinsights",
///     resourceGroupName: example.name,
///     apiManagementName: exampleService.name,
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
/// example_logger = azure.apimanagement.Logger("example",
///     name="example-apimlogger",
///     api_management_name=example_service.name,
///     resource_group_name=example.name,
///     application_insights={
///         "instrumentation_key": example_insights.instrumentation_key,
///     })
/// example_diagnostic = azure.apimanagement.Diagnostic("example",
///     identifier="applicationinsights",
///     resource_group_name=example.name,
///     api_management_name=example_service.name,
///     api_management_logger_id=example_logger.id,
///     sampling_percentage=5,
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
///     var exampleDiagnostic = new Azure.ApiManagement.Diagnostic("example", new()
///     {
///         Identifier = "applicationinsights",
///         ResourceGroupName = example.Name,
///         ApiManagementName = exampleService.Name,
///         ApiManagementLoggerId = exampleLogger.Id,
///         SamplingPercentage = 5,
///         AlwaysLogErrors = true,
///         LogClientIp = true,
///         Verbosity = "verbose",
///         HttpCorrelationProtocol = "W3C",
///         FrontendRequest = new Azure.ApiManagement.Inputs.DiagnosticFrontendRequestArgs
///         {
///             BodyBytes = 32,
///             HeadersToLogs = new[]
///             {
///                 "content-type",
///                 "accept",
///                 "origin",
///             },
///         },
///         FrontendResponse = new Azure.ApiManagement.Inputs.DiagnosticFrontendResponseArgs
///         {
///             BodyBytes = 32,
///             HeadersToLogs = new[]
///             {
///                 "content-type",
///                 "content-length",
///                 "origin",
///             },
///         },
///         BackendRequest = new Azure.ApiManagement.Inputs.DiagnosticBackendRequestArgs
///         {
///             BodyBytes = 32,
///             HeadersToLogs = new[]
///             {
///                 "content-type",
///                 "accept",
///                 "origin",
///             },
///         },
///         BackendResponse = new Azure.ApiManagement.Inputs.DiagnosticBackendResponseArgs
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
/// 		_, err = apimanagement.NewDiagnostic(ctx, "example", &apimanagement.DiagnosticArgs{
/// 			Identifier:              pulumi.String("applicationinsights"),
/// 			ResourceGroupName:       example.Name,
/// 			ApiManagementName:       exampleService.Name,
/// 			ApiManagementLoggerId:   exampleLogger.ID(),
/// 			SamplingPercentage:      pulumi.Float64(5),
/// 			AlwaysLogErrors:         pulumi.Bool(true),
/// 			LogClientIp:             pulumi.Bool(true),
/// 			Verbosity:               pulumi.String("verbose"),
/// 			HttpCorrelationProtocol: pulumi.String("W3C"),
/// 			FrontendRequest: &apimanagement.DiagnosticFrontendRequestArgs{
/// 				BodyBytes: pulumi.Int(32),
/// 				HeadersToLogs: pulumi.StringArray{
/// 					pulumi.String("content-type"),
/// 					pulumi.String("accept"),
/// 					pulumi.String("origin"),
/// 				},
/// 			},
/// 			FrontendResponse: &apimanagement.DiagnosticFrontendResponseArgs{
/// 				BodyBytes: pulumi.Int(32),
/// 				HeadersToLogs: pulumi.StringArray{
/// 					pulumi.String("content-type"),
/// 					pulumi.String("content-length"),
/// 					pulumi.String("origin"),
/// 				},
/// 			},
/// 			BackendRequest: &apimanagement.DiagnosticBackendRequestArgs{
/// 				BodyBytes: pulumi.Int(32),
/// 				HeadersToLogs: pulumi.StringArray{
/// 					pulumi.String("content-type"),
/// 					pulumi.String("accept"),
/// 					pulumi.String("origin"),
/// 				},
/// 			},
/// 			BackendResponse: &apimanagement.DiagnosticBackendResponseArgs{
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
/// import com.pulumi.azure.apimanagement.Logger;
/// import com.pulumi.azure.apimanagement.LoggerArgs;
/// import com.pulumi.azure.apimanagement.inputs.LoggerApplicationInsightsArgs;
/// import com.pulumi.azure.apimanagement.Diagnostic;
/// import com.pulumi.azure.apimanagement.DiagnosticArgs;
/// import com.pulumi.azure.apimanagement.inputs.DiagnosticFrontendRequestArgs;
/// import com.pulumi.azure.apimanagement.inputs.DiagnosticFrontendResponseArgs;
/// import com.pulumi.azure.apimanagement.inputs.DiagnosticBackendRequestArgs;
/// import com.pulumi.azure.apimanagement.inputs.DiagnosticBackendResponseArgs;
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
///         var exampleLogger = new Logger("exampleLogger", LoggerArgs.builder()
///             .name("example-apimlogger")
///             .apiManagementName(exampleService.name())
///             .resourceGroupName(example.name())
///             .applicationInsights(LoggerApplicationInsightsArgs.builder()
///                 .instrumentationKey(exampleInsights.instrumentationKey())
///                 .build())
///             .build());
///
///         var exampleDiagnostic = new Diagnostic("exampleDiagnostic", DiagnosticArgs.builder()
///             .identifier("applicationinsights")
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .apiManagementLoggerId(exampleLogger.id())
///             .samplingPercentage(5.0)
///             .alwaysLogErrors(true)
///             .logClientIp(true)
///             .verbosity("verbose")
///             .httpCorrelationProtocol("W3C")
///             .frontendRequest(DiagnosticFrontendRequestArgs.builder()
///                 .bodyBytes(32)
///                 .headersToLogs(
///                     "content-type",
///                     "accept",
///                     "origin")
///                 .build())
///             .frontendResponse(DiagnosticFrontendResponseArgs.builder()
///                 .bodyBytes(32)
///                 .headersToLogs(
///                     "content-type",
///                     "content-length",
///                     "origin")
///                 .build())
///             .backendRequest(DiagnosticBackendRequestArgs.builder()
///                 .bodyBytes(32)
///                 .headersToLogs(
///                     "content-type",
///                     "accept",
///                     "origin")
///                 .build())
///             .backendResponse(DiagnosticBackendResponseArgs.builder()
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
///   exampleLogger:
///     type: azure:apimanagement:Logger
///     name: example
///     properties:
///       name: example-apimlogger
///       apiManagementName: ${exampleService.name}
///       resourceGroupName: ${example.name}
///       applicationInsights:
///         instrumentationKey: ${exampleInsights.instrumentationKey}
///   exampleDiagnostic:
///     type: azure:apimanagement:Diagnostic
///     name: example
///     properties:
///       identifier: applicationinsights
///       resourceGroupName: ${example.name}
///       apiManagementName: ${exampleService.name}
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
/// API Management Diagnostics can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/diagnostic:Diagnostic example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/diagnostics/applicationinsights
/// ```
class Diagnostic extends pulumi.CustomResource {
  /// Always log errors. Send telemetry if there is an erroneous condition, regardless of sampling settings.
  late final pulumi.Output<bool> alwaysLogErrors;
  /// The id of the target API Management Logger where the API Management Diagnostic should be saved.
  late final pulumi.Output<String> apiManagementLoggerId;
  /// The Name of the API Management Service where this Diagnostic should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// A `backend_request` block as defined below.
  late final pulumi.Output<DiagnosticBackendRequest> backendRequest;
  /// A `backend_response` block as defined below.
  late final pulumi.Output<DiagnosticBackendResponse> backendResponse;
  /// A `frontend_request` block as defined below.
  late final pulumi.Output<DiagnosticFrontendRequest> frontendRequest;
  /// A `frontend_response` block as defined below.
  late final pulumi.Output<DiagnosticFrontendResponse> frontendResponse;
  /// The HTTP Correlation Protocol to use. Possible values are `None`, `Legacy` or `W3C`.
  late final pulumi.Output<String> httpCorrelationProtocol;
  /// The diagnostic identifier for the API Management Service. At this time the supported values are `applicationinsights` and `azuremonitor`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> identifier;
  /// Log client IP address.
  late final pulumi.Output<bool> logClientIp;
  /// The format of the Operation Name for Application Insights telemetries. Possible values are `Name`, and `Url`.
  late final pulumi.Output<String?> operationNameFormat;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Sampling (%). For high traffic APIs, please read this [documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-app-insights#performance-implications-and-log-sampling) to understand performance implications and log sampling. Valid values are between `0.0` and `100.0`.
  late final pulumi.Output<double> samplingPercentage;
  /// Logging verbosity. Possible values are `verbose`, `information` or `error`.
  late final pulumi.Output<String> verbosity;

  /// Creates a new [Diagnostic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Diagnostic]. {@macro pulumi_apimanagement_diagnostic_diagnostic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Diagnostic(
    String name, {
    DiagnosticArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/diagnostic:Diagnostic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alwaysLogErrors = registerOutput<bool>('alwaysLogErrors');
    apiManagementLoggerId = registerOutput<String>('apiManagementLoggerId');
    apiManagementName = registerOutput<String>('apiManagementName');
    backendRequest = registerOutput<DiagnosticBackendRequest>('backendRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiagnosticBackendRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backendResponse = registerOutput<DiagnosticBackendResponse>('backendResponse', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiagnosticBackendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frontendRequest = registerOutput<DiagnosticFrontendRequest>('frontendRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiagnosticFrontendRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frontendResponse = registerOutput<DiagnosticFrontendResponse>('frontendResponse', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiagnosticFrontendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpCorrelationProtocol = registerOutput<String>('httpCorrelationProtocol');
    identifier = registerOutput<String>('identifier');
    logClientIp = registerOutput<bool>('logClientIp');
    operationNameFormat = registerOutput<String?>('operationNameFormat');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    samplingPercentage = registerOutput<double>('samplingPercentage');
    verbosity = registerOutput<String>('verbosity');
  }

  /// Gets an existing [Diagnostic] resource's state with the given [name] and [id].
  static Diagnostic get(
    String name,
    pulumi.Input<String> id, {
    DiagnosticState? state,
  }) {
    return Diagnostic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Diagnostic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/diagnostic:Diagnostic',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alwaysLogErrors = registerOutput<bool>('alwaysLogErrors');
    apiManagementLoggerId = registerOutput<String>('apiManagementLoggerId');
    apiManagementName = registerOutput<String>('apiManagementName');
    backendRequest = registerOutput<DiagnosticBackendRequest>('backendRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiagnosticBackendRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backendResponse = registerOutput<DiagnosticBackendResponse>('backendResponse', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiagnosticBackendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frontendRequest = registerOutput<DiagnosticFrontendRequest>('frontendRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiagnosticFrontendRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frontendResponse = registerOutput<DiagnosticFrontendResponse>('frontendResponse', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiagnosticFrontendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpCorrelationProtocol = registerOutput<String>('httpCorrelationProtocol');
    identifier = registerOutput<String>('identifier');
    logClientIp = registerOutput<bool>('logClientIp');
    operationNameFormat = registerOutput<String?>('operationNameFormat');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    samplingPercentage = registerOutput<double>('samplingPercentage');
    verbosity = registerOutput<String>('verbosity');
  }
}
