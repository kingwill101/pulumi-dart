import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_gateway_api_metadata.dart';
import 'spring_cloud_gateway_args.dart';
import 'spring_cloud_gateway_client_authorization.dart';
import 'spring_cloud_gateway_cors.dart';
import 'spring_cloud_gateway_local_response_cache_per_instance.dart';
import 'spring_cloud_gateway_local_response_cache_per_route.dart';
import 'spring_cloud_gateway_quota.dart';
import 'spring_cloud_gateway_sso.dart';
import 'spring_cloud_gateway_state.dart';

/// &gt; **Note:** This resource is applicable only for Spring Cloud Service with enterprise tier.
///
/// Manages a Spring Cloud Gateway.
///
/// !&gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudGateway` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// const exampleSpringCloudGateway = new azure.appplatform.SpringCloudGateway("example", {
///     name: "default",
///     springCloudServiceId: exampleSpringCloudService.id,
///     httpsOnly: false,
///     publicNetworkAccessEnabled: true,
///     instanceCount: 2,
///     apiMetadata: {
///         description: "example description",
///         documentationUrl: "https://www.example.com/docs",
///         serverUrl: "https://wwww.example.com",
///         title: "example title",
///         version: "1.0",
///     },
///     cors: {
///         credentialsAllowed: false,
///         allowedHeaders: ["*"],
///         allowedMethods: ["PUT"],
///         allowedOrigins: ["example.com"],
///         exposedHeaders: ["x-example-header"],
///         maxAgeSeconds: 86400,
///     },
///     quota: {
///         cpu: "1",
///         memory: "2Gi",
///     },
///     sso: {
///         clientId: "example id",
///         clientSecret: "example secret",
///         issuerUri: "https://www.test.com/issueToken",
///         scopes: ["read"],
///     },
///     localResponseCachePerInstance: {
///         size: "100MB",
///         timeToLive: "30s",
///     },
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
/// example_spring_cloud_gateway = azure.appplatform.SpringCloudGateway("example",
///     name="default",
///     spring_cloud_service_id=example_spring_cloud_service.id,
///     https_only=False,
///     public_network_access_enabled=True,
///     instance_count=2,
///     api_metadata={
///         "description": "example description",
///         "documentation_url": "https://www.example.com/docs",
///         "server_url": "https://wwww.example.com",
///         "title": "example title",
///         "version": "1.0",
///     },
///     cors={
///         "credentials_allowed": False,
///         "allowed_headers": ["*"],
///         "allowed_methods": ["PUT"],
///         "allowed_origins": ["example.com"],
///         "exposed_headers": ["x-example-header"],
///         "max_age_seconds": 86400,
///     },
///     quota={
///         "cpu": "1",
///         "memory": "2Gi",
///     },
///     sso={
///         "client_id": "example id",
///         "client_secret": "example secret",
///         "issuer_uri": "https://www.test.com/issueToken",
///         "scopes": ["read"],
///     },
///     local_response_cache_per_instance={
///         "size": "100MB",
///         "time_to_live": "30s",
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
///     var exampleSpringCloudGateway = new Azure.AppPlatform.SpringCloudGateway("example", new()
///     {
///         Name = "default",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///         HttpsOnly = false,
///         PublicNetworkAccessEnabled = true,
///         InstanceCount = 2,
///         ApiMetadata = new Azure.AppPlatform.Inputs.SpringCloudGatewayApiMetadataArgs
///         {
///             Description = "example description",
///             DocumentationUrl = "https://www.example.com/docs",
///             ServerUrl = "https://wwww.example.com",
///             Title = "example title",
///             Version = "1.0",
///         },
///         Cors = new Azure.AppPlatform.Inputs.SpringCloudGatewayCorsArgs
///         {
///             CredentialsAllowed = false,
///             AllowedHeaders = new[]
///             {
///                 "*",
///             },
///             AllowedMethods = new[]
///             {
///                 "PUT",
///             },
///             AllowedOrigins = new[]
///             {
///                 "example.com",
///             },
///             ExposedHeaders = new[]
///             {
///                 "x-example-header",
///             },
///             MaxAgeSeconds = 86400,
///         },
///         Quota = new Azure.AppPlatform.Inputs.SpringCloudGatewayQuotaArgs
///         {
///             Cpu = "1",
///             Memory = "2Gi",
///         },
///         Sso = new Azure.AppPlatform.Inputs.SpringCloudGatewaySsoArgs
///         {
///             ClientId = "example id",
///             ClientSecret = "example secret",
///             IssuerUri = "https://www.test.com/issueToken",
///             Scopes = new[]
///             {
///                 "read",
///             },
///         },
///         LocalResponseCachePerInstance = new Azure.AppPlatform.Inputs.SpringCloudGatewayLocalResponseCachePerInstanceArgs
///         {
///             Size = "100MB",
///             TimeToLive = "30s",
///         },
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
/// 		_, err = appplatform.NewSpringCloudGateway(ctx, "example", &appplatform.SpringCloudGatewayArgs{
/// 			Name:                       pulumi.String("default"),
/// 			SpringCloudServiceId:       exampleSpringCloudService.ID(),
/// 			HttpsOnly:                  pulumi.Bool(false),
/// 			PublicNetworkAccessEnabled: pulumi.Bool(true),
/// 			InstanceCount:              pulumi.Int(2),
/// 			ApiMetadata: &appplatform.SpringCloudGatewayApiMetadataArgs{
/// 				Description:      pulumi.String("example description"),
/// 				DocumentationUrl: pulumi.String("https://www.example.com/docs"),
/// 				ServerUrl:        pulumi.String("https://wwww.example.com"),
/// 				Title:            pulumi.String("example title"),
/// 				Version:          pulumi.String("1.0"),
/// 			},
/// 			Cors: &appplatform.SpringCloudGatewayCorsArgs{
/// 				CredentialsAllowed: pulumi.Bool(false),
/// 				AllowedHeaders: pulumi.StringArray{
/// 					pulumi.String("*"),
/// 				},
/// 				AllowedMethods: pulumi.StringArray{
/// 					pulumi.String("PUT"),
/// 				},
/// 				AllowedOrigins: pulumi.StringArray{
/// 					pulumi.String("example.com"),
/// 				},
/// 				ExposedHeaders: pulumi.StringArray{
/// 					pulumi.String("x-example-header"),
/// 				},
/// 				MaxAgeSeconds: pulumi.Int(86400),
/// 			},
/// 			Quota: &appplatform.SpringCloudGatewayQuotaArgs{
/// 				Cpu:    pulumi.String("1"),
/// 				Memory: pulumi.String("2Gi"),
/// 			},
/// 			Sso: &appplatform.SpringCloudGatewaySsoArgs{
/// 				ClientId:     pulumi.String("example id"),
/// 				ClientSecret: pulumi.String("example secret"),
/// 				IssuerUri:    pulumi.String("https://www.test.com/issueToken"),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("read"),
/// 				},
/// 			},
/// 			LocalResponseCachePerInstance: &appplatform.SpringCloudGatewayLocalResponseCachePerInstanceArgs{
/// 				Size:       pulumi.String("100MB"),
/// 				TimeToLive: pulumi.String("30s"),
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
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudGateway;
/// import com.pulumi.azure.appplatform.SpringCloudGatewayArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudGatewayApiMetadataArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudGatewayCorsArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudGatewayQuotaArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudGatewaySsoArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudGatewayLocalResponseCachePerInstanceArgs;
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
///         var exampleSpringCloudGateway = new SpringCloudGateway("exampleSpringCloudGateway", SpringCloudGatewayArgs.builder()
///             .name("default")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .httpsOnly(false)
///             .publicNetworkAccessEnabled(true)
///             .instanceCount(2)
///             .apiMetadata(SpringCloudGatewayApiMetadataArgs.builder()
///                 .description("example description")
///                 .documentationUrl("https://www.example.com/docs")
///                 .serverUrl("https://wwww.example.com")
///                 .title("example title")
///                 .version("1.0")
///                 .build())
///             .cors(SpringCloudGatewayCorsArgs.builder()
///                 .credentialsAllowed(false)
///                 .allowedHeaders("*")
///                 .allowedMethods("PUT")
///                 .allowedOrigins("example.com")
///                 .exposedHeaders("x-example-header")
///                 .maxAgeSeconds(86400)
///                 .build())
///             .quota(SpringCloudGatewayQuotaArgs.builder()
///                 .cpu("1")
///                 .memory("2Gi")
///                 .build())
///             .sso(SpringCloudGatewaySsoArgs.builder()
///                 .clientId("example id")
///                 .clientSecret("example secret")
///                 .issuerUri("https://www.test.com/issueToken")
///                 .scopes("read")
///                 .build())
///             .localResponseCachePerInstance(SpringCloudGatewayLocalResponseCachePerInstanceArgs.builder()
///                 .size("100MB")
///                 .timeToLive("30s")
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
///   exampleSpringCloudGateway:
///     type: azure:appplatform:SpringCloudGateway
///     name: example
///     properties:
///       name: default
///       springCloudServiceId: ${exampleSpringCloudService.id}
///       httpsOnly: false
///       publicNetworkAccessEnabled: true
///       instanceCount: 2
///       apiMetadata:
///         description: example description
///         documentationUrl: https://www.example.com/docs
///         serverUrl: https://wwww.example.com
///         title: example title
///         version: '1.0'
///       cors:
///         credentialsAllowed: false
///         allowedHeaders:
///           - '*'
///         allowedMethods:
///           - PUT
///         allowedOrigins:
///           - example.com
///         exposedHeaders:
///           - x-example-header
///         maxAgeSeconds: 86400
///       quota:
///         cpu: '1'
///         memory: 2Gi
///       sso:
///         clientId: example id
///         clientSecret: example secret
///         issuerUri: https://www.test.com/issueToken
///         scopes:
///           - read
///       localResponseCachePerInstance:
///         size: 100MB
///         timeToLive: 30s
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
/// Spring Cloud Gateways can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudGateway:SpringCloudGateway example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroup1/providers/Microsoft.AppPlatform/spring/service1/gateways/gateway1
/// ```
class SpringCloudGateway extends pulumi.CustomResource {
  /// A `api_metadata` block as defined below.
  late final pulumi.Output<SpringCloudGatewayApiMetadata?> apiMetadata;
  /// Specifies a list of Spring Cloud Application Performance Monitoring IDs.
  late final pulumi.Output<List<String>?> applicationPerformanceMonitoringIds;
  /// Specifies a list of application performance monitoring types used in the Spring Cloud Gateway. The allowed values are `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`.
  late final pulumi.Output<List<String>?> applicationPerformanceMonitoringTypes;
  /// A `client_authorization` block as defined below.
  late final pulumi.Output<SpringCloudGatewayClientAuthorization?> clientAuthorization;
  /// A `cors` block as defined below.
  late final pulumi.Output<SpringCloudGatewayCors?> cors;
  /// Specifies the environment variables of the Spring Cloud Gateway as a map of key-value pairs.
  late final pulumi.Output<Map<String, String>?> environmentVariables;
  /// is only https is allowed?
  late final pulumi.Output<bool?> httpsOnly;
  /// Specifies the required instance count of the Spring Cloud Gateway. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  late final pulumi.Output<int?> instanceCount;
  /// A `local_response_cache_per_instance` block as defined below. Only one of `local_response_cache_per_instance` or `local_response_cache_per_route` can be specified.
  late final pulumi.Output<SpringCloudGatewayLocalResponseCachePerInstance?> localResponseCachePerInstance;
  /// A `local_response_cache_per_route` block as defined below. Only one of `local_response_cache_per_instance` or `local_response_cache_per_route` can be specified.
  late final pulumi.Output<SpringCloudGatewayLocalResponseCachePerRoute?> localResponseCachePerRoute;
  /// The name which should be used for this Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway to be created. The only possible value is `default`.
  late final pulumi.Output<String> name;
  /// Indicates whether the Spring Cloud Gateway exposes endpoint.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// A `quota` block as defined below.
  late final pulumi.Output<SpringCloudGatewayQuota> quota;
  /// Specifies the sensitive environment variables of the Spring Cloud Gateway as a map of key-value pairs.
  late final pulumi.Output<Map<String, String>?> sensitiveEnvironmentVariables;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Gateway to be created.
  late final pulumi.Output<String> springCloudServiceId;
  /// A `sso` block as defined below.
  late final pulumi.Output<SpringCloudGatewaySso?> sso;
  /// URL of the Spring Cloud Gateway, exposed when 'public_network_access_enabled' is true.
  late final pulumi.Output<String> url;

