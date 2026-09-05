import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_elastic_application_performance_monitoring_args.dart';
import 'spring_cloud_elastic_application_performance_monitoring_state.dart';

/// &gt; **Note:** This resource is only applicable for Spring Cloud Service enterprise tier
///
/// Manages a Spring Cloud Application Performance Monitoring resource for Elastic.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudElasticApplicationPerformanceMonitoring` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// const exampleSpringCloudElasticApplicationPerformanceMonitoring = new azure.appplatform.SpringCloudElasticApplicationPerformanceMonitoring("example", {
///     name: "example",
///     springCloudServiceId: exampleSpringCloudService.id,
///     globallyEnabled: true,
///     applicationPackages: [
///         "org.example",
///         "org.another.example",
///     ],
///     serviceName: "example-service-name",
///     serverUrl: "http://127.0.0.1:8200",
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
/// example_spring_cloud_elastic_application_performance_monitoring = azure.appplatform.SpringCloudElasticApplicationPerformanceMonitoring("example",
///     name="example",
///     spring_cloud_service_id=example_spring_cloud_service.id,
///     globally_enabled=True,
///     application_packages=[
///         "org.example",
///         "org.another.example",
///     ],
///     service_name="example-service-name",
///     server_url="http://127.0.0.1:8200")
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
///     var exampleSpringCloudElasticApplicationPerformanceMonitoring = new Azure.AppPlatform.SpringCloudElasticApplicationPerformanceMonitoring("example", new()
///     {
///         Name = "example",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///         GloballyEnabled = true,
///         ApplicationPackages = new[]
///         {
///             "org.example",
///             "org.another.example",
///         },
///         ServiceName = "example-service-name",
///         ServerUrl = "http://127.0.0.1:8200",
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
/// 		_, err = appplatform.NewSpringCloudElasticApplicationPerformanceMonitoring(ctx, "example", &appplatform.SpringCloudElasticApplicationPerformanceMonitoringArgs{
/// 			Name:                 pulumi.String("example"),
/// 			SpringCloudServiceId: exampleSpringCloudService.ID().ToIDOutput().ToStringOutput(),
/// 			GloballyEnabled:      pulumi.Bool(true),
/// 			ApplicationPackages: pulumi.StringArray{
/// 				pulumi.String("org.example"),
/// 				pulumi.String("org.another.example"),
/// 			},
/// 			ServiceName: pulumi.String("example-service-name"),
/// 			ServerUrl:   pulumi.String("http://127.0.0.1:8200"),
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
/// resource "azure_appplatform_springcloudelasticapplicationperformancemonitoring" "example" {
///   name                    = "example"
///   spring_cloud_service_id = azure_appplatform_springcloudservice.example.id
///   globally_enabled        = true
///   application_packages    = ["org.example", "org.another.example"]
///   service_name            = "example-service-name"
///   server_url              = "http://127.0.0.1:8200"
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
/// import com.pulumi.azure.appplatform.SpringCloudElasticApplicationPerformanceMonitoring;
/// import com.pulumi.azure.appplatform.SpringCloudElasticApplicationPerformanceMonitoringArgs;
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
///         var exampleSpringCloudElasticApplicationPerformanceMonitoring = new SpringCloudElasticApplicationPerformanceMonitoring("exampleSpringCloudElasticApplicationPerformanceMonitoring", SpringCloudElasticApplicationPerformanceMonitoringArgs.builder()
///             .name("example")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .globallyEnabled(true)
///             .applicationPackages(
///                 "org.example",
///                 "org.another.example")
///             .serviceName("example-service-name")
///             .serverUrl("http://127.0.0.1:8200")
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
///   exampleSpringCloudElasticApplicationPerformanceMonitoring:
///     type: azure:appplatform:SpringCloudElasticApplicationPerformanceMonitoring
///     name: example
///     properties:
///       name: example
///       springCloudServiceId: ${exampleSpringCloudService.id}
///       globallyEnabled: true
///       applicationPackages:
///         - org.example
///         - org.another.example
///       serviceName: example-service-name
///       serverUrl: http://127.0.0.1:8200
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
/// Spring Cloud Application Performance Monitoring resource for Elastic can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudElasticApplicationPerformanceMonitoring:SpringCloudElasticApplicationPerformanceMonitoring example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.AppPlatform/spring/service1/apms/apm1
/// ```
class SpringCloudElasticApplicationPerformanceMonitoring extends pulumi.CustomResource {
  /// Specifies a list of the packages which should be used to determine whether a stack trace frame is an in-app frame or a library frame. This is a comma separated list of package names.
  late final pulumi.Output<List<String>> applicationPackages;
  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  late final pulumi.Output<bool?> globallyEnabled;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for Elastic. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the server URL. The URL must be fully qualified, including protocol (http or https) and port.
  late final pulumi.Output<String> serverUrl;
  /// Specifies the service name which is used to keep all the errors and transactions of your service together and is the primary filter in the Elastic APM user interface.
  late final pulumi.Output<String> serviceName;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> springCloudServiceId;

  /// Creates a new [SpringCloudElasticApplicationPerformanceMonitoring].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudElasticApplicationPerformanceMonitoring]. {@macro pulumi_appplatform_spring_cloud_elastic_application_performance_monitoring_spring_cloud_elastic_application_performance_monitoring_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudElasticApplicationPerformanceMonitoring(
    String name, {
    SpringCloudElasticApplicationPerformanceMonitoringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudElasticApplicationPerformanceMonitoring:SpringCloudElasticApplicationPerformanceMonitoring',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    applicationPackages = registerOutput<List<String>>('applicationPackages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    globallyEnabled = registerOutput<bool?>('globallyEnabled');
    this.name = registerOutput<String>('name');
    serverUrl = registerOutput<String>('serverUrl');
    serviceName = registerOutput<String>('serviceName');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }

  /// Gets an existing [SpringCloudElasticApplicationPerformanceMonitoring] resource's state with the given [name] and [id].
  static SpringCloudElasticApplicationPerformanceMonitoring get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudElasticApplicationPerformanceMonitoringState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SpringCloudElasticApplicationPerformanceMonitoring._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SpringCloudElasticApplicationPerformanceMonitoring._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudElasticApplicationPerformanceMonitoring:SpringCloudElasticApplicationPerformanceMonitoring',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationPackages = registerOutput<List<String>>('applicationPackages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    globallyEnabled = registerOutput<bool?>('globallyEnabled');
    this.name = registerOutput<String>('name');
    serverUrl = registerOutput<String>('serverUrl');
    serviceName = registerOutput<String>('serviceName');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }

  /// Creates a typed reference to an existing [SpringCloudElasticApplicationPerformanceMonitoring] resource.
  SpringCloudElasticApplicationPerformanceMonitoring.reference(String urn)
    : super(
        'azure:appplatform/springCloudElasticApplicationPerformanceMonitoring:SpringCloudElasticApplicationPerformanceMonitoring',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationPackages = registerOutput<List<String>>('applicationPackages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    globallyEnabled = registerOutput<bool?>('globallyEnabled');
    this.name = registerOutput<String>('name');
    serverUrl = registerOutput<String>('serverUrl');
    serviceName = registerOutput<String>('serviceName');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }
}
