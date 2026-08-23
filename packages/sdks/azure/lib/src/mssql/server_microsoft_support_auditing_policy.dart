import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_microsoft_support_auditing_policy_args.dart';
import 'server_microsoft_support_auditing_policy_state.dart';

/// Manages a MS SQL Server Microsoft Support Auditing Policy.
///
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
/// const exampleServer = new azure.mssql.Server("example", {
///     name: "example-sqlserver",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12.0",
///     administratorLogin: "missadministrator",
///     administratorLoginPassword: "AdminPassword123!",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleServerMicrosoftSupportAuditingPolicy = new azure.mssql.ServerMicrosoftSupportAuditingPolicy("example", {
///     serverId: exampleServer.id,
///     blobStorageEndpoint: exampleAccount.primaryBlobEndpoint,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_server = azure.mssql.Server("example",
///     name="example-sqlserver",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12.0",
///     administrator_login="missadministrator",
///     administrator_login_password="AdminPassword123!")
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_server_microsoft_support_auditing_policy = azure.mssql.ServerMicrosoftSupportAuditingPolicy("example",
///     server_id=example_server.id,
///     blob_storage_endpoint=example_account.primary_blob_endpoint,
///     storage_account_access_key=example_account.primary_access_key)
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
///     var exampleServer = new Azure.MSSql.Server("example", new()
///     {
///         Name = "example-sqlserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12.0",
///         AdministratorLogin = "missadministrator",
///         AdministratorLoginPassword = "AdminPassword123!",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleServerMicrosoftSupportAuditingPolicy = new Azure.MSSql.ServerMicrosoftSupportAuditingPolicy("example", new()
///     {
///         ServerId = exampleServer.Id,
///         BlobStorageEndpoint = exampleAccount.PrimaryBlobEndpoint,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
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
/// 		exampleServer, err := mssql.NewServer(ctx, "example", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("example-sqlserver"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("missadministrator"),
/// 			AdministratorLoginPassword: pulumi.String("AdminPassword123!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewServerMicrosoftSupportAuditingPolicy(ctx, "example", &mssql.ServerMicrosoftSupportAuditingPolicyArgs{
/// 			ServerId:                exampleServer.ID(),
/// 			BlobStorageEndpoint:     exampleAccount.PrimaryBlobEndpoint,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
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
/// resource "azure_mssql_server" "example" {
///   name                         = "example-sqlserver"
///   resource_group_name          = azure_core_resourcegroup.example.name
///   location                     = azure_core_resourcegroup.example.location
///   version                      = "12.0"
///   administrator_login          = "missadministrator"
///   administrator_login_password = "AdminPassword123!"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "examplesa"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_mssql_servermicrosoftsupportauditingpolicy" "example" {
///   server_id                  = azure_mssql_server.example.id
///   blob_storage_endpoint      = azure_storage_account.example.primary_blob_endpoint
///   storage_account_access_key = azure_storage_account.example.primary_access_key
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
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.mssql.ServerMicrosoftSupportAuditingPolicy;
/// import com.pulumi.azure.mssql.ServerMicrosoftSupportAuditingPolicyArgs;
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
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example-sqlserver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12.0")
///             .administratorLogin("missadministrator")
///             .administratorLoginPassword("AdminPassword123!")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleServerMicrosoftSupportAuditingPolicy = new ServerMicrosoftSupportAuditingPolicy("exampleServerMicrosoftSupportAuditingPolicy", ServerMicrosoftSupportAuditingPolicyArgs.builder()
///             .serverId(exampleServer.id())
///             .blobStorageEndpoint(exampleAccount.primaryBlobEndpoint())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
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
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: example-sqlserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12.0'
///       administratorLogin: missadministrator
///       administratorLoginPassword: AdminPassword123!
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleServerMicrosoftSupportAuditingPolicy:
///     type: azure:mssql:ServerMicrosoftSupportAuditingPolicy
///     name: example
///     properties:
///       serverId: ${exampleServer.id}
///       blobStorageEndpoint: ${exampleAccount.primaryBlobEndpoint}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
/// ```
///
///
///
/// ### With Storage Account Behind VNet And Firewall
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as azurerm from "@pulumi/azurerm";
///
/// const primary = azure.core.getSubscription({});
/// const example = azure.core.getClientConfig({});
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "virtnetname-1",
///     addressSpaces: ["10.0.0.0/16"],
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "subnetname-1",
///     resourceGroupName: exampleResourceGroup.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
///     serviceEndpoints: [
///         "Microsoft.Sql",
///         "Microsoft.Storage",
///     ],
///     enforcePrivateLinkEndpointNetworkPolicies: true,
/// });
/// const exampleServer = new azure.mssql.Server("example", {
///     name: "example-sqlserver",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     version: "12.0",
///     administratorLogin: "missadministrator",
///     administratorLoginPassword: "AdminPassword123!",
///     minimumTlsVersion: "1.2",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     scope: primary.then(primary => primary.id),
///     roleDefinitionName: "Storage Blob Data Contributor",
///     principalId: exampleServer.identity.apply(identity => identity?.principalId),
/// });
/// const sqlvnetrule = new azurerm.index.SqlVirtualNetworkRule("sqlvnetrule", {
///     name: "sql-vnet-rule",
///     resourceGroupName: exampleResourceGroup.name,
///     serverName: exampleServer.name,
///     subnetId: exampleSubnet.id,
/// });
/// const exampleSqlFirewallRule = new azurerm.index.SqlFirewallRule("example", {
///     name: "FirewallRule1",
///     resourceGroupName: exampleResourceGroup.name,
///     serverName: exampleServer.name,
///     startIpAddress: "0.0.0.0",
///     endIpAddress: "0.0.0.0",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     accountKind: "StorageV2",
///     allowNestedItemsToBePublic: false,
///     networkRules: {
///         defaultAction: "Deny",
///         ipRules: ["127.0.0.1"],
///         virtualNetworkSubnetIds: [exampleSubnet.id],
///         bypasses: ["AzureServices"],
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleServerMicrosoftSupportAuditingPolicy = new azure.mssql.ServerMicrosoftSupportAuditingPolicy("example", {
///     blobStorageEndpoint: exampleAccount.primaryBlobEndpoint,
///     serverId: exampleServer.id,
///     logMonitoringEnabled: false,
///     storageAccountSubscriptionId: primaryAzurermSubscription.subscriptionId,
/// }, {
///     dependsOn: [
///         exampleAssignment,
///         exampleAccount,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_azurerm as azurerm
///
/// primary = azure.core.get_subscription()
/// example = azure.core.get_client_config()
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="virtnetname-1",
///     address_spaces=["10.0.0.0/16"],
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name)
/// example_subnet = azure.network.Subnet("example",
///     name="subnetname-1",
///     resource_group_name=example_resource_group.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"],
///     service_endpoints=[
///         "Microsoft.Sql",
///         "Microsoft.Storage",
///     ],
///     enforce_private_link_endpoint_network_policies=True)
/// example_server = azure.mssql.Server("example",
///     name="example-sqlserver",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     version="12.0",
///     administrator_login="missadministrator",
///     administrator_login_password="AdminPassword123!",
///     minimum_tls_version="1.2",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_assignment = azure.authorization.Assignment("example",
///     scope=primary.id,
///     role_definition_name="Storage Blob Data Contributor",
///     principal_id=example_server.identity.principal_id)
/// sqlvnetrule = azurerm.SqlVirtualNetworkRule("sqlvnetrule",
///     name=sql-vnet-rule,
///     resource_group_name=example_resource_group.name,
///     server_name=example_server.name,
///     subnet_id=example_subnet.id)
/// example_sql_firewall_rule = azurerm.SqlFirewallRule("example",
///     name=FirewallRule1,
///     resource_group_name=example_resource_group.name,
///     server_name=example_server.name,
///     start_ip_address=0.0.0.0,
///     end_ip_address=0.0.0.0)
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     account_kind="StorageV2",
///     allow_nested_items_to_be_public=False,
///     network_rules={
///         "default_action": "Deny",
///         "ip_rules": ["127.0.0.1"],
///         "virtual_network_subnet_ids": [example_subnet.id],
///         "bypasses": ["AzureServices"],
///     },
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_server_microsoft_support_auditing_policy = azure.mssql.ServerMicrosoftSupportAuditingPolicy("example",
///     blob_storage_endpoint=example_account.primary_blob_endpoint,
///     server_id=example_server.id,
///     log_monitoring_enabled=False,
///     storage_account_subscription_id=primary_azurerm_subscription["subscriptionId"],
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_assignment,
///             example_account,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Azurerm = Pulumi.Azurerm;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = Azure.Core.GetSubscription.Invoke();
///
///     var example = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "virtnetname-1",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "subnetname-1",
///         ResourceGroupName = exampleResourceGroup.Name,
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
///         EnforcePrivateLinkEndpointNetworkPolicies = true,
///     });
///
///     var exampleServer = new Azure.MSSql.Server("example", new()
///     {
///         Name = "example-sqlserver",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         Version = "12.0",
///         AdministratorLogin = "missadministrator",
///         AdministratorLoginPassword = "AdminPassword123!",
///         MinimumTlsVersion = "1.2",
///         Identity = new Azure.MSSql.Inputs.ServerIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         RoleDefinitionName = "Storage Blob Data Contributor",
///         PrincipalId = exampleServer.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var sqlvnetrule = new Azurerm.SqlVirtualNetworkRule("sqlvnetrule", new()
///     {
///         Name = "sql-vnet-rule",
///         ResourceGroupName = exampleResourceGroup.Name,
///         ServerName = exampleServer.Name,
///         SubnetId = exampleSubnet.Id,
///     });
///
///     var exampleSqlFirewallRule = new Azurerm.SqlFirewallRule("example", new()
///     {
///         Name = "FirewallRule1",
///         ResourceGroupName = exampleResourceGroup.Name,
///         ServerName = exampleServer.Name,
///         StartIpAddress = "0.0.0.0",
///         EndIpAddress = "0.0.0.0",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         AccountKind = "StorageV2",
///         AllowNestedItemsToBePublic = false,
///         NetworkRules = new Azure.Storage.Inputs.AccountNetworkRulesArgs
///         {
///             DefaultAction = "Deny",
///             IpRules = new[]
///             {
///                 "127.0.0.1",
///             },
///             VirtualNetworkSubnetIds = new[]
///             {
///                 exampleSubnet.Id,
///             },
///             Bypasses = new[]
///             {
///                 "AzureServices",
///             },
///         },
///         Identity = new Azure.Storage.Inputs.AccountIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleServerMicrosoftSupportAuditingPolicy = new Azure.MSSql.ServerMicrosoftSupportAuditingPolicy("example", new()
///     {
///         BlobStorageEndpoint = exampleAccount.PrimaryBlobEndpoint,
///         ServerId = exampleServer.Id,
///         LogMonitoringEnabled = false,
///         StorageAccountSubscriptionId = primaryAzurermSubscription.SubscriptionId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAssignment,
///             exampleAccount,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-azurerm/sdk/go/azurerm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("virtnetname-1"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("subnetname-1"),
/// 			ResourceGroupName:  exampleResourceGroup.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			ServiceEndpoints: pulumi.StringArray{
/// 				pulumi.String("Microsoft.Sql"),
/// 				pulumi.String("Microsoft.Storage"),
/// 			},
/// 			EnforcePrivateLinkEndpointNetworkPolicies: true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := mssql.NewServer(ctx, "example", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("example-sqlserver"),
/// 			ResourceGroupName:          exampleResourceGroup.Name,
/// 			Location:                   exampleResourceGroup.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("missadministrator"),
/// 			AdministratorLoginPassword: pulumi.String("AdminPassword123!"),
/// 			MinimumTlsVersion:          pulumi.String("1.2"),
/// 			Identity: &mssql.ServerIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAssignment, err := authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:              pulumi.String(primary.Id),
/// 			RoleDefinitionName: pulumi.String("Storage Blob Data Contributor"),
/// 			PrincipalId: pulumi.String(exampleServer.Identity.ApplyT(func(identity mssql.ServerIdentity) (*string, error) {
/// 				return identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azurerm.NewSqlVirtualNetworkRule(ctx, "sqlvnetrule", &azurerm.SqlVirtualNetworkRuleArgs{
/// 			Name:              "sql-vnet-rule",
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			ServerName:        exampleServer.Name,
/// 			SubnetId:          exampleSubnet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azurerm.NewSqlFirewallRule(ctx, "example", &azurerm.SqlFirewallRuleArgs{
/// 			Name:              "FirewallRule1",
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			ServerName:        exampleServer.Name,
/// 			StartIpAddress:    "0.0.0.0",
/// 			EndIpAddress:      "0.0.0.0",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                       pulumi.String("examplesa"),
/// 			ResourceGroupName:          exampleResourceGroup.Name,
/// 			Location:                   exampleResourceGroup.Location,
/// 			AccountTier:                pulumi.String("Standard"),
/// 			AccountReplicationType:     pulumi.String("LRS"),
/// 			AccountKind:                pulumi.String("StorageV2"),
/// 			AllowNestedItemsToBePublic: pulumi.Bool(false),
/// 			NetworkRules: &storage.AccountNetworkRulesTypeArgs{
/// 				DefaultAction: pulumi.String("Deny"),
/// 				IpRules: pulumi.StringArray{
/// 					pulumi.String("127.0.0.1"),
/// 				},
/// 				VirtualNetworkSubnetIds: pulumi.StringArray{
/// 					exampleSubnet.ID(),
/// 				},
/// 				Bypasses: pulumi.StringArray{
/// 					pulumi.String("AzureServices"),
/// 				},
/// 			},
/// 			Identity: &storage.AccountIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewServerMicrosoftSupportAuditingPolicy(ctx, "example", &mssql.ServerMicrosoftSupportAuditingPolicyArgs{
/// 			BlobStorageEndpoint:          exampleAccount.PrimaryBlobEndpoint,
/// 			ServerId:                     exampleServer.ID(),
/// 			LogMonitoringEnabled:         pulumi.Bool(false),
/// 			StorageAccountSubscriptionId: pulumi.Any(primaryAzurermSubscription.SubscriptionId),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAssignment,
/// 			exampleAccount,
/// 		}))
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
/// data "azure_core_getsubscription" "primary" {
/// }
/// data "azure_core_getclientconfig" "example" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "virtnetname-1"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                                           = "subnetname-1"
///   resource_group_name                            = azure_core_resourcegroup.example.name
///   virtual_network_name                           = azure_network_virtualnetwork.example.name
///   address_prefixes                               = ["10.0.2.0/24"]
///   service_endpoints                              = ["Microsoft.Sql", "Microsoft.Storage"]
///   enforce_private_link_endpoint_network_policies = true
/// }
/// resource "azure_authorization_assignment" "example" {
///   scope                = data.azure_core_getsubscription.primary.id
///   role_definition_name = "Storage Blob Data Contributor"
///   principal_id         = azure_mssql_server.example.identity.principal_id
/// }
/// resource "azure_mssql_server" "example" {
///   name                         = "example-sqlserver"
///   resource_group_name          = azure_core_resourcegroup.example.name
///   location                     = azure_core_resourcegroup.example.location
///   version                      = "12.0"
///   administrator_login          = "missadministrator"
///   administrator_login_password = "AdminPassword123!"
///   minimum_tls_version          = "1.2"
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azurerm_sqlvirtualnetworkrule" "sqlvnetrule" {
///   name                = "sql-vnet-rule"
///   resource_group_name = azure_core_resourcegroup.example.name
///   server_name         = azure_mssql_server.example.name
///   subnet_id           = azure_network_subnet.example.id
/// }
/// resource "azurerm_sqlfirewallrule" "example" {
///   name                = "FirewallRule1"
///   resource_group_name = azure_core_resourcegroup.example.name
///   server_name         = azure_mssql_server.example.name
///   start_ip_address    = "0.0.0.0"
///   end_ip_address      = "0.0.0.0"
/// }
/// resource "azure_storage_account" "example" {
///   name                            = "examplesa"
///   resource_group_name             = azure_core_resourcegroup.example.name
///   location                        = azure_core_resourcegroup.example.location
///   account_tier                    = "Standard"
///   account_replication_type        = "LRS"
///   account_kind                    = "StorageV2"
///   allow_nested_items_to_be_public = false
///   network_rules = {
///     default_action             = "Deny"
///     ip_rules                   = ["127.0.0.1"]
///     virtual_network_subnet_ids = [azure_network_subnet.example.id]
///     bypasses                   = ["AzureServices"]
///   }
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_mssql_servermicrosoftsupportauditingpolicy" "example" {
///   depends_on                      = [azure_authorization_assignment.example, azure_storage_account.example]
///   blob_storage_endpoint           = azure_storage_account.example.primary_blob_endpoint
///   server_id                       = azure_mssql_server.example.id
///   log_monitoring_enabled          = false
///   storage_account_subscription_id = primaryAzurermSubscription.subscriptionId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.mssql.inputs.ServerIdentityArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azurerm.SqlVirtualNetworkRule;
/// import com.pulumi.azurerm.SqlVirtualNetworkRuleArgs;
/// import com.pulumi.azurerm.SqlFirewallRule;
/// import com.pulumi.azurerm.SqlFirewallRuleArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.inputs.AccountNetworkRulesArgs;
/// import com.pulumi.azure.storage.inputs.AccountIdentityArgs;
/// import com.pulumi.azure.mssql.ServerMicrosoftSupportAuditingPolicy;
/// import com.pulumi.azure.mssql.ServerMicrosoftSupportAuditingPolicyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var primary = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         final var example = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("virtnetname-1")
///             .addressSpaces("10.0.0.0/16")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("subnetname-1")
///             .resourceGroupName(exampleResourceGroup.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .serviceEndpoints(
///                 "Microsoft.Sql",
///                 "Microsoft.Storage")
///             .enforcePrivateLinkEndpointNetworkPolicies(true)
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example-sqlserver")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .version("12.0")
///             .administratorLogin("missadministrator")
///             .administratorLoginPassword("AdminPassword123!")
///             .minimumTlsVersion("1.2")
///             .identity(ServerIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .scope(primary.id())
///             .roleDefinitionName("Storage Blob Data Contributor")
///             .principalId(exampleServer.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var sqlvnetrule = new SqlVirtualNetworkRule("sqlvnetrule", SqlVirtualNetworkRuleArgs.builder()
///             .name("sql-vnet-rule")
///             .resourceGroupName(exampleResourceGroup.name())
///             .serverName(exampleServer.name())
///             .subnetId(exampleSubnet.id())
///             .build());
///
///         var exampleSqlFirewallRule = new SqlFirewallRule("exampleSqlFirewallRule", SqlFirewallRuleArgs.builder()
///             .name("FirewallRule1")
///             .resourceGroupName(exampleResourceGroup.name())
///             .serverName(exampleServer.name())
///             .startIpAddress("0.0.0.0")
///             .endIpAddress("0.0.0.0")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .accountKind("StorageV2")
///             .allowNestedItemsToBePublic(false)
///             .networkRules(AccountNetworkRulesArgs.builder()
///                 .defaultAction("Deny")
///                 .ipRules("127.0.0.1")
///                 .virtualNetworkSubnetIds(exampleSubnet.id())
///                 .bypasses("AzureServices")
///                 .build())
///             .identity(AccountIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleServerMicrosoftSupportAuditingPolicy = new ServerMicrosoftSupportAuditingPolicy("exampleServerMicrosoftSupportAuditingPolicy", ServerMicrosoftSupportAuditingPolicyArgs.builder()
///             .blobStorageEndpoint(exampleAccount.primaryBlobEndpoint())
///             .serverId(exampleServer.id())
///             .logMonitoringEnabled(false)
///             .storageAccountSubscriptionId(primaryAzurermSubscription.subscriptionId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleAssignment,
///                     exampleAccount)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: virtnetname-1
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: subnetname-1
///       resourceGroupName: ${exampleResourceGroup.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///       serviceEndpoints:
///         - Microsoft.Sql
///         - Microsoft.Storage
///       enforcePrivateLinkEndpointNetworkPolicies: true
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       scope: ${primary.id}
///       roleDefinitionName: Storage Blob Data Contributor
///       principalId: ${exampleServer.identity.principalId}
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: example-sqlserver
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       version: '12.0'
///       administratorLogin: missadministrator
///       administratorLoginPassword: AdminPassword123!
///       minimumTlsVersion: '1.2'
///       identity:
///         type: SystemAssigned
///   sqlvnetrule:
///     type: azurerm:SqlVirtualNetworkRule
///     properties:
///       name: sql-vnet-rule
///       resourceGroupName: ${exampleResourceGroup.name}
///       serverName: ${exampleServer.name}
///       subnetId: ${exampleSubnet.id}
///   exampleSqlFirewallRule:
///     type: azurerm:SqlFirewallRule
///     name: example
///     properties:
///       name: FirewallRule1
///       resourceGroupName: ${exampleResourceGroup.name}
///       serverName: ${exampleServer.name}
///       startIpAddress: 0.0.0.0
///       endIpAddress: 0.0.0.0
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       accountKind: StorageV2
///       allowNestedItemsToBePublic: false
///       networkRules:
///         defaultAction: Deny
///         ipRules:
///           - 127.0.0.1
///         virtualNetworkSubnetIds:
///           - ${exampleSubnet.id}
///         bypasses:
///           - AzureServices
///       identity:
///         type: SystemAssigned
///   exampleServerMicrosoftSupportAuditingPolicy:
///     type: azure:mssql:ServerMicrosoftSupportAuditingPolicy
///     name: example
///     properties:
///       blobStorageEndpoint: ${exampleAccount.primaryBlobEndpoint}
///       serverId: ${exampleServer.id}
///       logMonitoringEnabled: false
///       storageAccountSubscriptionId: ${primaryAzurermSubscription.subscriptionId}
///     options:
///       dependsOn:
///         - ${exampleAssignment}
///         - ${exampleAccount}
/// variables:
///   primary:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   example:
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
/// * `Microsoft.Sql` - 2023-08-01-preview
///
/// ## Import
///
/// MS SQL Server Microsoft Support Auditing Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/serverMicrosoftSupportAuditingPolicy:ServerMicrosoftSupportAuditingPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Sql/servers/sqlServer1/devOpsAuditingSettings/default
/// ```
class ServerMicrosoftSupportAuditingPolicy extends pulumi.CustomResource {
  /// The blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Microsoft support auditing logs.
  late final pulumi.Output<String?> blobStorageEndpoint;
  /// Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  ///
  /// &gt; **Note:** If `enabled` is `true`, `blobStorageEndpoint` or `logMonitoringEnabled` are required.
  late final pulumi.Output<bool?> enabled;
  /// Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`.
  late final pulumi.Output<bool?> logMonitoringEnabled;
  /// The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverId;
  /// The access key to use for the auditing storage account.
  late final pulumi.Output<String?> storageAccountAccessKey;
  /// The ID of the Subscription containing the Storage Account.
  late final pulumi.Output<String?> storageAccountSubscriptionId;

  /// Creates a new [ServerMicrosoftSupportAuditingPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerMicrosoftSupportAuditingPolicy]. {@macro pulumi_mssql_server_microsoft_support_auditing_policy_server_microsoft_support_auditing_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerMicrosoftSupportAuditingPolicy(
    String name, {
    ServerMicrosoftSupportAuditingPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/serverMicrosoftSupportAuditingPolicy:ServerMicrosoftSupportAuditingPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    blobStorageEndpoint = registerOutput<String?>('blobStorageEndpoint');
    enabled = registerOutput<bool?>('enabled');
    logMonitoringEnabled = registerOutput<bool?>('logMonitoringEnabled');
    serverId = registerOutput<String>('serverId');
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey');
    storageAccountSubscriptionId = registerOutput<String?>('storageAccountSubscriptionId');
  }

  /// Gets an existing [ServerMicrosoftSupportAuditingPolicy] resource's state with the given [name] and [id].
  static ServerMicrosoftSupportAuditingPolicy get(
    String name,
    pulumi.Input<String> id, {
    ServerMicrosoftSupportAuditingPolicyState? state,
  }) {
    return ServerMicrosoftSupportAuditingPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerMicrosoftSupportAuditingPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/serverMicrosoftSupportAuditingPolicy:ServerMicrosoftSupportAuditingPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    blobStorageEndpoint = registerOutput<String?>('blobStorageEndpoint');
    enabled = registerOutput<bool?>('enabled');
    logMonitoringEnabled = registerOutput<bool?>('logMonitoringEnabled');
    serverId = registerOutput<String>('serverId');
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey');
    storageAccountSubscriptionId = registerOutput<String?>('storageAccountSubscriptionId');
  }
}
