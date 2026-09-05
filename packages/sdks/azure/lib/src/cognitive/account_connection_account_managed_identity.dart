import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_connection_account_managed_identity_args.dart';
import 'account_connection_account_managed_identity_state.dart';

/// Manages a Cognitive Services (Microsoft Foundry) Account Connection with Account Managed Identity authentication.
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
/// const current = azure.core.getClientConfig({});
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
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekeyvaultacct",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
/// });
/// const exampleAccountConnectionAccountManagedIdentity = new azure.cognitive.AccountConnectionAccountManagedIdentity("example", {
///     name: "example-connection",
///     cognitiveAccountId: exampleAccount.id,
///     category: "AzureKeyVault",
///     target: exampleKeyVault.vaultUri,
///     metadata: {
///         ApiType: "Azure",
///         ResourceId: exampleKeyVault.id,
///         Location: exampleKeyVault.location,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
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
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekeyvaultacct",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard")
/// example_account_connection_account_managed_identity = azure.cognitive.AccountConnectionAccountManagedIdentity("example",
///     name="example-connection",
///     cognitive_account_id=example_account.id,
///     category="AzureKeyVault",
///     target=example_key_vault.vault_uri,
///     metadata={
///         "ApiType": "Azure",
///         "ResourceId": example_key_vault.id,
///         "Location": example_key_vault.location,
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
///     var current = Azure.Core.GetClientConfig.Invoke();
///
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
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekeyvaultacct",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///     });
///
///     var exampleAccountConnectionAccountManagedIdentity = new Azure.Cognitive.AccountConnectionAccountManagedIdentity("example", new()
///     {
///         Name = "example-connection",
///         CognitiveAccountId = exampleAccount.Id,
///         Category = "AzureKeyVault",
///         Target = exampleKeyVault.VaultUri,
///         Metadata =
///         {
///             { "ApiType", "Azure" },
///             { "ResourceId", exampleKeyVault.Id },
///             { "Location", exampleKeyVault.Location },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
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
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:              pulumi.String("examplekeyvaultacct"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			TenantId:          pulumi.String(current.TenantId),
/// 			SkuName:           pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognitive.NewAccountConnectionAccountManagedIdentity(ctx, "example", &cognitive.AccountConnectionAccountManagedIdentityArgs{
/// 			Name:               pulumi.String("example-connection"),
/// 			CognitiveAccountId: exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 			Category:           pulumi.String("AzureKeyVault"),
/// 			Target:             exampleKeyVault.VaultUri,
/// 			Metadata: pulumi.StringMap{
/// 				"ApiType":    pulumi.String("Azure"),
/// 				"ResourceId": exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 				"Location":   exampleKeyVault.Location,
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
/// data "azure_core_getclientconfig" "current" {
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
/// resource "azure_keyvault_keyvault" "example" {
///   name                = "examplekeyvaultacct"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   tenant_id           = data.azure_core_getclientconfig.current.tenant_id
///   sku_name            = "standard"
/// }
/// resource "azure_cognitive_accountconnectionaccountmanagedidentity" "example" {
///   name                 = "example-connection"
///   cognitive_account_id = azure_cognitive_account.example.id
///   category             = "AzureKeyVault"
///   target               = azure_keyvault_keyvault.example.vault_uri
///   metadata = {
///     "ApiType"    = "Azure"
///     "ResourceId" = azure_keyvault_keyvault.example.id
///     "Location"   = azure_keyvault_keyvault.example.location
///   }
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
/// import com.pulumi.azure.cognitive.Account;
/// import com.pulumi.azure.cognitive.AccountArgs;
/// import com.pulumi.azure.cognitive.inputs.AccountIdentityArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.cognitive.AccountConnectionAccountManagedIdentity;
/// import com.pulumi.azure.cognitive.AccountConnectionAccountManagedIdentityArgs;
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
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekeyvaultacct")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .build());
///
///         var exampleAccountConnectionAccountManagedIdentity = new AccountConnectionAccountManagedIdentity("exampleAccountConnectionAccountManagedIdentity", AccountConnectionAccountManagedIdentityArgs.builder()
///             .name("example-connection")
///             .cognitiveAccountId(exampleAccount.id())
///             .category("AzureKeyVault")
///             .target(exampleKeyVault.vaultUri())
///             .metadata(Map.ofEntries(
///                 Map.entry("ApiType", "Azure"),
///                 Map.entry("ResourceId", exampleKeyVault.id()),
///                 Map.entry("Location", exampleKeyVault.location())
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
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekeyvaultacct
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///   exampleAccountConnectionAccountManagedIdentity:
///     type: azure:cognitive:AccountConnectionAccountManagedIdentity
///     name: example
///     properties:
///       name: example-connection
///       cognitiveAccountId: ${exampleAccount.id}
///       category: AzureKeyVault
///       target: ${exampleKeyVault.vaultUri}
///       metadata:
///         ApiType: Azure
///         ResourceId: ${exampleKeyVault.id}
///         Location: ${exampleKeyVault.location}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
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
/// A Cognitive Services (Microsoft Foundry) Account Connection with Account Managed Identity authentication can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cognitive/accountConnectionAccountManagedIdentity:AccountConnectionAccountManagedIdentity example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.CognitiveServices/accounts/account1/connections/connection1
/// ```
class AccountConnectionAccountManagedIdentity extends pulumi.CustomResource {
  /// The category of the connection. Possible values are `AIServices`, `AzureKeyVault`, `AzureOpenAI`, and `AzureStorageAccount`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Only one Account Managed Identity connection with the `AzureKeyVault` category can exist per Cognitive Services Account.
  late final pulumi.Output<String> category;
  /// The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cognitiveAccountId;
  /// A mapping of metadata key-value pairs for the connection.
  ///
  /// &gt; **Note:** The `metadata` map must include `ResourceId` when `category` is `AIServices`, `AzureKeyVault`, or `AzureStorageAccount`, and must include `ApiType` when `category` is `AzureOpenAI`. To check any additional metadata returned by Azure, create an equivalent connection in the Foundry portal and inspect it with `az rest --method get --url "{connection_resource_id}?api-version=2026-03-01"`.
  late final pulumi.Output<Map<String, String>> metadata;
  /// The name of the Cognitive Services Account Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The target endpoint or resource for the connection.
  ///
  /// &gt; **Note:** `target` must be the Key Vault URI when `category` is `AzureKeyVault`.
  ///
  /// &gt; **Note:** `target` must be an absolute HTTPS URL when `category` is `AzureStorageAccount`.
  late final pulumi.Output<String> target;

  /// Creates a new [AccountConnectionAccountManagedIdentity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountConnectionAccountManagedIdentity]. {@macro pulumi_cognitive_account_connection_account_managed_identity_account_connection_account_managed_identity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountConnectionAccountManagedIdentity(
    String name, {
    AccountConnectionAccountManagedIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/accountConnectionAccountManagedIdentity:AccountConnectionAccountManagedIdentity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    category = registerOutput<String>('category');
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    target = registerOutput<String>('target');
  }

  /// Gets an existing [AccountConnectionAccountManagedIdentity] resource's state with the given [name] and [id].
  static AccountConnectionAccountManagedIdentity get(
    String name,
    pulumi.Input<String> id, {
    AccountConnectionAccountManagedIdentityState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccountConnectionAccountManagedIdentity._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccountConnectionAccountManagedIdentity._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/accountConnectionAccountManagedIdentity:AccountConnectionAccountManagedIdentity',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    category = registerOutput<String>('category');
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    target = registerOutput<String>('target');
  }

  /// Creates a typed reference to an existing [AccountConnectionAccountManagedIdentity] resource.
  AccountConnectionAccountManagedIdentity.reference(String urn)
    : super(
        'azure:cognitive/accountConnectionAccountManagedIdentity:AccountConnectionAccountManagedIdentity',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    category = registerOutput<String>('category');
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    target = registerOutput<String>('target');
  }
}
