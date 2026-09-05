import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_application_insights_application_performance_monitoring_args.dart';
import 'spring_cloud_application_insights_application_performance_monitoring_state.dart';

/// &gt; **Note:** This resource is only applicable for Spring Cloud Service enterprise tier
///
/// Manages a Spring Cloud Application Performance Monitoring resource for Application Insights.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudApplicationInsightsApplicationPerformanceMonitoring` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "E0",
/// });
/// const exampleSpringCloudApplicationInsightsApplicationPerformanceMonitoring = new azure.appplatform.SpringCloudApplicationInsightsApplicationPerformanceMonitoring("example", {
///     name: "example",
///     springCloudServiceId: exampleSpringCloudService.id,
///     connectionString: exampleInsights.instrumentationKey,
///     globallyEnabled: true,
///     roleName: "test-role",
///     roleInstance: "test-instance",
///     samplingPercentage: 50,
///     samplingRequestsPerSecond: 10,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_insights = azure.appinsights.Insights("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="E0")
/// example_spring_cloud_application_insights_application_performance_monitoring = azure.appplatform.SpringCloudApplicationInsightsApplicationPerformanceMonitoring("example",
///     name="example",
///     spring_cloud_service_id=example_spring_cloud_service.id,
///     connection_string=example_insights.instrumentation_key,
///     globally_enabled=True,
///     role_name="test-role",
///     role_instance="test-instance",
///     sampling_percentage=50,
///     sampling_requests_per_second=10)
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
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
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
///     var exampleSpringCloudApplicationInsightsApplicationPerformanceMonitoring = new Azure.AppPlatform.SpringCloudApplicationInsightsApplicationPerformanceMonitoring("example", new()
///     {
///         Name = "example",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///         ConnectionString = exampleInsights.InstrumentationKey,
///         GloballyEnabled = true,
///         RoleName = "test-role",
///         RoleInstance = "test-instance",
///         SamplingPercentage = 50,
///         SamplingRequestsPerSecond = 10,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
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
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
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
/// 		_, err = appplatform.NewSpringCloudApplicationInsightsApplicationPerformanceMonitoring(ctx, "example", &appplatform.SpringCloudApplicationInsightsApplicationPerformanceMonitoringArgs{
/// 			Name:                      pulumi.String("example"),
/// 			SpringCloudServiceId:      exampleSpringCloudService.ID().ToIDOutput().ToStringOutput(),
/// 			ConnectionString:          exampleInsights.InstrumentationKey,
/// 			GloballyEnabled:           pulumi.Bool(true),
/// 			RoleName:                  pulumi.String("test-role"),
/// 			RoleInstance:              pulumi.String("test-instance"),
/// 			SamplingPercentage:        pulumi.Int(50),
/// 			SamplingRequestsPerSecond: pulumi.Int(10),
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
/// resource "azure_appinsights_insights" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   application_type    = "web"
/// }
/// resource "azure_appplatform_springcloudservice" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "E0"
/// }
/// resource "azure_appplatform_springcloudapplicationinsightsapplicationperformancemonitoring" "example" {
///   name                         = "example"
///   spring_cloud_service_id      = azure_appplatform_springcloudservice.example.id
///   connection_string            = azure_appinsights_insights.example.instrumentation_key
///   globally_enabled             = true
///   role_name                    = "test-role"
///   role_instance                = "test-instance"
///   sampling_percentage          = 50
///   sampling_requests_per_second = 10
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
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudApplicationInsightsApplicationPerformanceMonitoring;
/// import com.pulumi.azure.appplatform.SpringCloudApplicationInsightsApplicationPerformanceMonitoringArgs;
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
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("E0")
///             .build());
///
///         var exampleSpringCloudApplicationInsightsApplicationPerformanceMonitoring = new SpringCloudApplicationInsightsApplicationPerformanceMonitoring("exampleSpringCloudApplicationInsightsApplicationPerformanceMonitoring", SpringCloudApplicationInsightsApplicationPerformanceMonitoringArgs.builder()
///             .name("example")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .connectionString(exampleInsights.instrumentationKey())
///             .globallyEnabled(true)
///             .roleName("test-role")
///             .roleInstance("test-instance")
///             .samplingPercentage(50)
///             .samplingRequestsPerSecond(10)
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
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: E0
///   exampleSpringCloudApplicationInsightsApplicationPerformanceMonitoring:
///     type: azure:appplatform:SpringCloudApplicationInsightsApplicationPerformanceMonitoring
///     name: example
///     properties:
///       name: example
///       springCloudServiceId: ${exampleSpringCloudService.id}
///       connectionString: ${exampleInsights.instrumentationKey}
///       globallyEnabled: true
///       roleName: test-role
///       roleInstance: test-instance
///       samplingPercentage: 50
///       samplingRequestsPerSecond: 10
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
/// Spring Cloud Application Performance Monitoring resource for Application Insights can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudApplicationInsightsApplicationPerformanceMonitoring:SpringCloudApplicationInsightsApplicationPerformanceMonitoring example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.AppPlatform/spring/service1/apms/apm1
/// ```
class SpringCloudApplicationInsightsApplicationPerformanceMonitoring extends pulumi.CustomResource {
  /// The instrumentation key used to push data to Application Insights.
  late final pulumi.Output<String?> connectionString;
  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  late final pulumi.Output<bool?> globallyEnabled;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for Application Insights. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the cloud role instance.
  late final pulumi.Output<String?> roleInstance;
  /// Specifies the cloud role name used to label the component on the application map.
  late final pulumi.Output<String?> roleName;
  /// Specifies the percentage for fixed-percentage sampling.
  late final pulumi.Output<int?> samplingPercentage;
  /// Specifies the number of requests per second for the rate-limited sampling.
  late final pulumi.Output<int?> samplingRequestsPerSecond;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> springCloudServiceId;

