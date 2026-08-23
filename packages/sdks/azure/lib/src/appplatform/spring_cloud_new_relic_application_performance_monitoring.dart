import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_new_relic_application_performance_monitoring_args.dart';
import 'spring_cloud_new_relic_application_performance_monitoring_state.dart';

/// &gt; **Note:** This resource is only applicable for Spring Cloud Service enterprise tier
///
/// Manages a Spring Cloud Application Performance Monitoring resource for New Relic.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudNewRelicApplicationPerformanceMonitoring` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "E0",
/// });
/// const exampleSpringCloudNewRelicApplicationPerformanceMonitoring = new azure.appplatform.SpringCloudNewRelicApplicationPerformanceMonitoring("example", {
///     name: "example",
///     springCloudServiceId: exampleSpringCloudService.id,
///     appName: "example-app-name",
///     licenseKey: "example-license-key",
///     appServerPort: 8080,
///     labels: {
///         tagName1: "tagValue1",
///         tagName2: "tagValue2",
///     },
///     globallyEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="E0")
/// example_spring_cloud_new_relic_application_performance_monitoring = azure.appplatform.SpringCloudNewRelicApplicationPerformanceMonitoring("example",
///     name="example",
///     spring_cloud_service_id=example_spring_cloud_service.id,
///     app_name="example-app-name",
///     license_key="example-license-key",
///     app_server_port=8080,
///     labels={
///         "tagName1": "tagValue1",
///         "tagName2": "tagValue2",
///     },
///     globally_enabled=True)
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
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "E0",
///     });
///
///     var exampleSpringCloudNewRelicApplicationPerformanceMonitoring = new Azure.AppPlatform.SpringCloudNewRelicApplicationPerformanceMonitoring("example", new()
///     {
///         Name = "example",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///         AppName = "example-app-name",
///         LicenseKey = "example-license-key",
///         AppServerPort = 8080,
///         Labels =
///         {
///             { "tagName1", "tagValue1" },
///             { "tagName2", "tagValue2" },
///         },
///         GloballyEnabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appplatform"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudService, err := appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("E0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudNewRelicApplicationPerformanceMonitoring(ctx, "example", &appplatform.SpringCloudNewRelicApplicationPerformanceMonitoringArgs{
/// 			Name:                 pulumi.String("example"),
/// 			SpringCloudServiceId: exampleSpringCloudService.ID(),
/// 			AppName:              pulumi.String("example-app-name"),
/// 			LicenseKey:           pulumi.String("example-license-key"),
/// 			AppServerPort:        pulumi.Int(8080),
/// 			Labels: pulumi.StringMap{
/// 				"tagName1": pulumi.String("tagValue1"),
/// 				"tagName2": pulumi.String("tagValue2"),
/// 			},
/// 			GloballyEnabled: pulumi.Bool(true),
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
///   name     = "example"
///   location = "West Europe"
/// }
/// resource "azure_appplatform_springcloudservice" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "E0"
/// }
/// resource "azure_appplatform_springcloudnewrelicapplicationperformancemonitoring" "example" {
///   name                    = "example"
///   spring_cloud_service_id = azure_appplatform_springcloudservice.example.id
///   app_name                = "example-app-name"
///   license_key             = "example-license-key"
///   app_server_port         = 8080
///   labels = {
///     "tagName1" = "tagValue1"
///     "tagName2" = "tagValue2"
///   }
///   globally_enabled = true
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
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudNewRelicApplicationPerformanceMonitoring;
/// import com.pulumi.azure.appplatform.SpringCloudNewRelicApplicationPerformanceMonitoringArgs;
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
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("E0")
///             .build());
///
///         var exampleSpringCloudNewRelicApplicationPerformanceMonitoring = new SpringCloudNewRelicApplicationPerformanceMonitoring("exampleSpringCloudNewRelicApplicationPerformanceMonitoring", SpringCloudNewRelicApplicationPerformanceMonitoringArgs.builder()
///             .name("example")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .appName("example-app-name")
///             .licenseKey("example-license-key")
///             .appServerPort(8080)
///             .labels(Map.ofEntries(
///                 Map.entry("tagName1", "tagValue1"),
///                 Map.entry("tagName2", "tagValue2")
///             ))
///             .globallyEnabled(true)
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
///       name: example
///       location: West Europe
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: E0
///   exampleSpringCloudNewRelicApplicationPerformanceMonitoring:
///     type: azure:appplatform:SpringCloudNewRelicApplicationPerformanceMonitoring
///     name: example
///     properties:
///       name: example
///       springCloudServiceId: ${exampleSpringCloudService.id}
///       appName: example-app-name
///       licenseKey: example-license-key
///       appServerPort: 8080
///       labels:
///         tagName1: tagValue1
///         tagName2: tagValue2
///       globallyEnabled: true
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AppPlatform` - 2024-01-01-preview
///
/// ## Import
///
/// Spring Cloud Application Performance Monitoring resource for New Relic can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudNewRelicApplicationPerformanceMonitoring:SpringCloudNewRelicApplicationPerformanceMonitoring example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.AppPlatform/spring/service1/apms/apm1
/// ```
class SpringCloudNewRelicApplicationPerformanceMonitoring extends pulumi.CustomResource {
  /// Specifies whether enable the agent. Defaults to `true`.
  late final pulumi.Output<bool?> agentEnabled;
  /// Specifies the application name used to report data to New Relic.
  late final pulumi.Output<String> appName;
  /// Specifies the port number to differentiate JVMs for the same app on the same machine.
  late final pulumi.Output<int?> appServerPort;
  /// Specifies whether enable plain text logging of all data sent to New Relic to the agent logfile. Defaults to `false`.
  late final pulumi.Output<bool?> auditModeEnabled;
  /// Specifies whether enable the reporting of data separately for each web app. Defaults to `false`.
  late final pulumi.Output<bool?> autoAppNamingEnabled;
  /// Specifies whether enable the component-based transaction naming. Defaults to `true`.
  late final pulumi.Output<bool?> autoTransactionNamingEnabled;
  /// Specifies whether enable all instrumentation using an `@Trace` annotation. Disabling this causes `@Trace` annotations to be ignored. Defaults to `true`.
  late final pulumi.Output<bool?> customTracingEnabled;
  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  late final pulumi.Output<bool?> globallyEnabled;
  /// Specifies a mapping of labels to be added to the New Relic application.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Specifies the license key associated with the New Relic account. This key binds your agent's data to your account in New Relic service.
  late final pulumi.Output<String> licenseKey;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for New Relic. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> springCloudServiceId;

