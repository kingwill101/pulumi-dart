import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_dev_tool_portal_args.dart';
import 'spring_cloud_dev_tool_portal_sso.dart';
import 'spring_cloud_dev_tool_portal_state.dart';

/// &gt; **Note:** This resource is applicable only for Spring Cloud Service with enterprise tier.
///
/// Manages a Spring Cloud Dev Tool Portal.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudDevToolPortal` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
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
/// const exampleSpringCloudDevToolPortal = new azure.appplatform.SpringCloudDevToolPortal("example", {
///     name: "default",
///     springCloudServiceId: exampleSpringCloudService.id,
///     publicNetworkAccessEnabled: true,
///     sso: {
///         clientId: "example id",
///         clientSecret: "example secret",
///         metadataUrl: current.then(current => `https://login.microsoftonline.com/${current.tenantId}/v2.0/.well-known/openid-configuration`),
///         scopes: [
///             "openid",
///             "profile",
///             "email",
///         ],
///     },
///     applicationAcceleratorEnabled: true,
///     applicationLiveViewEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="E0")
/// example_spring_cloud_dev_tool_portal = azure.appplatform.SpringCloudDevToolPortal("example",
///     name="default",
///     spring_cloud_service_id=example_spring_cloud_service.id,
///     public_network_access_enabled=True,
///     sso={
///         "client_id": "example id",
///         "client_secret": "example secret",
///         "metadata_url": f"https://login.microsoftonline.com/{current.tenant_id}/v2.0/.well-known/openid-configuration",
///         "scopes": [
///             "openid",
///             "profile",
///             "email",
///         ],
///     },
///     application_accelerator_enabled=True,
///     application_live_view_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
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
///     var exampleSpringCloudDevToolPortal = new Azure.AppPlatform.SpringCloudDevToolPortal("example", new()
///     {
///         Name = "default",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///         PublicNetworkAccessEnabled = true,
///         Sso = new Azure.AppPlatform.Inputs.SpringCloudDevToolPortalSsoArgs
///         {
///             ClientId = "example id",
///             ClientSecret = "example secret",
///             MetadataUrl = $"https://login.microsoftonline.com/{current.Apply(getClientConfigResult => getClientConfigResult.TenantId)}/v2.0/.well-known/openid-configuration",
///             Scopes = new[]
///             {
///                 "openid",
///                 "profile",
///                 "email",
///             },
///         },
///         ApplicationAcceleratorEnabled = true,
///         ApplicationLiveViewEnabled = true,
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
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
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
/// 		_, err = appplatform.NewSpringCloudDevToolPortal(ctx, "example", &appplatform.SpringCloudDevToolPortalArgs{
/// 			Name:                       pulumi.String("default"),
/// 			SpringCloudServiceId:       exampleSpringCloudService.ID().ToIDOutput().ToStringOutput(),
/// 			PublicNetworkAccessEnabled: pulumi.Bool(true),
/// 			Sso: &appplatform.SpringCloudDevToolPortalSsoArgs{
/// 				ClientId:     pulumi.String("example id"),
/// 				ClientSecret: pulumi.String("example secret"),
/// 				MetadataUrl:  pulumi.Sprintf("https://login.microsoftonline.com/%v/v2.0/.well-known/openid-configuration", current.TenantId),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("openid"),
/// 					pulumi.String("profile"),
/// 					pulumi.String("email"),
/// 				},
/// 			},
/// 			ApplicationAcceleratorEnabled: pulumi.Bool(true),
/// 			ApplicationLiveViewEnabled:    pulumi.Bool(true),
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
/// data "azure_core_getclientconfig" "current" {
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
/// resource "azure_appplatform_springclouddevtoolportal" "example" {
///   name                          = "default"
///   spring_cloud_service_id       = azure_appplatform_springcloudservice.example.id
///   public_network_access_enabled = true
///   sso = {
///     client_id     = "example id"
///     client_secret = "example secret"
///     metadata_url  ="https://login.microsoftonline.com/${data.azure_core_getclientconfig.current.tenant_id}/v2.0/.well-known/openid-configuration"
///     scopes        = ["openid", "profile", "email"]
///   }
///   application_accelerator_enabled = true
///   application_live_view_enabled   = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudDevToolPortal;
/// import com.pulumi.azure.appplatform.SpringCloudDevToolPortalArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudDevToolPortalSsoArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
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
///         var exampleSpringCloudDevToolPortal = new SpringCloudDevToolPortal("exampleSpringCloudDevToolPortal", SpringCloudDevToolPortalArgs.builder()
///             .name("default")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .publicNetworkAccessEnabled(true)
///             .sso(SpringCloudDevToolPortalSsoArgs.builder()
///                 .clientId("example id")
///                 .clientSecret("example secret")
///                 .metadataUrl(String.format("https://login.microsoftonline.com/%s/v2.0/.well-known/openid-configuration", current.tenantId()))
///                 .scopes(
///                     "openid",
///                     "profile",
///                     "email")
///                 .build())
///             .applicationAcceleratorEnabled(true)
///             .applicationLiveViewEnabled(true)
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
///   exampleSpringCloudDevToolPortal:
///     type: azure:appplatform:SpringCloudDevToolPortal
///     name: example
///     properties:
///       name: default
///       springCloudServiceId: ${exampleSpringCloudService.id}
///       publicNetworkAccessEnabled: true
///       sso:
///         clientId: example id
///         clientSecret: example secret
///         metadataUrl: https://login.microsoftonline.com/${current.tenantId}/v2.0/.well-known/openid-configuration
///         scopes:
///           - openid
///           - profile
///           - email
///       applicationAcceleratorEnabled: true
///       applicationLiveViewEnabled: true
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Spring Cloud Dev Tool Portals can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudDevToolPortal:SpringCloudDevToolPortal example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroup1/providers/Microsoft.AppPlatform/Spring/service1/DevToolPortals/default
/// ```
class SpringCloudDevToolPortal extends pulumi.CustomResource {
  /// Should the Accelerator plugin be enabled?
  late final pulumi.Output<bool> applicationAcceleratorEnabled;
  /// Should the Application Live View be enabled?
  late final pulumi.Output<bool> applicationLiveViewEnabled;
  /// The name which should be used for this Spring Cloud Dev Tool Portal. The only possible value is `default`. Changing this forces a new Spring Cloud Dev Tool Portal to be created.
  late final pulumi.Output<String> name;
  /// Is public network access enabled?
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Dev Tool Portal to be created.
  late final pulumi.Output<String> springCloudServiceId;
  /// A `sso` block as defined below.
  late final pulumi.Output<SpringCloudDevToolPortalSso?> sso;

