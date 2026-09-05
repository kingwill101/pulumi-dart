import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_connection_custom_keys_args.dart';
import 'account_connection_custom_keys_state.dart';

/// Manages a Cognitive Services (Microsoft Foundry) Account Connection with Custom Keys authentication.
///
/// &gt; **Note:** In the new Foundry portal experience, "Account Connections" are shown as "Tools" under the "Build" menu.
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
/// const exampleAccount = new azure.cognitive.Account("example", {
///     name: "example-aiservices",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "AIServices",
///     skuName: "S0",
///     projectManagementEnabled: true,
///     customSubdomainName: "exampleaiservices",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const openai = new azure.cognitive.Account("openai", {
///     name: "example-openai",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "OpenAI",
///     skuName: "S0",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleAccountConnectionCustomKeys = new azure.cognitive.AccountConnectionCustomKeys("example", {
///     name: "example-connection",
///     cognitiveAccountId: exampleAccount.id,
///     category: "CustomKeys",
///     target: openai.endpoint,
///     metadata: {
///         ApiType: "Azure",
///         ResourceId: openai.id,
///         Location: openai.location,
///     },
///     customKeys: {
///         primaryKey: openai.primaryAccessKey,
///         secondaryKey: openai.secondaryAccessKey,
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
/// example_account = azure.cognitive.Account("example",
///     name="example-aiservices",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="AIServices",
///     sku_name="S0",
///     project_management_enabled=True,
///     custom_subdomain_name="exampleaiservices",
///     identity={
///         "type": "SystemAssigned",
///     })
/// openai = azure.cognitive.Account("openai",
///     name="example-openai",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="OpenAI",
///     sku_name="S0",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_account_connection_custom_keys = azure.cognitive.AccountConnectionCustomKeys("example",
///     name="example-connection",
///     cognitive_account_id=example_account.id,
///     category="CustomKeys",
///     target=openai.endpoint,
///     metadata={
///         "ApiType": "Azure",
///         "ResourceId": openai.id,
///         "Location": openai.location,
///     },
///     custom_keys={
///         "primaryKey": openai.primary_access_key,
///         "secondaryKey": openai.secondary_access_key,
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
///     var exampleAccount = new Azure.Cognitive.Account("example", new()
///     {
///         Name = "example-aiservices",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "AIServices",
///         SkuName = "S0",
///         ProjectManagementEnabled = true,
///         CustomSubdomainName = "exampleaiservices",
///         Identity = new Azure.Cognitive.Inputs.AccountIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var openai = new Azure.Cognitive.Account("openai", new()
///     {
///         Name = "example-openai",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "OpenAI",
///         SkuName = "S0",
///         Identity = new Azure.Cognitive.Inputs.AccountIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleAccountConnectionCustomKeys = new Azure.Cognitive.AccountConnectionCustomKeys("example", new()
///     {
///         Name = "example-connection",
///         CognitiveAccountId = exampleAccount.Id,
///         Category = "CustomKeys",
///         Target = openai.Endpoint,
///         Metadata =
///         {
///             { "ApiType", "Azure" },
///             { "ResourceId", openai.Id },
///             { "Location", openai.Location },
///         },
///         CustomKeys =
///         {
///             { "primaryKey", openai.PrimaryAccessKey },
///             { "secondaryKey", openai.SecondaryAccessKey },
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
/// 		exampleAccount, err := cognitive.NewAccount(ctx, "example", &cognitive.AccountArgs{
/// 			Name:                     pulumi.String("example-aiservices"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			Kind:                     pulumi.String("AIServices"),
/// 			SkuName:                  pulumi.String("S0"),
/// 			ProjectManagementEnabled: pulumi.Bool(true),
/// 			CustomSubdomainName:      pulumi.String("exampleaiservices"),
/// 			Identity: &cognitive.AccountIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		openai, err := cognitive.NewAccount(ctx, "openai", &cognitive.AccountArgs{
/// 			Name:              pulumi.String("example-openai"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Kind:              pulumi.String("OpenAI"),
/// 			SkuName:           pulumi.String("S0"),
/// 			Identity: &cognitive.AccountIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognitive.NewAccountConnectionCustomKeys(ctx, "example", &cognitive.AccountConnectionCustomKeysArgs{
/// 			Name:               pulumi.String("example-connection"),
/// 			CognitiveAccountId: exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 			Category:           pulumi.String("CustomKeys"),
/// 			Target:             openai.Endpoint,
/// 			Metadata: pulumi.StringMap{
/// 				"ApiType":    pulumi.String("Azure"),
/// 				"ResourceId": openai.ID().ToIDOutput().ToStringOutput(),
/// 				"Location":   openai.Location,
/// 			},
/// 			CustomKeys: pulumi.StringMap{
/// 				"primaryKey":   openai.PrimaryAccessKey,
/// 				"secondaryKey": openai.SecondaryAccessKey,
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_cognitive_account" "example" {
///   name                       = "example-aiservices"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   kind                       = "AIServices"
///   sku_name                   = "S0"
///   project_management_enabled = true
///   custom_subdomain_name      = "exampleaiservices"
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_cognitive_account" "openai" {
///   name                = "example-openai"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   kind                = "OpenAI"
///   sku_name            = "S0"
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_cognitive_accountconnectioncustomkeys" "example" {
///   name                 = "example-connection"
///   cognitive_account_id = azure_cognitive_account.example.id
///   category             = "CustomKeys"
///   target               = azure_cognitive_account.openai.endpoint
///   metadata = {
///     "ApiType"    = "Azure"
///     "ResourceId" = azure_cognitive_account.openai.id
///     "Location"   = azure_cognitive_account.openai.location
///   }
///   custom_keys = {
///     "primaryKey"   = azure_cognitive_account.openai.primary_access_key
///     "secondaryKey" = azure_cognitive_account.openai.secondary_access_key
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
/// import com.pulumi.azure.cognitive.Account;
/// import com.pulumi.azure.cognitive.AccountArgs;
/// import com.pulumi.azure.cognitive.inputs.AccountIdentityArgs;
/// import com.pulumi.azure.cognitive.AccountConnectionCustomKeys;
/// import com.pulumi.azure.cognitive.AccountConnectionCustomKeysArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-aiservices")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("AIServices")
///             .skuName("S0")
///             .projectManagementEnabled(true)
///             .customSubdomainName("exampleaiservices")
///             .identity(AccountIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var openai = new Account("openai", AccountArgs.builder()
///             .name("example-openai")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("OpenAI")
///             .skuName("S0")
///             .identity(AccountIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleAccountConnectionCustomKeys = new AccountConnectionCustomKeys("exampleAccountConnectionCustomKeys", AccountConnectionCustomKeysArgs.builder()
///             .name("example-connection")
///             .cognitiveAccountId(exampleAccount.id())
///             .category("CustomKeys")
///             .target(openai.endpoint())
///             .metadata(Map.ofEntries(
///                 Map.entry("ApiType", "Azure"),
///                 Map.entry("ResourceId", openai.id()),
///                 Map.entry("Location", openai.location())
///             ))
///             .customKeys(Map.ofEntries(
///                 Map.entry("primaryKey", openai.primaryAccessKey()),
///                 Map.entry("secondaryKey", openai.secondaryAccessKey())
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
///   exampleAccount:
///     type: azure:cognitive:Account
///     name: example
///     properties:
///       name: example-aiservices
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: AIServices
///       skuName: S0
///       projectManagementEnabled: true
///       customSubdomainName: exampleaiservices
///       identity:
///         type: SystemAssigned
///   openai:
///     type: azure:cognitive:Account
///     properties:
///       name: example-openai
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: OpenAI
///       skuName: S0
///       identity:
///         type: SystemAssigned
///   exampleAccountConnectionCustomKeys:
///     type: azure:cognitive:AccountConnectionCustomKeys
///     name: example
///     properties:
///       name: example-connection
///       cognitiveAccountId: ${exampleAccount.id}
///       category: CustomKeys
///       target: ${openai.endpoint}
///       metadata:
///         ApiType: Azure
///         ResourceId: ${openai.id}
///         Location: ${openai.location}
///       customKeys:
///         primaryKey: ${openai.primaryAccessKey}
///         secondaryKey: ${openai.secondaryAccessKey}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.CognitiveServices` - 2026-03-01
///
/// ## Import
///
/// A Cognitive Services (Microsoft Foundry) Account Connection with Custom Keys authentication can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cognitive/accountConnectionCustomKeys:AccountConnectionCustomKeys example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.CognitiveServices/accounts/account1/connections/connection1
/// ```
class AccountConnectionCustomKeys extends pulumi.CustomResource {
  /// The category of the connection. Possible values are `CustomKeys`, `RemoteA2A`, and `RemoteTool`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> category;
  /// The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cognitiveAccountId;
  /// A mapping of custom keys for authentication. All values in this map are sensitive.
  late final pulumi.Output<Map<String, String>> customKeys;
  /// A mapping of metadata key-value pairs for the connection.
  ///
  /// &gt; **Note:** To determine the `metadata` shape for a connection category, create an equivalent connection in the Foundry portal, retrieve its resource ID, then inspect it with `az rest --method get --url "{connection_resource_id}?api-version=2026-03-01"`.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name of the Cognitive Services Account Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The target endpoint or resource for the connection.
  late final pulumi.Output<String> target;

