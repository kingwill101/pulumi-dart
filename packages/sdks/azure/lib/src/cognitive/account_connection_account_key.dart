import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_connection_account_key_args.dart';
import 'account_connection_account_key_state.dart';

/// Manages a Cognitive Services (Microsoft Foundry) Account Connection with Account Key authentication.
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
/// const exampleAccount2 = new azure.storage.Account("example", {
///     name: "examplestorageacct",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleAccountConnectionAccountKey = new azure.cognitive.AccountConnectionAccountKey("example", {
///     name: "example-connection",
///     cognitiveAccountId: exampleAccount.id,
///     category: "AzureStorageAccount",
///     target: exampleAccount2.primaryBlobEndpoint,
///     accountKey: exampleAccount2.primaryAccessKey,
///     metadata: {
///         ApiType: "Azure",
///         ResourceId: exampleAccount2.id,
///         Location: exampleAccount2.location,
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
/// example_account2 = azure.storage.Account("example",
///     name="examplestorageacct",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_account_connection_account_key = azure.cognitive.AccountConnectionAccountKey("example",
///     name="example-connection",
///     cognitive_account_id=example_account.id,
///     category="AzureStorageAccount",
///     target=example_account2.primary_blob_endpoint,
///     account_key=example_account2.primary_access_key,
///     metadata={
///         "ApiType": "Azure",
///         "ResourceId": example_account2.id,
///         "Location": example_account2.location,
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
///     var exampleAccount2 = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageacct",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleAccountConnectionAccountKey = new Azure.Cognitive.AccountConnectionAccountKey("example", new()
///     {
///         Name = "example-connection",
///         CognitiveAccountId = exampleAccount.Id,
///         Category = "AzureStorageAccount",
///         Target = exampleAccount2.PrimaryBlobEndpoint,
///         AccountKey = exampleAccount2.PrimaryAccessKey,
///         Metadata =
///         {
///             { "ApiType", "Azure" },
///             { "ResourceId", exampleAccount2.Id },
///             { "Location", exampleAccount2.Location },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleAccount2, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageacct"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognitive.NewAccountConnectionAccountKey(ctx, "example", &cognitive.AccountConnectionAccountKeyArgs{
/// 			Name:               pulumi.String("example-connection"),
/// 			CognitiveAccountId: exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 			Category:           pulumi.String("AzureStorageAccount"),
/// 			Target:             exampleAccount2.PrimaryBlobEndpoint,
/// 			AccountKey:         exampleAccount2.PrimaryAccessKey,
/// 			Metadata: pulumi.StringMap{
/// 				"ApiType":    pulumi.String("Azure"),
/// 				"ResourceId": exampleAccount2.ID().ToIDOutput().ToStringOutput(),
/// 				"Location":   exampleAccount2.Location,
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
/// resource "azure_storage_account" "example" {
///   name                     = "examplestorageacct"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_cognitive_accountconnectionaccountkey" "example" {
///   name                 = "example-connection"
///   cognitive_account_id = azure_cognitive_account.example.id
///   category             = "AzureStorageAccount"
///   target               = azure_storage_account.example.primary_blob_endpoint
///   account_key          = azure_storage_account.example.primary_access_key
///   metadata = {
///     "ApiType"    = "Azure"
///     "ResourceId" = azure_storage_account.example.id
///     "Location"   = azure_storage_account.example.location
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
/// import com.pulumi.azure.cognitive.inputs.AccountIdentityArgs;
/// import com.pulumi.azure.cognitive.AccountConnectionAccountKey;
/// import com.pulumi.azure.cognitive.AccountConnectionAccountKeyArgs;
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
///         var exampleAccount = new com.pulumi.azure.cognitive.Account("exampleAccount", com.pulumi.azure.cognitive.AccountArgs.builder()
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
///         var exampleAccount2 = new com.pulumi.azure.storage.Account("exampleAccount2", com.pulumi.azure.storage.AccountArgs.builder()
///             .name("examplestorageacct")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleAccountConnectionAccountKey = new AccountConnectionAccountKey("exampleAccountConnectionAccountKey", AccountConnectionAccountKeyArgs.builder()
///             .name("example-connection")
///             .cognitiveAccountId(exampleAccount.id())
///             .category("AzureStorageAccount")
///             .target(exampleAccount2.primaryBlobEndpoint())
///             .accountKey(exampleAccount2.primaryAccessKey())
///             .metadata(Map.ofEntries(
///                 Map.entry("ApiType", "Azure"),
///                 Map.entry("ResourceId", exampleAccount2.id()),
///                 Map.entry("Location", exampleAccount2.location())
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
///   exampleAccount2:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageacct
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleAccountConnectionAccountKey:
///     type: azure:cognitive:AccountConnectionAccountKey
///     name: example
///     properties:
///       name: example-connection
///       cognitiveAccountId: ${exampleAccount.id}
///       category: AzureStorageAccount
///       target: ${exampleAccount2.primaryBlobEndpoint}
///       accountKey: ${exampleAccount2.primaryAccessKey}
///       metadata:
///         ApiType: Azure
///         ResourceId: ${exampleAccount2.id}
///         Location: ${exampleAccount2.location}
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
/// A Cognitive Services (Microsoft Foundry) Account Connection with Account Key authentication can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cognitive/accountConnectionAccountKey:AccountConnectionAccountKey example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.CognitiveServices/accounts/account1/connections/connection1
/// ```
class AccountConnectionAccountKey extends pulumi.CustomResource {
  /// The account key used for authentication.
  late final pulumi.Output<String> accountKey;
  /// The category of the connection. The only possible value is `AzureStorageAccount`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> category;
  /// The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cognitiveAccountId;
  /// A mapping of metadata key-value pairs for the connection.
  ///
  /// &gt; **Note:** The `metadata` map must include `ResourceId` when `category` is `AzureStorageAccount`. To check any additional metadata returned by Azure, create an equivalent connection in the Foundry portal and inspect it with `az rest --method get --url "{connection_resource_id}?api-version=2026-03-01"`.
  late final pulumi.Output<Map<String, String>> metadata;
  /// The name of the Cognitive Services Account Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The target endpoint or resource for the connection.
  ///
  /// &gt; **Note:** `target` must be an absolute HTTPS URL when `category` is `AzureStorageAccount`.
  late final pulumi.Output<String> target;

