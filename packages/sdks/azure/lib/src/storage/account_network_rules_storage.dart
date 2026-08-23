import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_network_rules_args.dart';
import 'account_network_rules_state.dart';

/// Manages network rules inside of a Azure Storage Account.
///
/// &gt; **Note:** Network Rules can be defined either directly on the `azure.storage.Account` resource, or using the `azure.storage.AccountNetworkRules` resource - but the two cannot be used together. Spurious changes will occur if both are used against the same Storage Account.
///
/// &gt; **Note:** Only one `azure.storage.AccountNetworkRules` can be tied to an `azure.storage.Account`. Spurious changes will occur if more than `azure.storage.AccountNetworkRules` is tied to the same `azure.storage.Account`.
///
/// &gt; **Note:** Deleting this resource updates the storage account back to the default values it had when the storage account was created.
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
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
///     serviceEndpoints: ["Microsoft.Storage"],
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
/// const exampleAccountNetworkRules = new azure.storage.AccountNetworkRules("example", {
///     storageAccountId: exampleAccount.id,
///     defaultAction: "Allow",
///     ipRules: ["127.0.0.1"],
///     virtualNetworkSubnetIds: [exampleSubnet.id],
///     bypasses: ["Metrics"],
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
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"],
///     service_endpoints=["Microsoft.Storage"])
/// example_account = azure.storage.Account("example",
///     name="storageaccountname",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="GRS",
///     tags={
///         "environment": "staging",
///     })
/// example_account_network_rules = azure.storage.AccountNetworkRules("example",
///     storage_account_id=example_account.id,
///     default_action="Allow",
///     ip_rules=["127.0.0.1"],
///     virtual_network_subnet_ids=[example_subnet.id],
///     bypasses=["Metrics"])
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
///         Name = "example-vnet",
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
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///         ServiceEndpoints = new[]
///         {
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
///         AccountReplicationType = "GRS",
///         Tags =
///         {
///             { "environment", "staging" },
///         },
///     });
///
///     var exampleAccountNetworkRules = new Azure.Storage.AccountNetworkRules("example", new()
///     {
///         StorageAccountId = exampleAccount.Id,
///         DefaultAction = "Allow",
///         IpRules = new[]
///         {
///             "127.0.0.1",
///         },
///         VirtualNetworkSubnetIds = new[]
///         {
///             exampleSubnet.Id,
///         },
///         Bypasses = new[]
///         {
///             "Metrics",
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
/// 			Name: pulumi.String("example-vnet"),
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
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			ServiceEndpoints: pulumi.StringArray{
/// 				pulumi.String("Microsoft.Storage"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
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
/// 		_, err = storage.NewAccountNetworkRules(ctx, "example", &storage.AccountNetworkRulesArgs{
/// 			StorageAccountId: exampleAccount.ID(),
/// 			DefaultAction:    pulumi.String("Allow"),
/// 			IpRules: pulumi.StringArray{
/// 				pulumi.String("127.0.0.1"),
/// 			},
/// 			VirtualNetworkSubnetIds: pulumi.StringArray{
/// 				exampleSubnet.ID(),
/// 			},
/// 			Bypasses: pulumi.StringArray{
/// 				pulumi.String("Metrics"),
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
///   name                = "example-vnet"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "example-subnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
///   service_endpoints    = ["Microsoft.Storage"]
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
/// resource "azure_storage_accountnetworkrules" "example" {
///   storage_account_id         = azure_storage_account.example.id
///   default_action             = "Allow"
///   ip_rules                   = ["127.0.0.1"]
///   virtual_network_subnet_ids = [azure_network_subnet.example.id]
///   bypasses                   = ["Metrics"]
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
/// import com.pulumi.azure.storage.AccountNetworkRules;
/// import com.pulumi.azure.storage.AccountNetworkRulesArgs;
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
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .serviceEndpoints("Microsoft.Storage")
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
///         var exampleAccountNetworkRules = new AccountNetworkRules("exampleAccountNetworkRules", AccountNetworkRulesArgs.builder()
///             .storageAccountId(exampleAccount.id())
///             .defaultAction("Allow")
///             .ipRules("127.0.0.1")
///             .virtualNetworkSubnetIds(exampleSubnet.id())
///             .bypasses("Metrics")
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
///       name: example-vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///       serviceEndpoints:
///         - Microsoft.Storage
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
///   exampleAccountNetworkRules:
///     type: azure:storage:AccountNetworkRules
///     name: example
///     properties:
///       storageAccountId: ${exampleAccount.id}
///       defaultAction: Allow
///       ipRules:
///         - 127.0.0.1
///       virtualNetworkSubnetIds:
///         - ${exampleSubnet.id}
///       bypasses:
///         - Metrics
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
/// Storage Account Network Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/accountNetworkRules:AccountNetworkRules storageAcc1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Storage/storageAccounts/myaccount
/// ```
class AccountNetworkRulesStorage extends pulumi.CustomResource {
  /// Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of `Logging`, `Metrics`, `AzureServices`, or `None`. Defaults to `["AzureServices"]`.
  ///
  /// &gt; **Note:** User has to explicitly set `bypass` to empty slice (`[]`) to remove it.
  late final pulumi.Output<List<String>> bypasses;
  /// Specifies the default action of allow or deny when no other rules match. Valid options are `Deny` or `Allow`.
  late final pulumi.Output<String> defaultAction;
  /// List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. Private IP address ranges (as defined in [RFC 1918](https://tools.ietf.org/html/rfc1918#section-3)) are not allowed.
  ///
  /// &gt; **Note:** Small address ranges using "/31" or "/32" prefix sizes are not supported. These ranges should be configured using individual IP address rules without prefix specified.
  ///
  /// &gt; **Note:** IP network rules have no effect on requests originating from the same Azure region as the storage account. Use Virtual network rules to allow same-region requests. Services deployed in the same region as the storage account use private Azure IP addresses for communication. Thus, you cannot restrict access to specific Azure services based on their public outbound IP address range.
  ///
  /// &gt; **Note:** User has to explicitly set `ipRules` to empty slice (`[]`) to remove it.
  late final pulumi.Output<List<String>?> ipRules;
  /// One or more `privateLinkAccess` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> privateLinkAccessRules;
  /// Specifies the ID of the storage account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountId;
  /// A list of virtual network subnet ids to secure the storage account.
  ///
  /// &gt; **Note:** User has to explicitly set `virtualNetworkSubnetIds` to empty slice (`[]`) to remove it.
  late final pulumi.Output<List<String>?> virtualNetworkSubnetIds;

  /// Creates a new [AccountNetworkRulesStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountNetworkRulesStorage]. {@macro pulumi_storage_account_network_rules_account_network_rules_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountNetworkRulesStorage(
    String name, {
    AccountNetworkRulesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/accountNetworkRules:AccountNetworkRules',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bypasses = registerOutput<List<String>>('bypasses');
    defaultAction = registerOutput<String>('defaultAction');
    ipRules = registerOutput<List<String>?>('ipRules');
    privateLinkAccessRules = registerOutput<List<Map<String, dynamic>>?>('privateLinkAccessRules');
    storageAccountId = registerOutput<String>('storageAccountId');
    virtualNetworkSubnetIds = registerOutput<List<String>?>('virtualNetworkSubnetIds');
  }

  /// Gets an existing [AccountNetworkRulesStorage] resource's state with the given [name] and [id].
  static AccountNetworkRulesStorage get(
    String name,
    pulumi.Input<String> id, {
    AccountNetworkRulesState? state,
  }) {
    return AccountNetworkRulesStorage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountNetworkRulesStorage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/accountNetworkRules:AccountNetworkRules',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bypasses = registerOutput<List<String>>('bypasses');
    defaultAction = registerOutput<String>('defaultAction');
    ipRules = registerOutput<List<String>?>('ipRules');
    privateLinkAccessRules = registerOutput<List<Map<String, dynamic>>?>('privateLinkAccessRules');
    storageAccountId = registerOutput<String>('storageAccountId');
    virtualNetworkSubnetIds = registerOutput<List<String>?>('virtualNetworkSubnetIds');
  }
}
