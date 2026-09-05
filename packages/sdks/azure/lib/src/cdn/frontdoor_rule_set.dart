import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_rule_set_args.dart';
import 'frontdoor_rule_set_state.dart';

/// Manages a Front Door (standard/premium) Rule Set.
///
/// &gt; **Note:** This resource creates the Front Door Rule Set in non-batch mode and individual rules are managed using `azure.cdn.FrontdoorRule`.
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
/// const exampleFrontdoorRuleSet = new azure.cdn.FrontdoorRuleSet("example", {
///     name: "ExampleRuleSet",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
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
/// example_frontdoor_rule_set = azure.cdn.FrontdoorRuleSet("example",
///     name="ExampleRuleSet",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id)
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
///     var exampleFrontdoorRuleSet = new Azure.Cdn.FrontdoorRuleSet("example", new()
///     {
///         Name = "ExampleRuleSet",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
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
/// 		_, err = cdn.NewFrontdoorRuleSet(ctx, "example", &cdn.FrontdoorRuleSetArgs{
/// 			Name:                  pulumi.String("ExampleRuleSet"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
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
/// resource "azure_cdn_frontdoorruleset" "example" {
///   name                     = "ExampleRuleSet"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
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
/// import com.pulumi.azure.cdn.FrontdoorRuleSet;
/// import com.pulumi.azure.cdn.FrontdoorRuleSetArgs;
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
///         var exampleFrontdoorRuleSet = new FrontdoorRuleSet("exampleFrontdoorRuleSet", FrontdoorRuleSetArgs.builder()
///             .name("ExampleRuleSet")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
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
///   exampleFrontdoorRuleSet:
///     type: azure:cdn:FrontdoorRuleSet
///     name: example
///     properties:
///       name: ExampleRuleSet
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
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
/// Front Door Rule Sets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/frontdoorRuleSet:FrontdoorRuleSet example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Cdn/profiles/profile1/ruleSets/ruleSet1
/// ```
class FrontdoorRuleSet extends pulumi.CustomResource {
  /// The ID of the Front Door Profile. Changing this forces a new Front Door Rule Set to be created.
  late final pulumi.Output<String> cdnFrontdoorProfileId;
  /// The name which should be used for this Front Door Rule Set. Changing this forces a new Front Door Rule Set to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [FrontdoorRuleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontdoorRuleSet]. {@macro pulumi_cdn_frontdoor_rule_set_frontdoor_rule_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontdoorRuleSet(
    String name, {
    FrontdoorRuleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorRuleSet:FrontdoorRuleSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [FrontdoorRuleSet] resource's state with the given [name] and [id].
  static FrontdoorRuleSet get(
    String name,
    pulumi.Input<String> id, {
    FrontdoorRuleSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FrontdoorRuleSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FrontdoorRuleSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorRuleSet:FrontdoorRuleSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [FrontdoorRuleSet] resource.
  FrontdoorRuleSet.reference(String urn)
    : super(
        'azure:cdn/frontdoorRuleSet:FrontdoorRuleSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    this.name = registerOutput<String>('name');
  }
}