  /// Creates a new [SpringCloudGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudGateway]. {@macro pulumi_appplatform_spring_cloud_gateway_spring_cloud_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudGateway(
    String name, {
    SpringCloudGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudGateway:SpringCloudGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiMetadata = registerOutput<SpringCloudGatewayApiMetadata?>('apiMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayApiMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    applicationPerformanceMonitoringIds = registerOutput<List<String>?>('applicationPerformanceMonitoringIds');
    applicationPerformanceMonitoringTypes = registerOutput<List<String>?>('applicationPerformanceMonitoringTypes');
    clientAuthorization = registerOutput<SpringCloudGatewayClientAuthorization?>('clientAuthorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayClientAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cors = registerOutput<SpringCloudGatewayCors?>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayCors.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    instanceCount = registerOutput<int?>('instanceCount');
    localResponseCachePerInstance = registerOutput<SpringCloudGatewayLocalResponseCachePerInstance?>('localResponseCachePerInstance', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayLocalResponseCachePerInstance.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localResponseCachePerRoute = registerOutput<SpringCloudGatewayLocalResponseCachePerRoute?>('localResponseCachePerRoute', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayLocalResponseCachePerRoute.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    quota = registerOutput<SpringCloudGatewayQuota>('quota', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayQuota.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sensitiveEnvironmentVariables = registerOutput<Map<String, String>?>('sensitiveEnvironmentVariables');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
    sso = registerOutput<SpringCloudGatewaySso?>('sso', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewaySso.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    url = registerOutput<String>('url');
  }

  /// Gets an existing [SpringCloudGateway] resource's state with the given [name] and [id].
  static SpringCloudGateway get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudGatewayState? state,
  }) {
    return SpringCloudGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpringCloudGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudGateway:SpringCloudGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiMetadata = registerOutput<SpringCloudGatewayApiMetadata?>('apiMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayApiMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    applicationPerformanceMonitoringIds = registerOutput<List<String>?>('applicationPerformanceMonitoringIds');
    applicationPerformanceMonitoringTypes = registerOutput<List<String>?>('applicationPerformanceMonitoringTypes');
    clientAuthorization = registerOutput<SpringCloudGatewayClientAuthorization?>('clientAuthorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayClientAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cors = registerOutput<SpringCloudGatewayCors?>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayCors.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    instanceCount = registerOutput<int?>('instanceCount');
    localResponseCachePerInstance = registerOutput<SpringCloudGatewayLocalResponseCachePerInstance?>('localResponseCachePerInstance', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayLocalResponseCachePerInstance.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localResponseCachePerRoute = registerOutput<SpringCloudGatewayLocalResponseCachePerRoute?>('localResponseCachePerRoute', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayLocalResponseCachePerRoute.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    quota = registerOutput<SpringCloudGatewayQuota>('quota', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayQuota.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sensitiveEnvironmentVariables = registerOutput<Map<String, String>?>('sensitiveEnvironmentVariables');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
    sso = registerOutput<SpringCloudGatewaySso?>('sso', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewaySso.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    url = registerOutput<String>('url');
  }
}