  /// Creates a new [AccountConnectionCustomKeys].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountConnectionCustomKeys]. {@macro pulumi_cognitive_account_connection_custom_keys_account_connection_custom_keys_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountConnectionCustomKeys(
    String name, {
    AccountConnectionCustomKeysArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/accountConnectionCustomKeys:AccountConnectionCustomKeys',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['customKeys'],
        ) {
    category = registerOutput<String>('category');
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    customKeys = registerOutput<Map<String, String>>('customKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    target = registerOutput<String>('target');
  }

  /// Gets an existing [AccountConnectionCustomKeys] resource's state with the given [name] and [id].
  static AccountConnectionCustomKeys get(
    String name,
    pulumi.Input<String> id, {
    AccountConnectionCustomKeysState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccountConnectionCustomKeys._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccountConnectionCustomKeys._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/accountConnectionCustomKeys:AccountConnectionCustomKeys',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    category = registerOutput<String>('category');
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    customKeys = registerOutput<Map<String, String>>('customKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    target = registerOutput<String>('target');
  }

  /// Creates a typed reference to an existing [AccountConnectionCustomKeys] resource.
  AccountConnectionCustomKeys.reference(String urn)
    : super(
        'azure:cognitive/accountConnectionCustomKeys:AccountConnectionCustomKeys',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['customKeys'],
        isResourceReference: true,
      ) {
    category = registerOutput<String>('category');
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    customKeys = registerOutput<Map<String, String>>('customKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    target = registerOutput<String>('target');
  }
}