  /// Creates a new [AccountConnectionAccountKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountConnectionAccountKey]. {@macro pulumi_cognitive_account_connection_account_key_account_connection_account_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountConnectionAccountKey(
    String name, {
    AccountConnectionAccountKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/accountConnectionAccountKey:AccountConnectionAccountKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['accountKey'],
        ) {
    accountKey = registerOutput<String>('accountKey', isSecret: true);
    category = registerOutput<String>('category');
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    target = registerOutput<String>('target');
  }

  /// Gets an existing [AccountConnectionAccountKey] resource's state with the given [name] and [id].
  static AccountConnectionAccountKey get(
    String name,
    pulumi.Input<String> id, {
    AccountConnectionAccountKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccountConnectionAccountKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccountConnectionAccountKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/accountConnectionAccountKey:AccountConnectionAccountKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountKey = registerOutput<String>('accountKey', isSecret: true);
    category = registerOutput<String>('category');
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    target = registerOutput<String>('target');
  }

  /// Creates a typed reference to an existing [AccountConnectionAccountKey] resource.
  AccountConnectionAccountKey.reference(String urn)
    : super(
        'azure:cognitive/accountConnectionAccountKey:AccountConnectionAccountKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['accountKey'],
        isResourceReference: true,
      ) {
    accountKey = registerOutput<String>('accountKey', isSecret: true);
    category = registerOutput<String>('category');
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    target = registerOutput<String>('target');
  }
}
