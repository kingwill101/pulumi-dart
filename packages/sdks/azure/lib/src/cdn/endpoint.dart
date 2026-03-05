import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';
import 'endpoint_global_delivery_rule.dart';
import 'endpoint_state.dart';

/// A CDN (classic) Endpoint is the entity within a CDN Profile containing configuration information regarding caching behaviours and origins. The CDN Endpoint is exposed using the URL format `&lt;endpointname&gt;.azureedge.net`.
///
/// !&gt; **Note:** Azure rolled out a breaking change on Friday 9th April 2021 which may cause issues with the CDN/FrontDoor resources. More information is available in this GitHub issue - unfortunately this may necessitate a breaking change to the CDN (classic) and FrontDoor (classic) resources, more information will be posted in the GitHub issue as the necessary changes are identified.
///
/// !&gt; **Note:** Support for the CDN (classic) `sku` `Standard_Akamai` was deprecated from Azure on `October 31, 2023` and is no longer available.
///
/// !&gt; **Note:** Support for the CDN (classic) `sku` `Standard_Verizon` and `Premium_Verizon` was deprecated from Azure on `January 15, 2025` and is no longer available.
///
/// !&gt; **Note:** Support for the CDN (classic) `sku` `Standard_Microsoft` and `Standard_ChinaCdn` will be deprecated from Azure on `October 1, 2025` and will no longer be available, however modifications to existing CDN (classic) resources will continue to be supported until the API reaches full retirement on `September 30, 2027`.
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
/// const exampleProfile = new azure.cdn.Profile("example", {
///     name: "example-cdn",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard_Microsoft",
/// });
/// const exampleEndpoint = new azure.cdn.Endpoint("example", {
///     name: "example",
///     profileName: exampleProfile.name,
///     location: example.location,
///     resourceGroupName: example.name,
///     origins: [{
///         name: "example",
///         hostName: "www.contoso.com",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_profile = azure.cdn.Profile("example",
///     name="example-cdn",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard_Microsoft")
/// example_endpoint = azure.cdn.Endpoint("example",
///     name="example",
///     profile_name=example_profile.name,
///     location=example.location,
///     resource_group_name=example.name,
///     origins=[{
///         "name": "example",
///         "host_name": "www.contoso.com",
///     }])
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
///     var exampleProfile = new Azure.Cdn.Profile("example", new()
///     {
///         Name = "example-cdn",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard_Microsoft",
///     });
///
///     var exampleEndpoint = new Azure.Cdn.Endpoint("example", new()
///     {
///         Name = "example",
///         ProfileName = exampleProfile.Name,
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Origins = new[]
///         {
///             new Azure.Cdn.Inputs.EndpointOriginArgs
///             {
///                 Name = "example",
///                 HostName = "www.contoso.com",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
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
/// 		exampleProfile, err := cdn.NewProfile(ctx, "example", &cdn.ProfileArgs{
/// 			Name:              pulumi.String("example-cdn"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard_Microsoft"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewEndpoint(ctx, "example", &cdn.EndpointArgs{
/// 			Name:              pulumi.String("example"),
/// 			ProfileName:       exampleProfile.Name,
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Origins: cdn.EndpointOriginArray{
/// 				&cdn.EndpointOriginArgs{
/// 					Name:     pulumi.String("example"),
/// 					HostName: pulumi.String("www.contoso.com"),
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
/// import com.pulumi.azure.cdn.Profile;
/// import com.pulumi.azure.cdn.ProfileArgs;
/// import com.pulumi.azure.cdn.Endpoint;
/// import com.pulumi.azure.cdn.EndpointArgs;
/// import com.pulumi.azure.cdn.inputs.EndpointOriginArgs;
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
///         var exampleProfile = new Profile("exampleProfile", ProfileArgs.builder()
///             .name("example-cdn")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard_Microsoft")
///             .build());
///
///         var exampleEndpoint = new Endpoint("exampleEndpoint", EndpointArgs.builder()
///             .name("example")
///             .profileName(exampleProfile.name())
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .origins(EndpointOriginArgs.builder()
///                 .name("example")
///                 .hostName("www.contoso.com")
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
///   exampleProfile:
///     type: azure:cdn:Profile
///     name: example
///     properties:
///       name: example-cdn
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard_Microsoft
///   exampleEndpoint:
///     type: azure:cdn:Endpoint
///     name: example
///     properties:
///       name: example
///       profileName: ${exampleProfile.name}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       origins:
///         - name: example
///           hostName: www.contoso.com
/// ```
///
///
/// ## Import
///
/// CDN Endpoints can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/endpoint:Endpoint example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Cdn/profiles/myprofile1/endpoints/myendpoint1
/// ```
class Endpoint extends pulumi.CustomResource {
  /// An array of strings that indicates a content types on which compression will be applied. The value for the elements should be MIME types.
  late final pulumi.Output<List<String>?> contentTypesToCompresses;

  /// Rules for the rules engine. An endpoint can contain up until 4 of those rules that consist of conditions and actions. A `delivery_rule` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> deliveryRules;

  /// The Fully Qualified Domain Name of the CDN Endpoint.
  late final pulumi.Output<String> fqdn;

  /// A set of Geo Filters for this CDN Endpoint. Each `geo_filter` block supports fields documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> geoFilters;

  /// Actions that are valid for all resources regardless of any conditions. A `global_delivery_rule` block as defined below.
  late final pulumi.Output<EndpointGlobalDeliveryRule?> globalDeliveryRule;

  /// Indicates whether compression is to be enabled.
  late final pulumi.Output<bool?> isCompressionEnabled;

  /// Specifies if http allowed. Defaults to `true`.
  late final pulumi.Output<bool?> isHttpAllowed;

  /// Specifies if https allowed. Defaults to `true`.
  late final pulumi.Output<bool?> isHttpsAllowed;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the CDN Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// What types of optimization should this CDN Endpoint optimize for? Possible values include `DynamicSiteAcceleration`, `GeneralMediaStreaming`, `GeneralWebDelivery`, `LargeFileDownload` and `VideoOnDemandMediaStreaming`.
  late final pulumi.Output<String?> optimizationType;

  /// The host header CDN provider will send along with content requests to origins.
  late final pulumi.Output<String?> originHostHeader;

  /// The path used at for origin requests.
  late final pulumi.Output<String?> originPath;

  /// The set of origins of the CDN endpoint. When multiple origins exist, the first origin will be used as primary and rest will be used as failover options. Each `origin` block supports fields documented below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<Map<String, dynamic>>> origins;

  /// the path to a file hosted on the origin which helps accelerate delivery of the dynamic content and calculate the most optimal routes for the CDN. This is relative to the `origin_path`.
  ///
  /// &gt; **Note:** `global_delivery_rule` and `delivery_rule` are currently only available for `Microsoft_Standard` CDN profiles.
  late final pulumi.Output<String?> probePath;

  /// The CDN Profile to which to attach the CDN Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> profileName;

  /// Sets query string caching behavior. Allowed values are `IgnoreQueryString`, `BypassCaching` and `UseQueryString`. `NotSet` value can be used for `Premium Verizon` CDN profile. Defaults to `IgnoreQueryString`.
  late final pulumi.Output<String?> querystringCachingBehaviour;

  /// The name of the resource group in which to create the CDN Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Endpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Endpoint]. {@macro pulumi_cdn_endpoint_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cdn/endpoint:Endpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    contentTypesToCompresses = registerOutput<List<String>?>(
      'contentTypesToCompresses',
    );
    deliveryRules = registerOutput<List<Map<String, dynamic>>?>(
      'deliveryRules',
    );
    fqdn = registerOutput<String>('fqdn');
    geoFilters = registerOutput<List<Map<String, dynamic>>?>('geoFilters');
    globalDeliveryRule = registerOutput<EndpointGlobalDeliveryRule?>(
      'globalDeliveryRule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointGlobalDeliveryRule.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    isCompressionEnabled = registerOutput<bool?>('isCompressionEnabled');
    isHttpAllowed = registerOutput<bool?>('isHttpAllowed');
    isHttpsAllowed = registerOutput<bool?>('isHttpsAllowed');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    optimizationType = registerOutput<String?>('optimizationType');
    originHostHeader = registerOutput<String?>('originHostHeader');
    originPath = registerOutput<String?>('originPath');
    origins = registerOutput<List<Map<String, dynamic>>>('origins');
    probePath = registerOutput<String?>('probePath');
    profileName = registerOutput<String>('profileName');
    querystringCachingBehaviour = registerOutput<String?>(
      'querystringCachingBehaviour',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Endpoint] resource's state with the given [name] and [id].
  static Endpoint get(
    String name,
    pulumi.Input<String> id, {
    EndpointState? state,
  }) {
    return Endpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Endpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cdn/endpoint:Endpoint',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    contentTypesToCompresses = registerOutput<List<String>?>(
      'contentTypesToCompresses',
    );
    deliveryRules = registerOutput<List<Map<String, dynamic>>?>(
      'deliveryRules',
    );
    fqdn = registerOutput<String>('fqdn');
    geoFilters = registerOutput<List<Map<String, dynamic>>?>('geoFilters');
    globalDeliveryRule = registerOutput<EndpointGlobalDeliveryRule?>(
      'globalDeliveryRule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointGlobalDeliveryRule.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    isCompressionEnabled = registerOutput<bool?>('isCompressionEnabled');
    isHttpAllowed = registerOutput<bool?>('isHttpAllowed');
    isHttpsAllowed = registerOutput<bool?>('isHttpsAllowed');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    optimizationType = registerOutput<String?>('optimizationType');
    originHostHeader = registerOutput<String?>('originHostHeader');
    originPath = registerOutput<String?>('originPath');
    origins = registerOutput<List<Map<String, dynamic>>>('origins');
    probePath = registerOutput<String?>('probePath');
    profileName = registerOutput<String>('profileName');
    querystringCachingBehaviour = registerOutput<String?>(
      'querystringCachingBehaviour',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