  /// Creates a new [SpringCloudApplicationInsightsApplicationPerformanceMonitoring].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudApplicationInsightsApplicationPerformanceMonitoring]. {@macro pulumi_appplatform_spring_cloud_application_insights_application_performance_monitoring_spring_cloud_application_insights_application_performance_monitoring_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudApplicationInsightsApplicationPerformanceMonitoring(
    String name, {
    SpringCloudApplicationInsightsApplicationPerformanceMonitoringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudApplicationInsightsApplicationPerformanceMonitoring:SpringCloudApplicationInsightsApplicationPerformanceMonitoring',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    connectionString = registerOutput<String?>('connectionString');
    globallyEnabled = registerOutput<bool?>('globallyEnabled');
    this.name = registerOutput<String>('name');
    roleInstance = registerOutput<String?>('roleInstance');
    roleName = registerOutput<String?>('roleName');
    samplingPercentage = registerOutput<int?>('samplingPercentage');
    samplingRequestsPerSecond = registerOutput<int?>('samplingRequestsPerSecond');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }

  /// Gets an existing [SpringCloudApplicationInsightsApplicationPerformanceMonitoring] resource's state with the given [name] and [id].
  static SpringCloudApplicationInsightsApplicationPerformanceMonitoring get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudApplicationInsightsApplicationPerformanceMonitoringState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SpringCloudApplicationInsightsApplicationPerformanceMonitoring._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SpringCloudApplicationInsightsApplicationPerformanceMonitoring._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudApplicationInsightsApplicationPerformanceMonitoring:SpringCloudApplicationInsightsApplicationPerformanceMonitoring',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionString = registerOutput<String?>('connectionString');
    globallyEnabled = registerOutput<bool?>('globallyEnabled');
    this.name = registerOutput<String>('name');
    roleInstance = registerOutput<String?>('roleInstance');
    roleName = registerOutput<String?>('roleName');
    samplingPercentage = registerOutput<int?>('samplingPercentage');
    samplingRequestsPerSecond = registerOutput<int?>('samplingRequestsPerSecond');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }

  /// Creates a typed reference to an existing [SpringCloudApplicationInsightsApplicationPerformanceMonitoring] resource.
  SpringCloudApplicationInsightsApplicationPerformanceMonitoring.reference(String urn)
    : super(
        'azure:appplatform/springCloudApplicationInsightsApplicationPerformanceMonitoring:SpringCloudApplicationInsightsApplicationPerformanceMonitoring',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    connectionString = registerOutput<String?>('connectionString');
    globallyEnabled = registerOutput<bool?>('globallyEnabled');
    this.name = registerOutput<String>('name');
    roleInstance = registerOutput<String?>('roleInstance');
    roleName = registerOutput<String?>('roleName');
    samplingPercentage = registerOutput<int?>('samplingPercentage');
    samplingRequestsPerSecond = registerOutput<int?>('samplingRequestsPerSecond');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }
}