  /// Creates a new [SpringCloudNewRelicApplicationPerformanceMonitoring].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudNewRelicApplicationPerformanceMonitoring]. {@macro pulumi_appplatform_spring_cloud_new_relic_application_performance_monitoring_spring_cloud_new_relic_application_performance_monitoring_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudNewRelicApplicationPerformanceMonitoring(
    String name, {
    SpringCloudNewRelicApplicationPerformanceMonitoringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudNewRelicApplicationPerformanceMonitoring:SpringCloudNewRelicApplicationPerformanceMonitoring',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentEnabled = registerOutput<bool?>('agentEnabled');
    appName = registerOutput<String>('appName');
    appServerPort = registerOutput<int?>('appServerPort');
    auditModeEnabled = registerOutput<bool?>('auditModeEnabled');
    autoAppNamingEnabled = registerOutput<bool?>('autoAppNamingEnabled');
    autoTransactionNamingEnabled = registerOutput<bool?>('autoTransactionNamingEnabled');
    customTracingEnabled = registerOutput<bool?>('customTracingEnabled');
    globallyEnabled = registerOutput<bool?>('globallyEnabled');
    labels = registerOutput<Map<String, String>?>('labels');
    licenseKey = registerOutput<String>('licenseKey');
    this.name = registerOutput<String>('name');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }

  /// Gets an existing [SpringCloudNewRelicApplicationPerformanceMonitoring] resource's state with the given [name] and [id].
  static SpringCloudNewRelicApplicationPerformanceMonitoring get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudNewRelicApplicationPerformanceMonitoringState? state,
  }) {
    return SpringCloudNewRelicApplicationPerformanceMonitoring._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpringCloudNewRelicApplicationPerformanceMonitoring._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudNewRelicApplicationPerformanceMonitoring:SpringCloudNewRelicApplicationPerformanceMonitoring',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentEnabled = registerOutput<bool?>('agentEnabled');
    appName = registerOutput<String>('appName');
    appServerPort = registerOutput<int?>('appServerPort');
    auditModeEnabled = registerOutput<bool?>('auditModeEnabled');
    autoAppNamingEnabled = registerOutput<bool?>('autoAppNamingEnabled');
    autoTransactionNamingEnabled = registerOutput<bool?>('autoTransactionNamingEnabled');
    customTracingEnabled = registerOutput<bool?>('customTracingEnabled');
    globallyEnabled = registerOutput<bool?>('globallyEnabled');
    labels = registerOutput<Map<String, String>?>('labels');
    licenseKey = registerOutput<String>('licenseKey');
    this.name = registerOutput<String>('name');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }
}
