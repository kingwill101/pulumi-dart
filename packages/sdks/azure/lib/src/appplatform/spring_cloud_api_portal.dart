import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_api_portal_args.dart';
import 'spring_cloud_api_portal_sso.dart';
import 'spring_cloud_api_portal_state.dart';

/// Manages a Spring Cloud API Portal.
///
/// > **Note:** This resource is applicable only for Spring Cloud Service with enterprise tier.
///
/// !> **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudApiPortal` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "E0",
/// });
/// const exampleSpringCloudGateway = new azure.appplatform.SpringCloudGateway("example", {
///     name: "default",
///     springCloudServiceId: exampleSpringCloudService.id,
/// });
/// const exampleSpringCloudApiPortal = new azure.appplatform.SpringCloudApiPortal("example", {
///     name: "default",
///     springCloudServiceId: exampleSpringCloudService.id,
///     gatewayIds: [exampleSpringCloudGateway.id],
///     httpsOnlyEnabled: false,
///     publicNetworkAccessEnabled: true,
///     instanceCount: 1,
///     apiTryOutEnabled: true,
///     sso: {
///         clientId: "test",
///         clientSecret: "secret",
///         issuerUri: "https://www.example.com/issueToken",
///         scopes: ["read"],
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
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="E0")
/// example_spring_cloud_gateway = azure.appplatform.SpringCloudGateway("example",
///     name="default",
///     spring_cloud_service_id=example_spring_cloud_service.id)
/// example_spring_cloud_api_portal = azure.appplatform.SpringCloudApiPortal("example",
///     name="default",
///     spring_cloud_service_id=example_spring_cloud_service.id,
///     gateway_ids=[example_spring_cloud_gateway.id],
///     https_only_enabled=False,
///     public_network_access_enabled=True,
///     instance_count=1,
///     api_try_out_enabled=True,
///     sso={
///         "client_id": "test",
///         "client_secret": "secret",
///         "issuer_uri": "https://www.example.com/issueToken",
///         "scopes": ["read"],
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
///     });
///
///     var exampleSpringCloudApiPortal = new Azure.AppPlatform.SpringCloudApiPortal("example", new()
///     {
///         Name = "default",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///         GatewayIds = new[]
///         {
///             exampleSpringCloudGateway.Id,
///         },
///         HttpsOnlyEnabled = false,
///         PublicNetworkAccessEnabled = true,
///         InstanceCount = 1,
///         ApiTryOutEnabled = true,
///         Sso = new Azure.AppPlatform.Inputs.SpringCloudApiPortalSsoArgs
///         {
///             ClientId = "test",
///             ClientSecret = "secret",
///             IssuerUri = "https://www.example.com/issueToken",
///             Scopes = new[]
///             {
///                 "read",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appplatform"
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
/// 		exampleSpringCloudService, err := appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("E0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudGateway, err := appplatform.NewSpringCloudGateway(ctx, "example", &appplatform.SpringCloudGatewayArgs{
/// 			Name:                 pulumi.String("default"),
/// 			SpringCloudServiceId: exampleSpringCloudService.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudApiPortal(ctx, "example", &appplatform.SpringCloudApiPortalArgs{
/// 			Name:                 pulumi.String("default"),
/// 			SpringCloudServiceId: exampleSpringCloudService.ID(),
/// 			GatewayIds: pulumi.StringArray{
/// 				exampleSpringCloudGateway.ID(),
/// 			},
/// 			HttpsOnlyEnabled:           pulumi.Bool(false),
/// 			PublicNetworkAccessEnabled: pulumi.Bool(true),
/// 			InstanceCount:              pulumi.Int(1),
/// 			ApiTryOutEnabled:           pulumi.Bool(true),
/// 			Sso: &appplatform.SpringCloudApiPortalSsoArgs{
/// 				ClientId:     pulumi.String("test"),
/// 				ClientSecret: pulumi.String("secret"),
/// 				IssuerUri:    pulumi.String("https://www.example.com/issueToken"),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("read"),
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
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudGateway;
/// import com.pulumi.azure.appplatform.SpringCloudGatewayArgs;
/// import com.pulumi.azure.appplatform.SpringCloudApiPortal;
/// import com.pulumi.azure.appplatform.SpringCloudApiPortalArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudApiPortalSsoArgs;
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
///             .build());
///
///         var exampleSpringCloudApiPortal = new SpringCloudApiPortal("exampleSpringCloudApiPortal", SpringCloudApiPortalArgs.builder()
///             .name("default")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .gatewayIds(exampleSpringCloudGateway.id())
///             .httpsOnlyEnabled(false)
///             .publicNetworkAccessEnabled(true)
///             .instanceCount(1)
///             .apiTryOutEnabled(true)
///             .sso(SpringCloudApiPortalSsoArgs.builder()
///                 .clientId("test")
///                 .clientSecret("secret")
///                 .issuerUri("https://www.example.com/issueToken")
///                 .scopes("read")
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
///   exampleSpringCloudApiPortal:
///     type: azure:appplatform:SpringCloudApiPortal
///     name: example
///     properties:
///       name: default
///       springCloudServiceId: ${exampleSpringCloudService.id}
///       gatewayIds:
///         - ${exampleSpringCloudGateway.id}
///       httpsOnlyEnabled: false
///       publicNetworkAccessEnabled: true
///       instanceCount: 1
///       apiTryOutEnabled: true
///       sso:
///         clientId: test
///         clientSecret: secret
///         issuerUri: https://www.example.com/issueToken
///         scopes:
///           - read
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AppPlatform` - 2024-01-01-preview
///
/// ## Import
///
/// Spring Cloud API Portals can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudApiPortal:SpringCloudApiPortal example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.AppPlatform/spring/service1/apiPortals/apiPortal1
/// ```
class SpringCloudApiPortal extends pulumi.CustomResource {
  /// Specifies whether the API try-out feature is enabled. When enabled, users can try out the API by sending requests and viewing responses in API portal.
  late final pulumi.Output<bool?> apiTryOutEnabled;
  /// Specifies a list of Spring Cloud Gateway.
  late final pulumi.Output<List<String>?> gatewayIds;
  /// is only https is allowed?
  late final pulumi.Output<bool?> httpsOnlyEnabled;
  /// Specifies the required instance count of the Spring Cloud API Portal. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  late final pulumi.Output<int?> instanceCount;
  /// The name which should be used for this Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal to be created. The only possible value is `default`.
  late final pulumi.Output<String> name;
  /// Is the public network access enabled?
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud API Portal to be created.
  late final pulumi.Output<String> springCloudServiceId;
  /// A `sso` block as defined below.
  late final pulumi.Output<SpringCloudApiPortalSso?> sso;
  /// TODO.
  late final pulumi.Output<String> url;

