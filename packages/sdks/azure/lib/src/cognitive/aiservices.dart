import 'package:pulumi/pulumi.dart' as pulumi;
import 'aiservices_args.dart';
import 'aiservices_customer_managed_key.dart';
import 'aiservices_identity.dart';
import 'aiservices_network_acls.dart';
import 'aiservices_state.dart';

/// Manages an AI Services Account.
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
/// const exampleAIServices = new azure.cognitive.AIServices("example", {
///     name: "example-account",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "S0",
///     tags: {
///         Acceptance: "Test",
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
/// example_ai_services = azure.cognitive.AIServices("example",
///     name="example-account",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="S0",
///     tags={
///         "Acceptance": "Test",
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
///     var exampleAIServices = new Azure.Cognitive.AIServices("example", new()
///     {
///         Name = "example-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "S0",
///         Tags =
///         {
///             { "Acceptance", "Test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cognitive"
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
/// 		_, err = cognitive.NewAIServices(ctx, "example", &cognitive.AIServicesArgs{
/// 			Name:              pulumi.String("example-account"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("S0"),
/// 			Tags: pulumi.StringMap{
/// 				"Acceptance": pulumi.String("Test"),
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
/// import com.pulumi.azure.cognitive.AIServices;
/// import com.pulumi.azure.cognitive.AIServicesArgs;
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
///         var exampleAIServices = new AIServices("exampleAIServices", AIServicesArgs.builder()
///             .name("example-account")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("S0")
///             .tags(Map.of("Acceptance", "Test"))
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
///   exampleAIServices:
///     type: azure:cognitive:AIServices
///     name: example
///     properties:
///       name: example-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: S0
///       tags:
///         Acceptance: Test
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.CognitiveServices` - 2025-06-01
///
/// ## Import
///
/// AI Services Account can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cognitive/aIServices:AIServices account1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.CognitiveServices/accounts/account1
/// ```
class AIServices extends pulumi.CustomResource {
  /// The subdomain name used for token-based authentication. This property is required when `network_acls` is specified. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If you do not specify a `custom_subdomain_name` then you will not be able to attach a Private Endpoint to the resource.
  late final pulumi.Output<String?> customSubdomainName;

  /// A `customer_managed_key` block as documented below.
  late final pulumi.Output<AIServicesCustomerManagedKey?> customerManagedKey;

  /// The endpoint used to connect to the AI Services Account.
  late final pulumi.Output<String> endpoint;

  /// List of FQDNs allowed for the AI Services Account.
  late final pulumi.Output<List<String>?> fqdns;

  /// An `identity` block as defined below.
  late final pulumi.Output<AIServicesIdentity?> identity;

  /// Whether local authentication is enabled for the AI Services Account. Defaults to `true`.
  late final pulumi.Output<bool?> localAuthenticationEnabled;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the AI Services Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// A `network_acls` block as defined below. When this property is specified, `custom_subdomain_name` is also required to be set.
  late final pulumi.Output<AIServicesNetworkAcls?> networkAcls;

  /// Whether outbound network access is restricted for the AI Services Account. Defaults to `false`.
  late final pulumi.Output<bool?> outboundNetworkAccessRestricted;

  /// A primary access key which can be used to connect to the AI Services Account.
  late final pulumi.Output<String> primaryAccessKey;

  /// Whether public network access is allowed for the AI Services Account. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  late final pulumi.Output<String?> publicNetworkAccess;

  /// The name of the resource group in which the AI Services Account is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The secondary access key which can be used to connect to the AI Services Account.
  late final pulumi.Output<String> secondaryAccessKey;

  /// Specifies the SKU Name for this AI Services Account. Possible values are `F0`, `F1`, `S0`, `S`, `S1`, `S2`, `S3`, `S4`, `S5`, `S6`, `P0`, `P1`, `P2`, `E0` and `DC0`.
  ///
  /// &gt; **Note:** SKU `DC0` is the commitment tier for AI Services Account containers running in disconnected environments. You must obtain approval from Microsoft by submitting the [request form](https://aka.ms/csdisconnectedcontainers) first, before you can use this SKU. More information on [Purchase a commitment plan to use containers in disconnected environments](https://learn.microsoft.com/en-us/azure/cognitive-services/containers/disconnected-containers?tabs=stt#purchase-a-commitment-plan-to-use-containers-in-disconnected-environments).
  late final pulumi.Output<String> skuName;

  /// A `storage` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> storages;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [AIServices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AIServices]. {@macro pulumi_cognitive_a_iservices_aiservices_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AIServices(
    String name, {
    AIServicesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cognitive/aIServices:AIServices',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customSubdomainName = registerOutput<String?>('customSubdomainName');
    customerManagedKey = registerOutput<AIServicesCustomerManagedKey?>(
      'customerManagedKey',
    );
    endpoint = registerOutput<String>('endpoint');
    fqdns = registerOutput<List<String>?>('fqdns');
    identity = registerOutput<AIServicesIdentity?>('identity');
    localAuthenticationEnabled = registerOutput<bool?>(
      'localAuthenticationEnabled',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkAcls = registerOutput<AIServicesNetworkAcls?>('networkAcls');
    outboundNetworkAccessRestricted = registerOutput<bool?>(
      'outboundNetworkAccessRestricted',
    );
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    skuName = registerOutput<String>('skuName');
    storages = registerOutput<List<Map<String, dynamic>>?>('storages');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [AIServices] resource's state with the given [name] and [id].
  static AIServices get(
    String name,
    pulumi.Input<String> id, {
    AIServicesState? state,
  }) {
    return AIServices._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AIServices._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cognitive/aIServices:AIServices',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customSubdomainName = registerOutput<String?>('customSubdomainName');
    customerManagedKey = registerOutput<AIServicesCustomerManagedKey?>(
      'customerManagedKey',
    );
    endpoint = registerOutput<String>('endpoint');
    fqdns = registerOutput<List<String>?>('fqdns');
    identity = registerOutput<AIServicesIdentity?>('identity');
    localAuthenticationEnabled = registerOutput<bool?>(
      'localAuthenticationEnabled',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkAcls = registerOutput<AIServicesNetworkAcls?>('networkAcls');
    outboundNetworkAccessRestricted = registerOutput<bool?>(
      'outboundNetworkAccessRestricted',
    );
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    skuName = registerOutput<String>('skuName');
    storages = registerOutput<List<Map<String, dynamic>>?>('storages');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
