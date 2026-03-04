import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_dynatrace_application_performance_monitoring_args.dart';
import 'spring_cloud_dynatrace_application_performance_monitoring_state.dart';

/// &gt; **Note:** This resource is only applicable for Spring Cloud Service enterprise tier
///
/// Manages a Spring Cloud Application Performance Monitoring resource for Dynatrace.
///
/// !&gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudDynatraceApplicationPerformanceMonitoring` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// const exampleSpringCloudDynatraceApplicationPerformanceMonitoring = new azure.appplatform.SpringCloudDynatraceApplicationPerformanceMonitoring("example", {
///     name: "example",
///     springCloudServiceId: exampleSpringCloudService.id,
///     globallyEnabled: true,
///     apiUrl: "https://example-api-url.com",
///     apiToken: "dt0s01.AAAAAAAAAAAAAAAAAAAAAAAA.BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB",
///     environmentId: "example-environment-id",
///     tenant: "example-tenant",
///     tenantToken: "dt0s01.AAAAAAAAAAAAAAAAAAAAAAAA.BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB",
///     connectionPoint: "https://example.live.dynatrace.com:443",
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
/// example_spring_cloud_dynatrace_application_performance_monitoring = azure.appplatform.SpringCloudDynatraceApplicationPerformanceMonitoring("example",
///     name="example",
///     spring_cloud_service_id=example_spring_cloud_service.id,
///     globally_enabled=True,
///     api_url="https://example-api-url.com",
///     api_token="dt0s01.AAAAAAAAAAAAAAAAAAAAAAAA.BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB",
///     environment_id="example-environment-id",
///     tenant="example-tenant",
///     tenant_token="dt0s01.AAAAAAAAAAAAAAAAAAAAAAAA.BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB",
///     connection_point="https://example.live.dynatrace.com:443")
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
///     var exampleSpringCloudDynatraceApplicationPerformanceMonitoring = new Azure.AppPlatform.SpringCloudDynatraceApplicationPerformanceMonitoring("example", new()
///     {
///         Name = "example",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///         GloballyEnabled = true,
///         ApiUrl = "https://example-api-url.com",
///         ApiToken = "dt0s01.AAAAAAAAAAAAAAAAAAAAAAAA.BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB",
///         EnvironmentId = "example-environment-id",
///         Tenant = "example-tenant",
///         TenantToken = "dt0s01.AAAAAAAAAAAAAAAAAAAAAAAA.BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB",
///         ConnectionPoint = "https://example.live.dynatrace.com:443",
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
/// 		_, err = appplatform.NewSpringCloudDynatraceApplicationPerformanceMonitoring(ctx, "example", &appplatform.SpringCloudDynatraceApplicationPerformanceMonitoringArgs{
/// 			Name:                 pulumi.String("example"),
/// 			SpringCloudServiceId: exampleSpringCloudService.ID(),
/// 			GloballyEnabled:      pulumi.Bool(true),
/// 			ApiUrl:               pulumi.String("https://example-api-url.com"),
/// 			ApiToken:             pulumi.String("dt0s01.AAAAAAAAAAAAAAAAAAAAAAAA.BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"),
/// 			EnvironmentId:        pulumi.String("example-environment-id"),
/// 			Tenant:               pulumi.String("example-tenant"),
/// 			TenantToken:          pulumi.String("dt0s01.AAAAAAAAAAAAAAAAAAAAAAAA.BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"),
/// 			ConnectionPoint:      pulumi.String("https://example.live.dynatrace.com:443"),
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
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudDynatraceApplicationPerformanceMonitoring;
/// import com.pulumi.azure.appplatform.SpringCloudDynatraceApplicationPerformanceMonitoringArgs;
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
///         var exampleSpringCloudDynatraceApplicationPerformanceMonitoring = new SpringCloudDynatraceApplicationPerformanceMonitoring("exampleSpringCloudDynatraceApplicationPerformanceMonitoring", SpringCloudDynatraceApplicationPerformanceMonitoringArgs.builder()
///             .name("example")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .globallyEnabled(true)
///             .apiUrl("https://example-api-url.com")
///             .apiToken("dt0s01.AAAAAAAAAAAAAAAAAAAAAAAA.BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB")
///             .environmentId("example-environment-id")
///             .tenant("example-tenant")
///             .tenantToken("dt0s01.AAAAAAAAAAAAAAAAAAAAAAAA.BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB")
///             .connectionPoint("https://example.live.dynatrace.com:443")
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
///   exampleSpringCloudDynatraceApplicationPerformanceMonitoring:
///     type: azure:appplatform:SpringCloudDynatraceApplicationPerformanceMonitoring
///     name: example
///     properties:
///       name: example
///       springCloudServiceId: ${exampleSpringCloudService.id}
///       globallyEnabled: true
///       apiUrl: https://example-api-url.com
///       apiToken: dt0s01.AAAAAAAAAAAAAAAAAAAAAAAA.BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
///       environmentId: example-environment-id
///       tenant: example-tenant
///       tenantToken: dt0s01.AAAAAAAAAAAAAAAAAAAAAAAA.BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
///       connectionPoint: https://example.live.dynatrace.com:443
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
/// Spring Cloud Application Performance Monitoring resource for Dynatrace can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudDynatraceApplicationPerformanceMonitoring:SpringCloudDynatraceApplicationPerformanceMonitoring example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.AppPlatform/spring/service1/apms/apm1
/// ```
class SpringCloudDynatraceApplicationPerformanceMonitoring
    extends pulumi.CustomResource {
  /// Specifies the API token of the Dynatrace environment.
  late final pulumi.Output<String?> apiToken;

  /// Specifies the API Url of the Dynatrace environment.
  late final pulumi.Output<String?> apiUrl;

  /// Specifies the endpoint to connect to the Dynatrace environment.
  late final pulumi.Output<String> connectionPoint;

  /// Specifies the Dynatrace environment ID.
  late final pulumi.Output<String?> environmentId;

  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  late final pulumi.Output<bool?> globallyEnabled;

  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for Dynatrace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> springCloudServiceId;

  /// Specifies the Dynatrace tenant.
  late final pulumi.Output<String> tenant;

  /// Specifies the internal token that is used for authentication when OneAgent connects to the Dynatrace cluster to send data.
  late final pulumi.Output<String> tenantToken;

  /// Creates a new [SpringCloudDynatraceApplicationPerformanceMonitoring].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudDynatraceApplicationPerformanceMonitoring]. {@macro pulumi_appplatform_spring_cloud_dynatrace_application_performance_monitoring_spring_cloud_dynatrace_application_performance_monitoring_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudDynatraceApplicationPerformanceMonitoring(
    String name, {
    SpringCloudDynatraceApplicationPerformanceMonitoringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appplatform/springCloudDynatraceApplicationPerformanceMonitoring:SpringCloudDynatraceApplicationPerformanceMonitoring',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiToken = registerOutput<String?>('apiToken');
    apiUrl = registerOutput<String?>('apiUrl');
    connectionPoint = registerOutput<String>('connectionPoint');
    environmentId = registerOutput<String?>('environmentId');
    globallyEnabled = registerOutput<bool?>('globallyEnabled');
    this.name = registerOutput<String>('name');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
    tenant = registerOutput<String>('tenant');
    tenantToken = registerOutput<String>('tenantToken');
  }

  /// Gets an existing [SpringCloudDynatraceApplicationPerformanceMonitoring] resource's state with the given [name] and [id].
  static SpringCloudDynatraceApplicationPerformanceMonitoring get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudDynatraceApplicationPerformanceMonitoringState? state,
  }) {
    return SpringCloudDynatraceApplicationPerformanceMonitoring._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpringCloudDynatraceApplicationPerformanceMonitoring._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appplatform/springCloudDynatraceApplicationPerformanceMonitoring:SpringCloudDynatraceApplicationPerformanceMonitoring',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiToken = registerOutput<String?>('apiToken');
    apiUrl = registerOutput<String?>('apiUrl');
    connectionPoint = registerOutput<String>('connectionPoint');
    environmentId = registerOutput<String?>('environmentId');
    globallyEnabled = registerOutput<bool?>('globallyEnabled');
    this.name = registerOutput<String>('name');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
    tenant = registerOutput<String>('tenant');
    tenantToken = registerOutput<String>('tenantToken');
  }
}
