import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_rule_args.dart';
import 'virtual_network_rule_state.dart';

/// Manages a PostgreSQL Virtual Network Rule.
///
/// > **Note:** The `azure.postgresql.VirtualNetworkRule` resource is deprecated and will be removed in v5.0 of the AzureRM Provider. Azure Database for PostgreSQL Single Server and its sub resources have been retired as of 2025-03-28. For more information, see https://techcommunity.microsoft.com/blog/adforpostgresql/retiring-azure-database-for-postgresql-single-server-in-2025/3783783.
///
/// > **Note:** PostgreSQL Virtual Network Rules [can only be used with SKU Tiers of `GeneralPurpose` or `MemoryOptimized`](https://docs.microsoft.com/azure/postgresql/concepts-data-access-and-security-vnet)
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
///     addressSpaces: ["10.7.29.0/29"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const internal = new azure.network.Subnet("internal", {
///     name: "internal",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.7.29.0/29"],
///     serviceEndpoints: ["Microsoft.Sql"],
/// });
/// const exampleServer = new azure.postgresql.Server("example", {
///     name: "postgresql-server-1",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "GP_Gen5_2",
///     storageMb: 5120,
///     backupRetentionDays: 7,
///     administratorLogin: "psqladmin",
///     administratorLoginPassword: "H@Sh1CoR3!",
///     version: "9.5",
///     sslEnforcementEnabled: true,
/// });
/// const exampleVirtualNetworkRule = new azure.postgresql.VirtualNetworkRule("example", {
///     name: "postgresql-vnet-rule",
///     resourceGroupName: example.name,
///     serverName: exampleServer.name,
///     subnetId: internal.id,
///     ignoreMissingVnetServiceEndpoint: true,
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
///     address_spaces=["10.7.29.0/29"],
///     location=example.location,
///     resource_group_name=example.name)
/// internal = azure.network.Subnet("internal",
///     name="internal",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.7.29.0/29"],
///     service_endpoints=["Microsoft.Sql"])
/// example_server = azure.postgresql.Server("example",
///     name="postgresql-server-1",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="GP_Gen5_2",
///     storage_mb=5120,
///     backup_retention_days=7,
///     administrator_login="psqladmin",
///     administrator_login_password="H@Sh1CoR3!",
///     version="9.5",
///     ssl_enforcement_enabled=True)
/// example_virtual_network_rule = azure.postgresql.VirtualNetworkRule("example",
///     name="postgresql-vnet-rule",
///     resource_group_name=example.name,
///     server_name=example_server.name,
///     subnet_id=internal.id,
///     ignore_missing_vnet_service_endpoint=True)
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
///             "10.7.29.0/29",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var @internal = new Azure.Network.Subnet("internal", new()
///     {
///         Name = "internal",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.7.29.0/29",
///         },
///         ServiceEndpoints = new[]
///         {
///             "Microsoft.Sql",
///         },
///     });
///
///     var exampleServer = new Azure.PostgreSql.Server("example", new()
///     {
///         Name = "postgresql-server-1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "GP_Gen5_2",
///         StorageMb = 5120,
///         BackupRetentionDays = 7,
///         AdministratorLogin = "psqladmin",
///         AdministratorLoginPassword = "H@Sh1CoR3!",
///         Version = "9.5",
///         SslEnforcementEnabled = true,
///     });
///
///     var exampleVirtualNetworkRule = new Azure.PostgreSql.VirtualNetworkRule("example", new()
///     {
///         Name = "postgresql-vnet-rule",
///         ResourceGroupName = example.Name,
///         ServerName = exampleServer.Name,
///         SubnetId = @internal.Id,
///         IgnoreMissingVnetServiceEndpoint = true,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/postgresql"
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
/// 				pulumi.String("10.7.29.0/29"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		internal, err := network.NewSubnet(ctx, "internal", &network.SubnetArgs{
/// 			Name:               pulumi.String("internal"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.7.29.0/29"),
/// 			},
/// 			ServiceEndpoints: pulumi.StringArray{
/// 				pulumi.String("Microsoft.Sql"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := postgresql.NewServer(ctx, "example", &postgresql.ServerArgs{
/// 			Name:                       pulumi.String("postgresql-server-1"),
/// 			Location:                   example.Location,
/// 			ResourceGroupName:          example.Name,
/// 			SkuName:                    pulumi.String("GP_Gen5_2"),
/// 			StorageMb:                  pulumi.Int(5120),
/// 			BackupRetentionDays:        pulumi.Int(7),
/// 			AdministratorLogin:         pulumi.String("psqladmin"),
/// 			AdministratorLoginPassword: pulumi.String("H@Sh1CoR3!"),
/// 			Version:                    pulumi.String("9.5"),
/// 			SslEnforcementEnabled:      pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewVirtualNetworkRule(ctx, "example", &postgresql.VirtualNetworkRuleArgs{
/// 			Name:                             pulumi.String("postgresql-vnet-rule"),
/// 			ResourceGroupName:                example.Name,
/// 			ServerName:                       exampleServer.Name,
/// 			SubnetId:                         internal.ID(),
/// 			IgnoreMissingVnetServiceEndpoint: pulumi.Bool(true),
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.postgresql.Server;
/// import com.pulumi.azure.postgresql.ServerArgs;
/// import com.pulumi.azure.postgresql.VirtualNetworkRule;
/// import com.pulumi.azure.postgresql.VirtualNetworkRuleArgs;
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
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.7.29.0/29")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var internal = new Subnet("internal", SubnetArgs.builder()
///             .name("internal")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.7.29.0/29")
///             .serviceEndpoints("Microsoft.Sql")
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("postgresql-server-1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("GP_Gen5_2")
///             .storageMb(5120)
///             .backupRetentionDays(7)
///             .administratorLogin("psqladmin")
///             .administratorLoginPassword("H@Sh1CoR3!")
///             .version("9.5")
///             .sslEnforcementEnabled(true)
///             .build());
///
///         var exampleVirtualNetworkRule = new VirtualNetworkRule("exampleVirtualNetworkRule", VirtualNetworkRuleArgs.builder()
///             .name("postgresql-vnet-rule")
///             .resourceGroupName(example.name())
///             .serverName(exampleServer.name())
///             .subnetId(internal.id())
///             .ignoreMissingVnetServiceEndpoint(true)
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
///         - 10.7.29.0/29
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   internal:
///     type: azure:network:Subnet
///     properties:
///       name: internal
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.7.29.0/29
///       serviceEndpoints:
///         - Microsoft.Sql
///   exampleServer:
///     type: azure:postgresql:Server
///     name: example
///     properties:
///       name: postgresql-server-1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: GP_Gen5_2
///       storageMb: 5120
///       backupRetentionDays: 7
///       administratorLogin: psqladmin
///       administratorLoginPassword: H@Sh1CoR3!
///       version: '9.5'
///       sslEnforcementEnabled: true
///   exampleVirtualNetworkRule:
///     type: azure:postgresql:VirtualNetworkRule
///     name: example
///     properties:
///       name: postgresql-vnet-rule
///       resourceGroupName: ${example.name}
///       serverName: ${exampleServer.name}
///       subnetId: ${internal.id}
///       ignoreMissingVnetServiceEndpoint: true
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2017-12-01
///
/// ## Import
///
/// PostgreSQL Virtual Network Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:postgresql/virtualNetworkRule:VirtualNetworkRule rule1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.DBforPostgreSQL/servers/myserver/virtualNetworkRules/vnetrulename
/// ```
class VirtualNetworkRule extends pulumi.CustomResource {
  /// Should the Virtual Network Rule be created before the Subnet has the Virtual Network Service Endpoint enabled?
  late final pulumi.Output<bool?> ignoreMissingVnetServiceEndpoint;
  /// The name of the PostgreSQL virtual network rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `name` must be between 1-128 characters long and must satisfy all of the requirements below:
  ///
  /// 1. Contains only alphanumeric and hyphen characters
  /// 2. Cannot start with a number or hyphen
  /// 3. Cannot end with a hyphen
  late final pulumi.Output<String> name;
  /// The name of the resource group where the PostgreSQL server resides. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name of the SQL Server to which this PostgreSQL virtual network rule will be applied to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverName;
  /// The ID of the subnet that the PostgreSQL server will be connected to.
  late final pulumi.Output<String> subnetId;

  /// Creates a new [VirtualNetworkRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkRule]. {@macro pulumi_postgresql_virtual_network_rule_virtual_network_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkRule(
    String name, {
    VirtualNetworkRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/virtualNetworkRule:VirtualNetworkRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ignoreMissingVnetServiceEndpoint = registerOutput<bool?>('ignoreMissingVnetServiceEndpoint');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serverName = registerOutput<String>('serverName');
    this.subnetId = registerOutput<String>('subnetId');
  }

  /// Gets an existing [VirtualNetworkRule] resource's state with the given [name] and [id].
  static VirtualNetworkRule get(
    String name,
    pulumi.Input<String> id, {
    VirtualNetworkRuleState? state,
  }) {
    return VirtualNetworkRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualNetworkRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/virtualNetworkRule:VirtualNetworkRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ignoreMissingVnetServiceEndpoint = registerOutput<bool?>('ignoreMissingVnetServiceEndpoint');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serverName = registerOutput<String>('serverName');
    this.subnetId = registerOutput<String>('subnetId');
  }
}
