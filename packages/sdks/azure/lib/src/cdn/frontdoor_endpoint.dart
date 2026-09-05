import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_endpoint_args.dart';
import 'frontdoor_endpoint_state.dart';

/// Manages a Front Door (standard/premium) Endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-cdn-frontdoor",
///     location: "West Europe",
/// });
/// const exampleFrontdoorProfile = new azure.cdn.FrontdoorProfile("example", {
///     name: "example-profile",
///     resourceGroupName: example.name,
///     skuName: "Standard_AzureFrontDoor",
/// });
/// const exampleFrontdoorEndpoint = new azure.cdn.FrontdoorEndpoint("example", {
///     name: "example-endpoint",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     tags: {
///         ENV: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-cdn-frontdoor",
///     location="West Europe")
/// example_frontdoor_profile = azure.cdn.FrontdoorProfile("example",
///     name="example-profile",
///     resource_group_name=example.name,
///     sku_name="Standard_AzureFrontDoor")
/// example_frontdoor_endpoint = azure.cdn.FrontdoorEndpoint("example",
///     name="example-endpoint",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     tags={
///         "ENV": "example",
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
///         Name = "example-cdn-frontdoor",
///         Location = "West Europe",
///     });
///
///     var exampleFrontdoorProfile = new Azure.Cdn.FrontdoorProfile("example", new()
///     {
///         Name = "example-profile",
///         ResourceGroupName = example.Name,
///         SkuName = "Standard_AzureFrontDoor",
///     });
///
///     var exampleFrontdoorEndpoint = new Azure.Cdn.FrontdoorEndpoint("example", new()
///     {
///         Name = "example-endpoint",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         Tags =
///         {
///             { "ENV", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-cdn-frontdoor"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorProfile, err := cdn.NewFrontdoorProfile(ctx, "example", &cdn.FrontdoorProfileArgs{
/// 			Name:              pulumi.String("example-profile"),
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard_AzureFrontDoor"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorEndpoint(ctx, "example", &cdn.FrontdoorEndpointArgs{
/// 			Name:                  pulumi.String("example-endpoint"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
/// 			Tags: pulumi.StringMap{
/// 				"ENV": pulumi.String("example"),
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
///   name     = "example-cdn-frontdoor"
///   location = "West Europe"
/// }
/// resource "azure_cdn_frontdoorprofile" "example" {
///   name                = "example-profile"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Standard_AzureFrontDoor"
/// }
/// resource "azure_cdn_frontdoorendpoint" "example" {
///   name                     = "example-endpoint"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
///   tags = {
///     "ENV" = "example"
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
/// import com.pulumi.azure.cdn.FrontdoorProfile;
/// import com.pulumi.azure.cdn.FrontdoorProfileArgs;
/// import com.pulumi.azure.cdn.FrontdoorEndpoint;
/// import com.pulumi.azure.cdn.FrontdoorEndpointArgs;
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
///             .name("example-cdn-frontdoor")
///             .location("West Europe")
///             .build());
///
///         var exampleFrontdoorProfile = new FrontdoorProfile("exampleFrontdoorProfile", FrontdoorProfileArgs.builder()
///             .name("example-profile")
///             .resourceGroupName(example.name())
///             .skuName("Standard_AzureFrontDoor")
///             .build());
///
///         var exampleFrontdoorEndpoint = new FrontdoorEndpoint("exampleFrontdoorEndpoint", FrontdoorEndpointArgs.builder()
///             .name("example-endpoint")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .tags(Map.of("ENV", "example"))
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
///       name: example-cdn-frontdoor
///       location: West Europe
///   exampleFrontdoorProfile:
///     type: azure:cdn:FrontdoorProfile
///     name: example
///     properties:
///       name: example-profile
///       resourceGroupName: ${example.name}
///       skuName: Standard_AzureFrontDoor
///   exampleFrontdoorEndpoint:
///     type: azure:cdn:FrontdoorEndpoint
///     name: example
///     properties:
///       name: example-endpoint
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       tags:
///         ENV: example
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2025-12-01
///
/// ## Import
///
/// Front Door Endpoints can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/frontdoorEndpoint:FrontdoorEndpoint example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Cdn/profiles/profile1/afdEndpoints/endpoint1
/// ```
class FrontdoorEndpoint extends pulumi.CustomResource {
  /// The ID of the Front Door Profile within which this Front Door Endpoint should exist. Changing this forces a new Front Door Endpoint to be created.
  late final pulumi.Output<String> cdnFrontdoorProfileId;
  /// Specifies if this Front Door Endpoint is enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The host name of the Front Door Endpoint, in the format `{endpointName}.{dnsZone}` (for example, `contoso.azureedge.net`).
  late final pulumi.Output<String> hostName;
  /// The name which should be used for this Front Door Endpoint. Changing this forces a new Front Door Endpoint to be created.
  late final pulumi.Output<String> name;
  /// Specifies a mapping of tags which should be assigned to the Front Door Endpoint.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [FrontdoorEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontdoorEndpoint]. {@macro pulumi_cdn_frontdoor_endpoint_frontdoor_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontdoorEndpoint(
    String name, {
    FrontdoorEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorEndpoint:FrontdoorEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    enabled = registerOutput<bool?>('enabled');
    hostName = registerOutput<String>('hostName');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [FrontdoorEndpoint] resource's state with the given [name] and [id].
  static FrontdoorEndpoint get(
    String name,
    pulumi.Input<String> id, {
    FrontdoorEndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FrontdoorEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FrontdoorEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorEndpoint:FrontdoorEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    enabled = registerOutput<bool?>('enabled');
    hostName = registerOutput<String>('hostName');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [FrontdoorEndpoint] resource.
  FrontdoorEndpoint.reference(String urn)
    : super(
        'azure:cdn/frontdoorEndpoint:FrontdoorEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    enabled = registerOutput<bool?>('enabled');
    hostName = registerOutput<String>('hostName');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
