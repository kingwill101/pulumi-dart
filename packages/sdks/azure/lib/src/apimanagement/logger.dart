import 'package:pulumi/pulumi.dart' as pulumi;
import 'logger_application_insights.dart';
import 'logger_args.dart';
import 'logger_eventhub.dart';
import 'logger_state.dart';

/// Manages a Logger within an API Management Service.
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
///     applicationType: "other",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "My Company",
///     publisherEmail: "company@exmaple.com",
///     skuName: "Developer_1",
/// });
/// const exampleLogger = new azure.apimanagement.Logger("example", {
///     name: "example-logger",
///     apiManagementName: exampleService.name,
///     resourceGroupName: example.name,
///     resourceId: exampleInsights.id,
///     applicationInsights: {
///         instrumentationKey: exampleInsights.instrumentationKey,
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
///     application_type="other")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="My Company",
///     publisher_email="company@exmaple.com",
///     sku_name="Developer_1")
/// example_logger = azure.apimanagement.Logger("example",
///     name="example-logger",
///     api_management_name=example_service.name,
///     resource_group_name=example.name,
///     resource_id=example_insights.id,
///     application_insights={
///         "instrumentation_key": example_insights.instrumentation_key,
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
///         ApplicationType = "other",
///     });
///
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "My Company",
///         PublisherEmail = "company@exmaple.com",
///         SkuName = "Developer_1",
///     });
///
///     var exampleLogger = new Azure.ApiManagement.Logger("example", new()
///     {
///         Name = "example-logger",
///         ApiManagementName = exampleService.Name,
///         ResourceGroupName = example.Name,
///         ResourceId = exampleInsights.Id,
///         ApplicationInsights = new Azure.ApiManagement.Inputs.LoggerApplicationInsightsArgs
///         {
///             InstrumentationKey = exampleInsights.InstrumentationKey,
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
/// 			ApplicationType:   pulumi.String("other"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("My Company"),
/// 			PublisherEmail:    pulumi.String("company@exmaple.com"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewLogger(ctx, "example", &apimanagement.LoggerArgs{
/// 			Name:              pulumi.String("example-logger"),
/// 			ApiManagementName: exampleService.Name,
/// 			ResourceGroupName: example.Name,
/// 			ResourceId:        exampleInsights.ID(),
/// 			ApplicationInsights: &apimanagement.LoggerApplicationInsightsArgs{
/// 				InstrumentationKey: exampleInsights.InstrumentationKey,
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
///   application_type    = "other"
/// }
/// resource "azure_apimanagement_service" "example" {
///   name                = "example-apim"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   publisher_name      = "My Company"
///   publisher_email     = "company@exmaple.com"
///   sku_name            = "Developer_1"
/// }
/// resource "azure_apimanagement_logger" "example" {
///   name                = "example-logger"
///   api_management_name = azure_apimanagement_service.example.name
///   resource_group_name = azure_core_resourcegroup.example.name
///   resource_id         = azure_appinsights_insights.example.id
///   application_insights = {
///     instrumentation_key = azure_appinsights_insights.example.instrumentation_key
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
/// import com.pulumi.azure.apimanagement.Logger;
/// import com.pulumi.azure.apimanagement.LoggerArgs;
/// import com.pulumi.azure.apimanagement.inputs.LoggerApplicationInsightsArgs;
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
///             .applicationType("other")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("My Company")
///             .publisherEmail("company@exmaple.com")
///             .skuName("Developer_1")
///             .build());
///
///         var exampleLogger = new Logger("exampleLogger", LoggerArgs.builder()
///             .name("example-logger")
///             .apiManagementName(exampleService.name())
///             .resourceGroupName(example.name())
///             .resourceId(exampleInsights.id())
///             .applicationInsights(LoggerApplicationInsightsArgs.builder()
///                 .instrumentationKey(exampleInsights.instrumentationKey())
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
///       applicationType: other
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: My Company
///       publisherEmail: company@exmaple.com
///       skuName: Developer_1
///   exampleLogger:
///     type: azure:apimanagement:Logger
///     name: example
///     properties:
///       name: example-logger
///       apiManagementName: ${exampleService.name}
///       resourceGroupName: ${example.name}
///       resourceId: ${exampleInsights.id}
///       applicationInsights:
///         instrumentationKey: ${exampleInsights.instrumentationKey}
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
/// API Management Loggers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/logger:Logger example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.ApiManagement/service/example-apim/loggers/example-logger
/// ```
class Logger extends pulumi.CustomResource {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// An `applicationInsights` block as documented below. Changing this forces a new resource to be created.
  late final pulumi.Output<LoggerApplicationInsights?> applicationInsights;
  /// Specifies whether records should be buffered in the Logger prior to publishing. Defaults to `true`.
  late final pulumi.Output<bool?> buffered;
  /// A description of this Logger.
  late final pulumi.Output<String?> description;
  /// An `eventhub` block as documented below. Changing this forces a new resource to be created.
  late final pulumi.Output<LoggerEventhub?> eventhub;
  /// The name of this Logger, which must be unique within the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The target resource id which will be linked in the API-Management portal page. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> resourceId;

  /// Creates a new [Logger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Logger]. {@macro pulumi_apimanagement_logger_logger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Logger(
    String name, {
    LoggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/logger:Logger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    applicationInsights = registerOutput<LoggerApplicationInsights?>('applicationInsights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoggerApplicationInsights.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    buffered = registerOutput<bool?>('buffered');
    description = registerOutput<String?>('description');
    eventhub = registerOutput<LoggerEventhub?>('eventhub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoggerEventhub.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceId = registerOutput<String?>('resourceId');
  }

  /// Gets an existing [Logger] resource's state with the given [name] and [id].
  static Logger get(
    String name,
    pulumi.Input<String> id, {
    LoggerState? state,
  }) {
    return Logger._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Logger._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/logger:Logger',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    applicationInsights = registerOutput<LoggerApplicationInsights?>('applicationInsights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoggerApplicationInsights.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    buffered = registerOutput<bool?>('buffered');
    description = registerOutput<String?>('description');
    eventhub = registerOutput<LoggerEventhub?>('eventhub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoggerEventhub.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceId = registerOutput<String?>('resourceId');
  }
}
