import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_profile_args.dart';
import 'frontdoor_profile_identity.dart';
import 'frontdoor_profile_state.dart';

/// Manages a Front Door (standard/premium) Profile which contains a collection of endpoints and origin groups.
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
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     location: example.location,
///     name: "example-identity",
///     resourceGroupName: example.name,
/// });
/// const exampleFrontdoorProfile = new azure.cdn.FrontdoorProfile("example", {
///     name: "example-cdn-profile",
///     resourceGroupName: example.name,
///     skuName: "Premium_AzureFrontDoor",
///     responseTimeoutSeconds: 120,
///     identity: {
///         type: "SystemAssigned, UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
///     logScrubbingRules: [{
///         matchVariable: "RequestIPAddress",
///     }],
///     tags: {
///         environment: "Production",
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
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     location=example.location,
///     name="example-identity",
///     resource_group_name=example.name)
/// example_frontdoor_profile = azure.cdn.FrontdoorProfile("example",
///     name="example-cdn-profile",
///     resource_group_name=example.name,
///     sku_name="Premium_AzureFrontDoor",
///     response_timeout_seconds=120,
///     identity={
///         "type": "SystemAssigned, UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     },
///     log_scrubbing_rules=[{
///         "match_variable": "RequestIPAddress",
///     }],
///     tags={
///         "environment": "Production",
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
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Location = example.Location,
///         Name = "example-identity",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleFrontdoorProfile = new Azure.Cdn.FrontdoorProfile("example", new()
///     {
///         Name = "example-cdn-profile",
///         ResourceGroupName = example.Name,
///         SkuName = "Premium_AzureFrontDoor",
///         ResponseTimeoutSeconds = 120,
///         Identity = new Azure.Cdn.Inputs.FrontdoorProfileIdentityArgs
///         {
///             Type = "SystemAssigned, UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///         LogScrubbingRules = new[]
///         {
///             new Azure.Cdn.Inputs.FrontdoorProfileLogScrubbingRuleArgs
///             {
///                 MatchVariable = "RequestIPAddress",
///             },
///         },
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
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
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example-identity"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorProfile(ctx, "example", &cdn.FrontdoorProfileArgs{
/// 			Name:                   pulumi.String("example-cdn-profile"),
/// 			ResourceGroupName:      example.Name,
/// 			SkuName:                pulumi.String("Premium_AzureFrontDoor"),
/// 			ResponseTimeoutSeconds: pulumi.Int(120),
/// 			Identity: &cdn.FrontdoorProfileIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned, UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
/// 			LogScrubbingRules: cdn.FrontdoorProfileLogScrubbingRuleArray{
/// 				&cdn.FrontdoorProfileLogScrubbingRuleArgs{
/// 					MatchVariable: pulumi.String("RequestIPAddress"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
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
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.cdn.FrontdoorProfile;
/// import com.pulumi.azure.cdn.FrontdoorProfileArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorProfileIdentityArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorProfileLogScrubbingRuleArgs;
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
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .location(example.location())
///             .name("example-identity")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleFrontdoorProfile = new FrontdoorProfile("exampleFrontdoorProfile", FrontdoorProfileArgs.builder()
///             .name("example-cdn-profile")
///             .resourceGroupName(example.name())
///             .skuName("Premium_AzureFrontDoor")
///             .responseTimeoutSeconds(120)
///             .identity(FrontdoorProfileIdentityArgs.builder()
///                 .type("SystemAssigned, UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .logScrubbingRules(FrontdoorProfileLogScrubbingRuleArgs.builder()
///                 .matchVariable("RequestIPAddress")
///                 .build())
///             .tags(Map.of("environment", "Production"))
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
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       location: ${example.location}
///       name: example-identity
///       resourceGroupName: ${example.name}
///   exampleFrontdoorProfile:
///     type: azure:cdn:FrontdoorProfile
///     name: example
///     properties:
///       name: example-cdn-profile
///       resourceGroupName: ${example.name}
///       skuName: Premium_AzureFrontDoor
///       responseTimeoutSeconds: 120
///       identity:
///         type: SystemAssigned, UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///       logScrubbingRules:
///         - matchVariable: RequestIPAddress
///       tags:
///         environment: Production
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2024-02-01
///
/// ## Import
///
/// Front Door Profiles can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/frontdoorProfile:FrontdoorProfile example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Cdn/profiles/myprofile1
/// ```
class FrontdoorProfile extends pulumi.CustomResource {
  /// An `identity` block as defined below.
  late final pulumi.Output<FrontdoorProfileIdentity?> identity;

  /// One or more `log_scrubbing_rule` blocks as defined below.
  ///
  /// &gt; **Note:** When no `log_scrubbing_rule` blocks are defined, log scrubbing will be automatically `disabled`. When one or more `log_scrubbing_rule` blocks are present, log scrubbing will be `enabled`.
  late final pulumi.Output<List<Map<String, dynamic>>?> logScrubbingRules;

  /// Specifies the name of the Front Door Profile. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where this Front Door Profile should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The UUID of this Front Door Profile which will be sent in the HTTP Header as the `X-Azure-FDID` attribute.
  late final pulumi.Output<String> resourceGuid;

  /// Specifies the maximum response timeout in seconds. Possible values are between `16` and `240` seconds (inclusive). Defaults to `120` seconds.
  late final pulumi.Output<int?> responseTimeoutSeconds;

  /// Specifies the SKU for this Front Door Profile. Possible values include `Standard_AzureFrontDoor` and `Premium_AzureFrontDoor`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> skuName;

  /// Specifies a mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [FrontdoorProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontdoorProfile]. {@macro pulumi_cdn_frontdoor_profile_frontdoor_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontdoorProfile(
    String name, {
    FrontdoorProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cdn/frontdoorProfile:FrontdoorProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    identity = registerOutput<FrontdoorProfileIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FrontdoorProfileIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    logScrubbingRules = registerOutput<List<Map<String, dynamic>>?>(
      'logScrubbingRules',
    );
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceGuid = registerOutput<String>('resourceGuid');
    responseTimeoutSeconds = registerOutput<int?>('responseTimeoutSeconds');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [FrontdoorProfile] resource's state with the given [name] and [id].
  static FrontdoorProfile get(
    String name,
    pulumi.Input<String> id, {
    FrontdoorProfileState? state,
  }) {
    return FrontdoorProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FrontdoorProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cdn/frontdoorProfile:FrontdoorProfile',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    identity = registerOutput<FrontdoorProfileIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FrontdoorProfileIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    logScrubbingRules = registerOutput<List<Map<String, dynamic>>?>(
      'logScrubbingRules',
    );
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceGuid = registerOutput<String>('resourceGuid');
    responseTimeoutSeconds = registerOutput<int?>('responseTimeoutSeconds');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