  /// Creates a new [SpringCloudApiPortal].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudApiPortal]. {@macro pulumi_appplatform_spring_cloud_api_portal_spring_cloud_api_portal_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudApiPortal(
    String name, {
    SpringCloudApiPortalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudApiPortal:SpringCloudApiPortal',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiTryOutEnabled = registerOutput<bool?>('apiTryOutEnabled');
    this.gatewayIds = registerOutput<List<String>?>('gatewayIds');
    this.httpsOnlyEnabled = registerOutput<bool?>('httpsOnlyEnabled');
    this.instanceCount = registerOutput<int?>('instanceCount');
    this.name = registerOutput<String>('name');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.springCloudServiceId = registerOutput<String>('springCloudServiceId');
    this.sso = registerOutput<SpringCloudApiPortalSso?>('sso');
    this.url = registerOutput<String>('url');
  }

  /// Gets an existing [SpringCloudApiPortal] resource's state with the given [name] and [id].
  static SpringCloudApiPortal get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudApiPortalState? state,
  }) {
    return SpringCloudApiPortal._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpringCloudApiPortal._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudApiPortal:SpringCloudApiPortal',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiTryOutEnabled = registerOutput<bool?>('apiTryOutEnabled');
    this.gatewayIds = registerOutput<List<String>?>('gatewayIds');
    this.httpsOnlyEnabled = registerOutput<bool?>('httpsOnlyEnabled');
    this.instanceCount = registerOutput<int?>('instanceCount');
    this.name = registerOutput<String>('name');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.springCloudServiceId = registerOutput<String>('springCloudServiceId');
    this.sso = registerOutput<SpringCloudApiPortalSso?>('sso');
    this.url = registerOutput<String>('url');
  }
}