  /// Creates a new [SpringCloudDevToolPortal].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudDevToolPortal]. {@macro pulumi_appplatform_spring_cloud_dev_tool_portal_spring_cloud_dev_tool_portal_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudDevToolPortal(
    String name, {
    SpringCloudDevToolPortalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudDevToolPortal:SpringCloudDevToolPortal',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    applicationAcceleratorEnabled = registerOutput<bool>('applicationAcceleratorEnabled');
    applicationLiveViewEnabled = registerOutput<bool>('applicationLiveViewEnabled');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
    sso = registerOutput<SpringCloudDevToolPortalSso?>('sso', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudDevToolPortalSso.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [SpringCloudDevToolPortal] resource's state with the given [name] and [id].
  static SpringCloudDevToolPortal get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudDevToolPortalState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SpringCloudDevToolPortal._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SpringCloudDevToolPortal._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudDevToolPortal:SpringCloudDevToolPortal',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationAcceleratorEnabled = registerOutput<bool>('applicationAcceleratorEnabled');
    applicationLiveViewEnabled = registerOutput<bool>('applicationLiveViewEnabled');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
    sso = registerOutput<SpringCloudDevToolPortalSso?>('sso', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudDevToolPortalSso.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [SpringCloudDevToolPortal] resource.
  SpringCloudDevToolPortal.reference(String urn)
    : super(
        'azure:appplatform/springCloudDevToolPortal:SpringCloudDevToolPortal',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationAcceleratorEnabled = registerOutput<bool>('applicationAcceleratorEnabled');
    applicationLiveViewEnabled = registerOutput<bool>('applicationLiveViewEnabled');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
    sso = registerOutput<SpringCloudDevToolPortalSso?>('sso', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudDevToolPortalSso.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
