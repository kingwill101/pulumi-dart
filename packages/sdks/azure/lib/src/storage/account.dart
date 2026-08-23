import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_azure_files_authentication.dart';
import 'account_blob_properties.dart';
import 'account_custom_domain.dart';
import 'account_customer_managed_key.dart';
import 'account_identity.dart';
import 'account_immutability_policy.dart';
import 'account_network_rules.dart';
import 'account_queue_properties.dart';
import 'account_routing.dart';
import 'account_sas_policy.dart';
import 'account_share_properties.dart';
import 'account_state.dart';
import 'account_static_website.dart';

/// Manages an Azure Storage Account.
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "storageaccountname",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
///     tags: {
///         environment: "staging",
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
/// example_account = azure.storage.Account("example",
///     name="storageaccountname",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="GRS",
///     tags={
///         "environment": "staging",
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///         Tags =
///         {
///             { "environment", "staging" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		_, err = storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
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
/// resource "azure_storage_account" "example" {
///   name                     = "storageaccountname"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "GRS"
///   tags = {
///     "environment" = "staging"
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
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
///             .name("storageaccountname")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .tags(Map.of("environment", "staging"))
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
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: storageaccountname
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: GRS
///       tags:
///         environment: staging
/// ```
///
///
///
/// ### With Network Rules
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
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "virtnetname",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "subnetname",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
///     serviceEndpoints: [
///         "Microsoft.Sql",
///         "Microsoft.Storage",
///     ],
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "storageaccountname",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     networkRules: {
///         defaultAction: "Deny",
///         ipRules: ["100.0.0.1"],
///         virtualNetworkSubnetIds: [exampleSubnet.id],
///     },
///     tags: {
///         environment: "staging",
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
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="virtnetname",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="subnetname",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"],
///     service_endpoints=[
///         "Microsoft.Sql",
///         "Microsoft.Storage",
///     ])
/// example_account = azure.storage.Account("example",
///     name="storageaccountname",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     network_rules={
///         "default_action": "Deny",
///         "ip_rules": ["100.0.0.1"],
///         "virtual_network_subnet_ids": [example_subnet.id],
///     },
///     tags={
///         "environment": "staging",
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
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "virtnetname",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "subnetname",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///         ServiceEndpoints = new[]
///         {
///             "Microsoft.Sql",
///             "Microsoft.Storage",
///         },
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         NetworkRules = new Azure.Storage.Inputs.AccountNetworkRulesArgs
///         {
///             DefaultAction = "Deny",
///             IpRules = new[]
///             {
///                 "100.0.0.1",
///             },
///             VirtualNetworkSubnetIds = new[]
///             {
///                 exampleSubnet.Id,
///             },
///         },
///         Tags =
///         {
///             { "environment", "staging" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("virtnetname"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("subnetname"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			ServiceEndpoints: pulumi.StringArray{
/// 				pulumi.String("Microsoft.Sql"),
/// 				pulumi.String("Microsoft.Storage"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			NetworkRules: &storage.AccountNetworkRulesTypeArgs{
/// 				DefaultAction: pulumi.String("Deny"),
/// 				IpRules: pulumi.StringArray{
/// 					pulumi.String("100.0.0.1"),
/// 				},
/// 				VirtualNetworkSubnetIds: pulumi.StringArray{
/// 					exampleSubnet.ID(),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
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
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "virtnetname"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "subnetname"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
///   service_endpoints    = ["Microsoft.Sql", "Microsoft.Storage"]
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "storageaccountname"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
///   network_rules = {
///     default_action             = "Deny"
///     ip_rules                   = ["100.0.0.1"]
///     virtual_network_subnet_ids = [azure_network_subnet.example.id]
///   }
///   tags = {
///     "environment" = "staging"
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.inputs.AccountNetworkRulesArgs;
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
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("virtnetname")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("subnetname")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .serviceEndpoints(
///                 "Microsoft.Sql",
///                 "Microsoft.Storage")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .networkRules(AccountNetworkRulesArgs.builder()
///                 .defaultAction("Deny")
///                 .ipRules("100.0.0.1")
///                 .virtualNetworkSubnetIds(exampleSubnet.id())
///                 .build())
///             .tags(Map.of("environment", "staging"))
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
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: virtnetname
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: subnetname
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///       serviceEndpoints:
///         - Microsoft.Sql
///         - Microsoft.Storage
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: storageaccountname
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       networkRules:
///         defaultAction: Deny
///         ipRules:
///           - 100.0.0.1
///         virtualNetworkSubnetIds:
///           - ${exampleSubnet.id}
///       tags:
///         environment: staging
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Storage` - 2025-08-01
///
/// ## Import
///
/// Storage Accounts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/account:Account storageAcc1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Storage/storageAccounts/myaccount
/// ```
class Account extends pulumi.CustomResource {
  /// Defines the access tier for `BlobStorage`, `FileStorage` and `StorageV2` accounts. Valid options are `Hot`, `Cool`, `Cold`, `Smart` and `Premium`. Defaults to `Hot`.
  late final pulumi.Output<String> accessTier;
  /// Defines the Kind of account. Valid options are `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage` and `StorageV2`. Defaults to `StorageV2`.
  ///
  /// &gt; **Note:** Changing the `accountKind` value from `Storage` to `StorageV2` will not trigger a force new on the storage account, it will only upgrade the existing storage account from `Storage` to `StorageV2` keeping the existing storage account in place.
  late final pulumi.Output<String?> accountKind;
  /// Defines the type of replication to use for this storage account. Valid options are `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS` and `RAGZRS`. Changing this forces a new resource to be created when types `LRS`, `GRS` and `RAGRS` are changed to `ZRS`, `GZRS` or `RAGZRS` and vice versa.
  late final pulumi.Output<String> accountReplicationType;
  /// Defines the Tier to use for this storage account. Valid options are `Standard` and `Premium`. For `BlockBlobStorage` and `FileStorage` accounts only `Premium` is valid. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Blobs with a tier of `Premium` are of account kind `StorageV2`.
  late final pulumi.Output<String> accountTier;
  /// Allow or disallow nested items within this Account to opt into being public. Defaults to `true`.
  ///
  /// &gt; **Note:** At this time `allowNestedItemsToBePublic` is only supported in the Public Cloud, China Cloud, and US Government Cloud.
  late final pulumi.Output<bool?> allowNestedItemsToBePublic;
  /// The permitted scope for copy operations between storage accounts. Possible values are `AAD`, `PrivateLink` and `All`.
  late final pulumi.Output<String?> allowedCopyScope;
  /// A `azureFilesAuthentication` block as defined below.
  late final pulumi.Output<AccountAzureFilesAuthentication?> azureFilesAuthentication;
  /// A `blobProperties` block as defined below.
  late final pulumi.Output<AccountBlobProperties> blobProperties;
  /// Should cross Tenant replication be enabled? Defaults to `false`.
  late final pulumi.Output<bool?> crossTenantReplicationEnabled;
  /// A `customDomain` block as documented below.
  late final pulumi.Output<AccountCustomDomain?> customDomain;
  /// A `customerManagedKey` block as documented below.
  ///
  /// &gt; **Note:** It's possible to define a Customer Managed Key both within either the `customerManagedKey` block or by using the `azure.storage.CustomerManagedKey` resource. However, it's not possible to use both methods to manage a Customer Managed Key for a Storage Account, since these will conflict. When using the `azure.storage.CustomerManagedKey` resource, you will need to use `ignoreChanges` on the `customerManagedKey` block.
  late final pulumi.Output<AccountCustomerManagedKey?> customerManagedKey;
  /// Default to Azure Active Directory authorization in the Azure portal when accessing the Storage Account. The default value is `false`
  late final pulumi.Output<bool?> defaultToOauthAuthentication;
  /// Specifies which DNS endpoint type to use. Possible values are `Standard` and `AzureDnsZone`. Defaults to `Standard`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Azure DNS zone support requires `PartitionedDns` feature to be enabled. To enable this feature for your subscription, use the following command: `az feature register --namespace "Microsoft.Storage" --name "PartitionedDns"`.
  late final pulumi.Output<String?> dnsEndpointType;
  /// Specifies the Edge Zone within the Azure Region where this Storage Account should exist. Changing this forces a new Storage Account to be created.
  late final pulumi.Output<String?> edgeZone;
  /// Boolean flag which forces HTTPS if enabled, see [here](https://docs.microsoft.com/azure/storage/storage-require-secure-transfer/) for more information. Defaults to `true`.
  late final pulumi.Output<bool?> httpsTrafficOnlyEnabled;
  /// An `identity` block as defined below.
  late final pulumi.Output<AccountIdentity?> identity;
  /// An `immutabilityPolicy` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<AccountImmutabilityPolicy?> immutabilityPolicy;
  /// Is infrastructure encryption enabled? Changing this forces a new resource to be created. Defaults to `false`.
  ///
  /// &gt; **Note:** This can only be `true` when `accountKind` is `StorageV2` or when `accountTier` is `Premium` *and* `accountKind` is one of `BlockBlobStorage` or `FileStorage`.
  late final pulumi.Output<bool?> infrastructureEncryptionEnabled;
  /// Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 ([see here for more information](https://docs.microsoft.com/azure/storage/blobs/data-lake-storage-quickstart-create-account/)). Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This can only be `true` when `accountTier` is `Standard` or when `accountTier` is `Premium` *and* `accountKind` is `BlockBlobStorage`
  late final pulumi.Output<bool?> isHnsEnabled;
  /// Are Large File Shares Enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** Large File Shares are enabled by default when using an `accountKind` of `FileStorage`.
  late final pulumi.Output<bool> largeFileShareEnabled;
  /// Is Local User Enabled? Defaults to `true`.
  late final pulumi.Output<bool?> localUserEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The minimum supported TLS version for the storage account. Possible values are `TLS1_0`, `TLS1_1` and `TLS1_2`. Defaults to `TLS1_2` for new storage accounts.
  ///
  /// &gt; **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  ///
  /// &gt; **Note:** At this time `minTlsVersion` is only supported in the Public Cloud, China Cloud, and US Government Cloud.
  late final pulumi.Output<String?> minTlsVersion;
  /// Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group.
  late final pulumi.Output<String> name;
  /// A `networkRules` block as documented below.
  late final pulumi.Output<AccountNetworkRules> networkRules;
  /// Is NFSv3 protocol enabled? Changing this forces a new resource to be created. Defaults to `false`.
  ///
  /// &gt; **Note:** This can only be `true` when `accountTier` is `Standard` and `accountKind` is `StorageV2`, or `accountTier` is `Premium` and `accountKind` is `BlockBlobStorage`. Additionally, the `isHnsEnabled` is `true` and `accountReplicationType` must be `LRS` or `RAGRS`.
  late final pulumi.Output<bool?> nfsv3Enabled;
  /// The primary access key for the storage account.
  late final pulumi.Output<String> primaryAccessKey;
  /// The connection string associated with the primary blob location.
  late final pulumi.Output<String> primaryBlobConnectionString;
  /// The endpoint URL for blob storage in the primary location.
  late final pulumi.Output<String> primaryBlobEndpoint;
  /// The hostname with port if applicable for blob storage in the primary location.
  late final pulumi.Output<String> primaryBlobHost;
  /// The internet routing endpoint URL for blob storage in the primary location.
  late final pulumi.Output<String> primaryBlobInternetEndpoint;
  /// The internet routing hostname with port if applicable for blob storage in the primary location.
  late final pulumi.Output<String> primaryBlobInternetHost;
  /// The microsoft routing endpoint URL for blob storage in the primary location.
  late final pulumi.Output<String> primaryBlobMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for blob storage in the primary location.
  late final pulumi.Output<String> primaryBlobMicrosoftHost;
  /// The connection string associated with the primary location.
  late final pulumi.Output<String> primaryConnectionString;
  /// The endpoint URL for DFS storage in the primary location.
  late final pulumi.Output<String> primaryDfsEndpoint;
  /// The hostname with port if applicable for DFS storage in the primary location.
  late final pulumi.Output<String> primaryDfsHost;
  /// The internet routing endpoint URL for DFS storage in the primary location.
  late final pulumi.Output<String> primaryDfsInternetEndpoint;
  /// The internet routing hostname with port if applicable for DFS storage in the primary location.
  late final pulumi.Output<String> primaryDfsInternetHost;
  /// The microsoft routing endpoint URL for DFS storage in the primary location.
  late final pulumi.Output<String> primaryDfsMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for DFS storage in the primary location.
  late final pulumi.Output<String> primaryDfsMicrosoftHost;
  /// The endpoint URL for file storage in the primary location.
  late final pulumi.Output<String> primaryFileEndpoint;
  /// The hostname with port if applicable for file storage in the primary location.
  late final pulumi.Output<String> primaryFileHost;
  /// The internet routing endpoint URL for file storage in the primary location.
  late final pulumi.Output<String> primaryFileInternetEndpoint;
  /// The internet routing hostname with port if applicable for file storage in the primary location.
  late final pulumi.Output<String> primaryFileInternetHost;
  /// The microsoft routing endpoint URL for file storage in the primary location.
  late final pulumi.Output<String> primaryFileMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for file storage in the primary location.
  late final pulumi.Output<String> primaryFileMicrosoftHost;
  /// The primary location of the storage account.
  late final pulumi.Output<String> primaryLocation;
  /// The endpoint URL for queue storage in the primary location.
  late final pulumi.Output<String> primaryQueueEndpoint;
  /// The hostname with port if applicable for queue storage in the primary location.
  late final pulumi.Output<String> primaryQueueHost;
  /// The microsoft routing endpoint URL for queue storage in the primary location.
  late final pulumi.Output<String> primaryQueueMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for queue storage in the primary location.
  late final pulumi.Output<String> primaryQueueMicrosoftHost;
  /// The endpoint URL for table storage in the primary location.
  late final pulumi.Output<String> primaryTableEndpoint;
  /// The hostname with port if applicable for table storage in the primary location.
  late final pulumi.Output<String> primaryTableHost;
  /// The microsoft routing endpoint URL for table storage in the primary location.
  late final pulumi.Output<String> primaryTableMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for table storage in the primary location.
  late final pulumi.Output<String> primaryTableMicrosoftHost;
  /// The endpoint URL for web storage in the primary location.
  late final pulumi.Output<String> primaryWebEndpoint;
  /// The hostname with port if applicable for web storage in the primary location.
  late final pulumi.Output<String> primaryWebHost;
  /// The internet routing endpoint URL for web storage in the primary location.
  late final pulumi.Output<String> primaryWebInternetEndpoint;
  /// The internet routing hostname with port if applicable for web storage in the primary location.
  late final pulumi.Output<String> primaryWebInternetHost;
  /// The microsoft routing endpoint URL for web storage in the primary location.
  late final pulumi.Output<String> primaryWebMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for web storage in the primary location.
  late final pulumi.Output<String> primaryWebMicrosoftHost;
  /// Specifies the version of the **provisioned** billing model (e.g. when `accountKind = "FileStorage"` for Storage File). Possible value is `V2`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> provisionedBillingModelVersion;
  /// Whether the public network access is enabled? Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The encryption type of the queue service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`.
  late final pulumi.Output<String?> queueEncryptionKeyType;
  /// A `queueProperties` block as defined below.
  ///
  /// &gt; **Note:** `queueProperties` can only be configured when `accountTier` is set to `Standard` and `accountKind` is set to either `Storage` or `StorageV2`.
  late final pulumi.Output<AccountQueueProperties> queueProperties;
  /// The name of the resource group in which to create the storage account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `routing` block as defined below.
  late final pulumi.Output<AccountRouting> routing;
  /// A `sasPolicy` block as defined below.
  late final pulumi.Output<AccountSasPolicy?> sasPolicy;
  /// The secondary access key for the storage account.
  late final pulumi.Output<String> secondaryAccessKey;
  /// The connection string associated with the secondary blob location.
  late final pulumi.Output<String> secondaryBlobConnectionString;
  /// The endpoint URL for blob storage in the secondary location.
  late final pulumi.Output<String> secondaryBlobEndpoint;
  /// The hostname with port if applicable for blob storage in the secondary location.
  late final pulumi.Output<String> secondaryBlobHost;
  /// The internet routing endpoint URL for blob storage in the secondary location.
  late final pulumi.Output<String> secondaryBlobInternetEndpoint;
  /// The internet routing hostname with port if applicable for blob storage in the secondary location.
  late final pulumi.Output<String> secondaryBlobInternetHost;
  /// The microsoft routing endpoint URL for blob storage in the secondary location.
  late final pulumi.Output<String> secondaryBlobMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for blob storage in the secondary location.
  late final pulumi.Output<String> secondaryBlobMicrosoftHost;
  /// The connection string associated with the secondary location.
  late final pulumi.Output<String> secondaryConnectionString;
  /// The endpoint URL for DFS storage in the secondary location.
  late final pulumi.Output<String> secondaryDfsEndpoint;
  /// The hostname with port if applicable for DFS storage in the secondary location.
  late final pulumi.Output<String> secondaryDfsHost;
  /// The internet routing endpoint URL for DFS storage in the secondary location.
  late final pulumi.Output<String> secondaryDfsInternetEndpoint;
  /// The internet routing hostname with port if applicable for DFS storage in the secondary location.
  late final pulumi.Output<String> secondaryDfsInternetHost;
  /// The microsoft routing endpoint URL for DFS storage in the secondary location.
  late final pulumi.Output<String> secondaryDfsMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for DFS storage in the secondary location.
  late final pulumi.Output<String> secondaryDfsMicrosoftHost;
  /// The endpoint URL for file storage in the secondary location.
  late final pulumi.Output<String> secondaryFileEndpoint;
  /// The hostname with port if applicable for file storage in the secondary location.
  late final pulumi.Output<String> secondaryFileHost;
  /// The internet routing endpoint URL for file storage in the secondary location.
  late final pulumi.Output<String> secondaryFileInternetEndpoint;
  /// The internet routing hostname with port if applicable for file storage in the secondary location.
  late final pulumi.Output<String> secondaryFileInternetHost;
  /// The microsoft routing endpoint URL for file storage in the secondary location.
  late final pulumi.Output<String> secondaryFileMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for file storage in the secondary location.
  late final pulumi.Output<String> secondaryFileMicrosoftHost;
  /// The secondary location of the storage account.
  late final pulumi.Output<String> secondaryLocation;
  /// The endpoint URL for queue storage in the secondary location.
  late final pulumi.Output<String> secondaryQueueEndpoint;
  /// The hostname with port if applicable for queue storage in the secondary location.
  late final pulumi.Output<String> secondaryQueueHost;
  /// The microsoft routing endpoint URL for queue storage in the secondary location.
  late final pulumi.Output<String> secondaryQueueMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for queue storage in the secondary location.
  late final pulumi.Output<String> secondaryQueueMicrosoftHost;
  /// The endpoint URL for table storage in the secondary location.
  late final pulumi.Output<String> secondaryTableEndpoint;
  /// The hostname with port if applicable for table storage in the secondary location.
  late final pulumi.Output<String> secondaryTableHost;
  /// The microsoft routing endpoint URL for table storage in the secondary location.
  late final pulumi.Output<String> secondaryTableMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for table storage in the secondary location.
  late final pulumi.Output<String> secondaryTableMicrosoftHost;
  /// The endpoint URL for web storage in the secondary location.
  late final pulumi.Output<String> secondaryWebEndpoint;
  /// The hostname with port if applicable for web storage in the secondary location.
  late final pulumi.Output<String> secondaryWebHost;
  /// The internet routing endpoint URL for web storage in the secondary location.
  late final pulumi.Output<String> secondaryWebInternetEndpoint;
  /// The internet routing hostname with port if applicable for web storage in the secondary location.
  late final pulumi.Output<String> secondaryWebInternetHost;
  /// The microsoft routing endpoint URL for web storage in the secondary location.
  late final pulumi.Output<String> secondaryWebMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for web storage in the secondary location.
  late final pulumi.Output<String> secondaryWebMicrosoftHost;
  /// Boolean, enable SFTP for the storage account
  ///
  /// &gt; **Note:** SFTP support requires `isHnsEnabled` set to `true`. [More information on SFTP support can be found here](https://learn.microsoft.com/azure/storage/blobs/secure-file-transfer-protocol-support). Defaults to `false`
  late final pulumi.Output<bool?> sftpEnabled;
  /// A `shareProperties` block as defined below.
  ///
  /// &gt; **Note:** `shareProperties` can only be configured when either `accountTier` is `Standard` and `accountKind` is either `Storage` or `StorageV2` - or when `accountTier` is `Premium` and `accountKind` is `FileStorage`.
  late final pulumi.Output<AccountShareProperties> shareProperties;
  /// Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). Defaults to `true`.
  ///
  /// &gt; **Note:** Terraform uses Shared Key Authorisation to provision Storage Containers, Blobs and other items - when Shared Key Access is disabled, you will need to enable the `storageUseAzuread` flag in the Provider block to use Azure AD for authentication, however not all Azure Storage services support Active Directory authentication.
  late final pulumi.Output<bool?> sharedAccessKeyEnabled;
  /// A `staticWebsite` block as defined below.
  ///
  /// &gt; **Note:** `staticWebsite` can only be set when the `accountKind` is set to `StorageV2` or `BlockBlobStorage`.
  ///
  /// &gt; **Note:** If `staticWebsite` is specified, the service will automatically create a `azure.storage.Container` named `$web`.
  late final pulumi.Output<AccountStaticWebsite> staticWebsite;
  /// The encryption type of the table service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`.
  ///
  /// &gt; **Note:** `queueEncryptionKeyType` and `tableEncryptionKeyType` cannot be set to `Account` when `accountKind` is set `Storage`
  late final pulumi.Output<String?> tableEncryptionKeyType;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_storage_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessTier = registerOutput<String>('accessTier');
    accountKind = registerOutput<String?>('accountKind');
    accountReplicationType = registerOutput<String>('accountReplicationType');
    accountTier = registerOutput<String>('accountTier');
    allowNestedItemsToBePublic = registerOutput<bool?>('allowNestedItemsToBePublic');
    allowedCopyScope = registerOutput<String?>('allowedCopyScope');
    azureFilesAuthentication = registerOutput<AccountAzureFilesAuthentication?>('azureFilesAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountAzureFilesAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    blobProperties = registerOutput<AccountBlobProperties>('blobProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountBlobProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    crossTenantReplicationEnabled = registerOutput<bool?>('crossTenantReplicationEnabled');
    customDomain = registerOutput<AccountCustomDomain?>('customDomain', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountCustomDomain.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customerManagedKey = registerOutput<AccountCustomerManagedKey?>('customerManagedKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultToOauthAuthentication = registerOutput<bool?>('defaultToOauthAuthentication');
    dnsEndpointType = registerOutput<String?>('dnsEndpointType');
    edgeZone = registerOutput<String?>('edgeZone');
    httpsTrafficOnlyEnabled = registerOutput<bool?>('httpsTrafficOnlyEnabled');
    identity = registerOutput<AccountIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    immutabilityPolicy = registerOutput<AccountImmutabilityPolicy?>('immutabilityPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountImmutabilityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureEncryptionEnabled = registerOutput<bool?>('infrastructureEncryptionEnabled');
    isHnsEnabled = registerOutput<bool?>('isHnsEnabled');
    largeFileShareEnabled = registerOutput<bool>('largeFileShareEnabled');
    localUserEnabled = registerOutput<bool?>('localUserEnabled');
    location = registerOutput<String>('location');
    minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    networkRules = registerOutput<AccountNetworkRules>('networkRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountNetworkRules.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nfsv3Enabled = registerOutput<bool?>('nfsv3Enabled');
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    primaryBlobConnectionString = registerOutput<String>('primaryBlobConnectionString');
    primaryBlobEndpoint = registerOutput<String>('primaryBlobEndpoint');
    primaryBlobHost = registerOutput<String>('primaryBlobHost');
    primaryBlobInternetEndpoint = registerOutput<String>('primaryBlobInternetEndpoint');
    primaryBlobInternetHost = registerOutput<String>('primaryBlobInternetHost');
    primaryBlobMicrosoftEndpoint = registerOutput<String>('primaryBlobMicrosoftEndpoint');
    primaryBlobMicrosoftHost = registerOutput<String>('primaryBlobMicrosoftHost');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    primaryDfsEndpoint = registerOutput<String>('primaryDfsEndpoint');
    primaryDfsHost = registerOutput<String>('primaryDfsHost');
    primaryDfsInternetEndpoint = registerOutput<String>('primaryDfsInternetEndpoint');
    primaryDfsInternetHost = registerOutput<String>('primaryDfsInternetHost');
    primaryDfsMicrosoftEndpoint = registerOutput<String>('primaryDfsMicrosoftEndpoint');
    primaryDfsMicrosoftHost = registerOutput<String>('primaryDfsMicrosoftHost');
    primaryFileEndpoint = registerOutput<String>('primaryFileEndpoint');
    primaryFileHost = registerOutput<String>('primaryFileHost');
    primaryFileInternetEndpoint = registerOutput<String>('primaryFileInternetEndpoint');
    primaryFileInternetHost = registerOutput<String>('primaryFileInternetHost');
    primaryFileMicrosoftEndpoint = registerOutput<String>('primaryFileMicrosoftEndpoint');
    primaryFileMicrosoftHost = registerOutput<String>('primaryFileMicrosoftHost');
    primaryLocation = registerOutput<String>('primaryLocation');
    primaryQueueEndpoint = registerOutput<String>('primaryQueueEndpoint');
    primaryQueueHost = registerOutput<String>('primaryQueueHost');
    primaryQueueMicrosoftEndpoint = registerOutput<String>('primaryQueueMicrosoftEndpoint');
    primaryQueueMicrosoftHost = registerOutput<String>('primaryQueueMicrosoftHost');
    primaryTableEndpoint = registerOutput<String>('primaryTableEndpoint');
    primaryTableHost = registerOutput<String>('primaryTableHost');
    primaryTableMicrosoftEndpoint = registerOutput<String>('primaryTableMicrosoftEndpoint');
    primaryTableMicrosoftHost = registerOutput<String>('primaryTableMicrosoftHost');
    primaryWebEndpoint = registerOutput<String>('primaryWebEndpoint');
    primaryWebHost = registerOutput<String>('primaryWebHost');
    primaryWebInternetEndpoint = registerOutput<String>('primaryWebInternetEndpoint');
    primaryWebInternetHost = registerOutput<String>('primaryWebInternetHost');
    primaryWebMicrosoftEndpoint = registerOutput<String>('primaryWebMicrosoftEndpoint');
    primaryWebMicrosoftHost = registerOutput<String>('primaryWebMicrosoftHost');
    provisionedBillingModelVersion = registerOutput<String?>('provisionedBillingModelVersion');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    queueEncryptionKeyType = registerOutput<String?>('queueEncryptionKeyType');
    queueProperties = registerOutput<AccountQueueProperties>('queueProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountQueueProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routing = registerOutput<AccountRouting>('routing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sasPolicy = registerOutput<AccountSasPolicy?>('sasPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountSasPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    secondaryBlobConnectionString = registerOutput<String>('secondaryBlobConnectionString');
    secondaryBlobEndpoint = registerOutput<String>('secondaryBlobEndpoint');
    secondaryBlobHost = registerOutput<String>('secondaryBlobHost');
    secondaryBlobInternetEndpoint = registerOutput<String>('secondaryBlobInternetEndpoint');
    secondaryBlobInternetHost = registerOutput<String>('secondaryBlobInternetHost');
    secondaryBlobMicrosoftEndpoint = registerOutput<String>('secondaryBlobMicrosoftEndpoint');
    secondaryBlobMicrosoftHost = registerOutput<String>('secondaryBlobMicrosoftHost');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    secondaryDfsEndpoint = registerOutput<String>('secondaryDfsEndpoint');
    secondaryDfsHost = registerOutput<String>('secondaryDfsHost');
    secondaryDfsInternetEndpoint = registerOutput<String>('secondaryDfsInternetEndpoint');
    secondaryDfsInternetHost = registerOutput<String>('secondaryDfsInternetHost');
    secondaryDfsMicrosoftEndpoint = registerOutput<String>('secondaryDfsMicrosoftEndpoint');
    secondaryDfsMicrosoftHost = registerOutput<String>('secondaryDfsMicrosoftHost');
    secondaryFileEndpoint = registerOutput<String>('secondaryFileEndpoint');
    secondaryFileHost = registerOutput<String>('secondaryFileHost');
    secondaryFileInternetEndpoint = registerOutput<String>('secondaryFileInternetEndpoint');
    secondaryFileInternetHost = registerOutput<String>('secondaryFileInternetHost');
    secondaryFileMicrosoftEndpoint = registerOutput<String>('secondaryFileMicrosoftEndpoint');
    secondaryFileMicrosoftHost = registerOutput<String>('secondaryFileMicrosoftHost');
    secondaryLocation = registerOutput<String>('secondaryLocation');
    secondaryQueueEndpoint = registerOutput<String>('secondaryQueueEndpoint');
    secondaryQueueHost = registerOutput<String>('secondaryQueueHost');
    secondaryQueueMicrosoftEndpoint = registerOutput<String>('secondaryQueueMicrosoftEndpoint');
    secondaryQueueMicrosoftHost = registerOutput<String>('secondaryQueueMicrosoftHost');
    secondaryTableEndpoint = registerOutput<String>('secondaryTableEndpoint');
    secondaryTableHost = registerOutput<String>('secondaryTableHost');
    secondaryTableMicrosoftEndpoint = registerOutput<String>('secondaryTableMicrosoftEndpoint');
    secondaryTableMicrosoftHost = registerOutput<String>('secondaryTableMicrosoftHost');
    secondaryWebEndpoint = registerOutput<String>('secondaryWebEndpoint');
    secondaryWebHost = registerOutput<String>('secondaryWebHost');
    secondaryWebInternetEndpoint = registerOutput<String>('secondaryWebInternetEndpoint');
    secondaryWebInternetHost = registerOutput<String>('secondaryWebInternetHost');
    secondaryWebMicrosoftEndpoint = registerOutput<String>('secondaryWebMicrosoftEndpoint');
    secondaryWebMicrosoftHost = registerOutput<String>('secondaryWebMicrosoftHost');
    sftpEnabled = registerOutput<bool?>('sftpEnabled');
    shareProperties = registerOutput<AccountShareProperties>('shareProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountShareProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sharedAccessKeyEnabled = registerOutput<bool?>('sharedAccessKeyEnabled');
    staticWebsite = registerOutput<AccountStaticWebsite>('staticWebsite', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountStaticWebsite.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableEncryptionKeyType = registerOutput<String?>('tableEncryptionKeyType');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessTier = registerOutput<String>('accessTier');
    accountKind = registerOutput<String?>('accountKind');
    accountReplicationType = registerOutput<String>('accountReplicationType');
    accountTier = registerOutput<String>('accountTier');
    allowNestedItemsToBePublic = registerOutput<bool?>('allowNestedItemsToBePublic');
    allowedCopyScope = registerOutput<String?>('allowedCopyScope');
    azureFilesAuthentication = registerOutput<AccountAzureFilesAuthentication?>('azureFilesAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountAzureFilesAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    blobProperties = registerOutput<AccountBlobProperties>('blobProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountBlobProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    crossTenantReplicationEnabled = registerOutput<bool?>('crossTenantReplicationEnabled');
    customDomain = registerOutput<AccountCustomDomain?>('customDomain', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountCustomDomain.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customerManagedKey = registerOutput<AccountCustomerManagedKey?>('customerManagedKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultToOauthAuthentication = registerOutput<bool?>('defaultToOauthAuthentication');
    dnsEndpointType = registerOutput<String?>('dnsEndpointType');
    edgeZone = registerOutput<String?>('edgeZone');
    httpsTrafficOnlyEnabled = registerOutput<bool?>('httpsTrafficOnlyEnabled');
    identity = registerOutput<AccountIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    immutabilityPolicy = registerOutput<AccountImmutabilityPolicy?>('immutabilityPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountImmutabilityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureEncryptionEnabled = registerOutput<bool?>('infrastructureEncryptionEnabled');
    isHnsEnabled = registerOutput<bool?>('isHnsEnabled');
    largeFileShareEnabled = registerOutput<bool>('largeFileShareEnabled');
    localUserEnabled = registerOutput<bool?>('localUserEnabled');
    location = registerOutput<String>('location');
    minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    networkRules = registerOutput<AccountNetworkRules>('networkRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountNetworkRules.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nfsv3Enabled = registerOutput<bool?>('nfsv3Enabled');
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    primaryBlobConnectionString = registerOutput<String>('primaryBlobConnectionString');
    primaryBlobEndpoint = registerOutput<String>('primaryBlobEndpoint');
    primaryBlobHost = registerOutput<String>('primaryBlobHost');
    primaryBlobInternetEndpoint = registerOutput<String>('primaryBlobInternetEndpoint');
    primaryBlobInternetHost = registerOutput<String>('primaryBlobInternetHost');
    primaryBlobMicrosoftEndpoint = registerOutput<String>('primaryBlobMicrosoftEndpoint');
    primaryBlobMicrosoftHost = registerOutput<String>('primaryBlobMicrosoftHost');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    primaryDfsEndpoint = registerOutput<String>('primaryDfsEndpoint');
    primaryDfsHost = registerOutput<String>('primaryDfsHost');
    primaryDfsInternetEndpoint = registerOutput<String>('primaryDfsInternetEndpoint');
    primaryDfsInternetHost = registerOutput<String>('primaryDfsInternetHost');
    primaryDfsMicrosoftEndpoint = registerOutput<String>('primaryDfsMicrosoftEndpoint');
    primaryDfsMicrosoftHost = registerOutput<String>('primaryDfsMicrosoftHost');
    primaryFileEndpoint = registerOutput<String>('primaryFileEndpoint');
    primaryFileHost = registerOutput<String>('primaryFileHost');
    primaryFileInternetEndpoint = registerOutput<String>('primaryFileInternetEndpoint');
    primaryFileInternetHost = registerOutput<String>('primaryFileInternetHost');
    primaryFileMicrosoftEndpoint = registerOutput<String>('primaryFileMicrosoftEndpoint');
    primaryFileMicrosoftHost = registerOutput<String>('primaryFileMicrosoftHost');
    primaryLocation = registerOutput<String>('primaryLocation');
    primaryQueueEndpoint = registerOutput<String>('primaryQueueEndpoint');
    primaryQueueHost = registerOutput<String>('primaryQueueHost');
    primaryQueueMicrosoftEndpoint = registerOutput<String>('primaryQueueMicrosoftEndpoint');
    primaryQueueMicrosoftHost = registerOutput<String>('primaryQueueMicrosoftHost');
    primaryTableEndpoint = registerOutput<String>('primaryTableEndpoint');
    primaryTableHost = registerOutput<String>('primaryTableHost');
    primaryTableMicrosoftEndpoint = registerOutput<String>('primaryTableMicrosoftEndpoint');
    primaryTableMicrosoftHost = registerOutput<String>('primaryTableMicrosoftHost');
    primaryWebEndpoint = registerOutput<String>('primaryWebEndpoint');
    primaryWebHost = registerOutput<String>('primaryWebHost');
    primaryWebInternetEndpoint = registerOutput<String>('primaryWebInternetEndpoint');
    primaryWebInternetHost = registerOutput<String>('primaryWebInternetHost');
    primaryWebMicrosoftEndpoint = registerOutput<String>('primaryWebMicrosoftEndpoint');
    primaryWebMicrosoftHost = registerOutput<String>('primaryWebMicrosoftHost');
    provisionedBillingModelVersion = registerOutput<String?>('provisionedBillingModelVersion');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    queueEncryptionKeyType = registerOutput<String?>('queueEncryptionKeyType');
    queueProperties = registerOutput<AccountQueueProperties>('queueProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountQueueProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routing = registerOutput<AccountRouting>('routing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sasPolicy = registerOutput<AccountSasPolicy?>('sasPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountSasPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    secondaryBlobConnectionString = registerOutput<String>('secondaryBlobConnectionString');
    secondaryBlobEndpoint = registerOutput<String>('secondaryBlobEndpoint');
    secondaryBlobHost = registerOutput<String>('secondaryBlobHost');
    secondaryBlobInternetEndpoint = registerOutput<String>('secondaryBlobInternetEndpoint');
    secondaryBlobInternetHost = registerOutput<String>('secondaryBlobInternetHost');
    secondaryBlobMicrosoftEndpoint = registerOutput<String>('secondaryBlobMicrosoftEndpoint');
    secondaryBlobMicrosoftHost = registerOutput<String>('secondaryBlobMicrosoftHost');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    secondaryDfsEndpoint = registerOutput<String>('secondaryDfsEndpoint');
    secondaryDfsHost = registerOutput<String>('secondaryDfsHost');
    secondaryDfsInternetEndpoint = registerOutput<String>('secondaryDfsInternetEndpoint');
    secondaryDfsInternetHost = registerOutput<String>('secondaryDfsInternetHost');
    secondaryDfsMicrosoftEndpoint = registerOutput<String>('secondaryDfsMicrosoftEndpoint');
    secondaryDfsMicrosoftHost = registerOutput<String>('secondaryDfsMicrosoftHost');
    secondaryFileEndpoint = registerOutput<String>('secondaryFileEndpoint');
    secondaryFileHost = registerOutput<String>('secondaryFileHost');
    secondaryFileInternetEndpoint = registerOutput<String>('secondaryFileInternetEndpoint');
    secondaryFileInternetHost = registerOutput<String>('secondaryFileInternetHost');
    secondaryFileMicrosoftEndpoint = registerOutput<String>('secondaryFileMicrosoftEndpoint');
    secondaryFileMicrosoftHost = registerOutput<String>('secondaryFileMicrosoftHost');
    secondaryLocation = registerOutput<String>('secondaryLocation');
    secondaryQueueEndpoint = registerOutput<String>('secondaryQueueEndpoint');
    secondaryQueueHost = registerOutput<String>('secondaryQueueHost');
    secondaryQueueMicrosoftEndpoint = registerOutput<String>('secondaryQueueMicrosoftEndpoint');
    secondaryQueueMicrosoftHost = registerOutput<String>('secondaryQueueMicrosoftHost');
    secondaryTableEndpoint = registerOutput<String>('secondaryTableEndpoint');
    secondaryTableHost = registerOutput<String>('secondaryTableHost');
    secondaryTableMicrosoftEndpoint = registerOutput<String>('secondaryTableMicrosoftEndpoint');
    secondaryTableMicrosoftHost = registerOutput<String>('secondaryTableMicrosoftHost');
    secondaryWebEndpoint = registerOutput<String>('secondaryWebEndpoint');
    secondaryWebHost = registerOutput<String>('secondaryWebHost');
    secondaryWebInternetEndpoint = registerOutput<String>('secondaryWebInternetEndpoint');
    secondaryWebInternetHost = registerOutput<String>('secondaryWebInternetHost');
    secondaryWebMicrosoftEndpoint = registerOutput<String>('secondaryWebMicrosoftEndpoint');
    secondaryWebMicrosoftHost = registerOutput<String>('secondaryWebMicrosoftHost');
    sftpEnabled = registerOutput<bool?>('sftpEnabled');
    shareProperties = registerOutput<AccountShareProperties>('shareProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountShareProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sharedAccessKeyEnabled = registerOutput<bool?>('sharedAccessKeyEnabled');
    staticWebsite = registerOutput<AccountStaticWebsite>('staticWebsite', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountStaticWebsite.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableEncryptionKeyType = registerOutput<String?>('tableEncryptionKeyType');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
