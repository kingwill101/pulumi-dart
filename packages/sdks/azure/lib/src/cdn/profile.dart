import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_args.dart';
import 'profile_state.dart';

/// Manages a CDN (classic) Profile to create a collection of CDN Endpoints.
///
/// !&gt; **Note:** Azure rolled out a breaking change on Friday 9th April 2021 which may cause issues with the CDN/FrontDoor resources. More information is available in this GitHub issue - unfortunately this may necessitate a breaking change to the CDN and FrontDoor resources, more information will be posted in the GitHub issue as the necessary changes are identified.
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
///     name: "exampleCdnProfile",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard_Microsoft",
///     tags: {
///         environment: "Production",
///         cost_center: "MSFT",
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
/// example_profile = azure.cdn.Profile("example",
///     name="exampleCdnProfile",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard_Microsoft",
///     tags={
///         "environment": "Production",
///         "cost_center": "MSFT",
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
///     var exampleProfile = new Azure.Cdn.Profile("example", new()
///     {
///         Name = "exampleCdnProfile",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard_Microsoft",
///         Tags =
///         {
///             { "environment", "Production" },
///             { "cost_center", "MSFT" },
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
/// 		_, err = cdn.NewProfile(ctx, "example", &cdn.ProfileArgs{
/// 			Name:              pulumi.String("exampleCdnProfile"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard_Microsoft"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 				"cost_center": pulumi.String("MSFT"),
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
///             .name("exampleCdnProfile")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard_Microsoft")
///             .tags(Map.ofEntries(
///                 Map.entry("environment", "Production"),
///                 Map.entry("cost_center", "MSFT")
///             ))
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
///       name: exampleCdnProfile
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard_Microsoft
///       tags:
///         environment: Production
///         cost_center: MSFT
/// ```
///
///
/// ## Import
///
/// CDN Profiles can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/profile:Profile example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Cdn/profiles/myprofile1
/// ```
class Profile extends pulumi.CustomResource {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the CDN Profile. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the CDN Profile. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The pricing related information of current CDN profile. Accepted values are `Standard_Akamai`, `Standard_ChinaCdn`, `Standard_Microsoft`, `Standard_Verizon` or `Premium_Verizon`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Profile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Profile]. {@macro pulumi_cdn_profile_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Profile(
    String name, {
    ProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/profile:Profile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Profile] resource's state with the given [name] and [id].
  static Profile get(
    String name,
    pulumi.Input<String> id, {
    ProfileState? state,
  }) {
    return Profile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Profile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/profile:Profile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
