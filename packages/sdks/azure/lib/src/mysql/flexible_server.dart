import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_server_args.dart';
import 'flexible_server_customer_managed_key.dart';
import 'flexible_server_high_availability.dart';
import 'flexible_server_identity.dart';
import 'flexible_server_maintenance_window.dart';
import 'flexible_server_state.dart';
import 'flexible_server_storage.dart';

/// Manages a MySQL Flexible Server.
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
///     name: "example-vn",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-sn",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
///     serviceEndpoints: ["Microsoft.Storage"],
///     delegations: [{
///         name: "fs",
///         serviceDelegation: {
///             name: "Microsoft.DBforMySQL/flexibleServers",
///             actions: ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }],
/// });
/// const exampleZone = new azure.privatedns.Zone("example", {
///     name: "example.mysql.database.azure.com",
///     resourceGroupName: example.name,
/// });
/// const exampleZoneVirtualNetworkLink = new azure.privatedns.ZoneVirtualNetworkLink("example", {
///     name: "exampleVnetZone.com",
///     privateDnsZoneName: exampleZone.name,
///     virtualNetworkId: exampleVirtualNetwork.id,
///     resourceGroupName: example.name,
/// });
/// const exampleFlexibleServer = new azure.mysql.FlexibleServer("example", {
///     name: "example-fs",
///     resourceGroupName: example.name,
///     location: example.location,
///     administratorLogin: "psqladmin",
///     administratorPassword: "H@Sh1CoR3!",
///     backupRetentionDays: 7,
///     delegatedSubnetId: exampleSubnet.id,
///     privateDnsZoneId: exampleZone.id,
///     skuName: "GP_Standard_D2ds_v4",
/// }, {
///     dependsOn: [exampleZoneVirtualNetworkLink],
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
///     name="example-vn",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="example-sn",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"],
///     service_endpoints=["Microsoft.Storage"],
///     delegations=[{
///         "name": "fs",
///         "service_delegation": {
///             "name": "Microsoft.DBforMySQL/flexibleServers",
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }])
/// example_zone = azure.privatedns.Zone("example",
///     name="example.mysql.database.azure.com",
///     resource_group_name=example.name)
/// example_zone_virtual_network_link = azure.privatedns.ZoneVirtualNetworkLink("example",
///     name="exampleVnetZone.com",
///     private_dns_zone_name=example_zone.name,
///     virtual_network_id=example_virtual_network.id,
///     resource_group_name=example.name)
/// example_flexible_server = azure.mysql.FlexibleServer("example",
///     name="example-fs",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_login="psqladmin",
///     administrator_password="H@Sh1CoR3!",
///     backup_retention_days=7,
///     delegated_subnet_id=example_subnet.id,
///     private_dns_zone_id=example_zone.id,
///     sku_name="GP_Standard_D2ds_v4",
///     opts = pulumi.ResourceOptions(depends_on=[example_zone_virtual_network_link]))
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
///         Name = "example-vn",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-sn",
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
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "fs",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.DBforMySQL/flexibleServers",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleZone = new Azure.PrivateDns.Zone("example", new()
///     {
///         Name = "example.mysql.database.azure.com",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleZoneVirtualNetworkLink = new Azure.PrivateDns.ZoneVirtualNetworkLink("example", new()
///     {
///         Name = "exampleVnetZone.com",
///         PrivateDnsZoneName = exampleZone.Name,
///         VirtualNetworkId = exampleVirtualNetwork.Id,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleFlexibleServer = new Azure.MySql.FlexibleServer("example", new()
///     {
///         Name = "example-fs",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorLogin = "psqladmin",
///         AdministratorPassword = "H@Sh1CoR3!",
///         BackupRetentionDays = 7,
///         DelegatedSubnetId = exampleSubnet.Id,
///         PrivateDnsZoneId = exampleZone.Id,
///         SkuName = "GP_Standard_D2ds_v4",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleZoneVirtualNetworkLink,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mysql"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
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
/// 			Name:              pulumi.String("example-vn"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-sn"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			ServiceEndpoints: pulumi.StringArray{
/// 				pulumi.String("Microsoft.Storage"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("fs"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.DBforMySQL/flexibleServers"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleZone, err := privatedns.NewZone(ctx, "example", &privatedns.ZoneArgs{
/// 			Name:              pulumi.String("example.mysql.database.azure.com"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleZoneVirtualNetworkLink, err := privatedns.NewZoneVirtualNetworkLink(ctx, "example", &privatedns.ZoneVirtualNetworkLinkArgs{
/// 			Name:               pulumi.String("exampleVnetZone.com"),
/// 			PrivateDnsZoneName: exampleZone.Name,
/// 			VirtualNetworkId:   exampleVirtualNetwork.ID(),
/// 			ResourceGroupName:  example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mysql.NewFlexibleServer(ctx, "example", &mysql.FlexibleServerArgs{
/// 			Name:                  pulumi.String("example-fs"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			AdministratorLogin:    pulumi.String("psqladmin"),
/// 			AdministratorPassword: pulumi.String("H@Sh1CoR3!"),
/// 			BackupRetentionDays:   pulumi.Int(7),
/// 			DelegatedSubnetId:     exampleSubnet.ID(),
/// 			PrivateDnsZoneId:      exampleZone.ID(),
/// 			SkuName:               pulumi.String("GP_Standard_D2ds_v4"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleZoneVirtualNetworkLink,
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-vn"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   address_spaces      = ["10.0.0.0/16"]
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "example-sn"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
///   service_endpoints    = ["Microsoft.Storage"]
///   delegations {
///     name = "fs"
///     service_delegation = {
///       name    = "Microsoft.DBforMySQL/flexibleServers"
///       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
///     }
///   }
/// }
/// resource "azure_privatedns_zone" "example" {
///   name                = "example.mysql.database.azure.com"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_privatedns_zonevirtualnetworklink" "example" {
///   name                  = "exampleVnetZone.com"
///   private_dns_zone_name = azure_privatedns_zone.example.name
///   virtual_network_id    = azure_network_virtualnetwork.example.id
///   resource_group_name   = azure_core_resourcegroup.example.name
/// }
/// resource "azure_mysql_flexibleserver" "example" {
///   depends_on             = [azure_privatedns_zonevirtualnetworklink.example]
///   name                   = "example-fs"
///   resource_group_name    = azure_core_resourcegroup.example.name
///   location               = azure_core_resourcegroup.example.location
///   administrator_login    = "psqladmin"
///   administrator_password = "H@Sh1CoR3!"
///   backup_retention_days  = 7
///   delegated_subnet_id    = azure_network_subnet.example.id
///   private_dns_zone_id    = azure_privatedns_zone.example.id
///   sku_name               = "GP_Standard_D2ds_v4"
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
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.privatedns.Zone;
/// import com.pulumi.azure.privatedns.ZoneArgs;
/// import com.pulumi.azure.privatedns.ZoneVirtualNetworkLink;
/// import com.pulumi.azure.privatedns.ZoneVirtualNetworkLinkArgs;
/// import com.pulumi.azure.mysql.FlexibleServer;
/// import com.pulumi.azure.mysql.FlexibleServerArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vn")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-sn")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .serviceEndpoints("Microsoft.Storage")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("fs")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.DBforMySQL/flexibleServers")
///                     .actions("Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("example.mysql.database.azure.com")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleZoneVirtualNetworkLink = new ZoneVirtualNetworkLink("exampleZoneVirtualNetworkLink", ZoneVirtualNetworkLinkArgs.builder()
///             .name("exampleVnetZone.com")
///             .privateDnsZoneName(exampleZone.name())
///             .virtualNetworkId(exampleVirtualNetwork.id())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleFlexibleServer = new FlexibleServer("exampleFlexibleServer", FlexibleServerArgs.builder()
///             .name("example-fs")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorLogin("psqladmin")
///             .administratorPassword("H@Sh1CoR3!")
///             .backupRetentionDays(7)
///             .delegatedSubnetId(exampleSubnet.id())
///             .privateDnsZoneId(exampleZone.id())
///             .skuName("GP_Standard_D2ds_v4")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleZoneVirtualNetworkLink)
///                 .build());
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
///       name: example-vn
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-sn
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///       serviceEndpoints:
///         - Microsoft.Storage
///       delegations:
///         - name: fs
///           serviceDelegation:
///             name: Microsoft.DBforMySQL/flexibleServers
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   exampleZone:
///     type: azure:privatedns:Zone
///     name: example
///     properties:
///       name: example.mysql.database.azure.com
///       resourceGroupName: ${example.name}
///   exampleZoneVirtualNetworkLink:
///     type: azure:privatedns:ZoneVirtualNetworkLink
///     name: example
///     properties:
///       name: exampleVnetZone.com
///       privateDnsZoneName: ${exampleZone.name}
///       virtualNetworkId: ${exampleVirtualNetwork.id}
///       resourceGroupName: ${example.name}
///   exampleFlexibleServer:
///     type: azure:mysql:FlexibleServer
///     name: example
///     properties:
///       name: example-fs
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       administratorLogin: psqladmin
///       administratorPassword: H@Sh1CoR3!
///       backupRetentionDays: 7
///       delegatedSubnetId: ${exampleSubnet.id}
///       privateDnsZoneId: ${exampleZone.id}
///       skuName: GP_Standard_D2ds_v4
///     options:
///       dependsOn:
///         - ${exampleZoneVirtualNetworkLink}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforMySQL` - 2023-12-30
///
/// ## Import
///
/// MySQL Flexible Servers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mysql/flexibleServer:FlexibleServer example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DBforMySQL/flexibleServers/flexibleServer1
/// ```
class FlexibleServer extends pulumi.CustomResource {
  /// The Administrator login for the MySQL Flexible Server. Required when `createMode` is `Default`. Changing this forces a new MySQL Flexible Server to be created.
  late final pulumi.Output<String> administratorLogin;
  /// The Password associated with the `administratorLogin` for the MySQL Flexible Server.
  late final pulumi.Output<String?> administratorPassword;
  /// An integer value used to trigger an update for `administratorPasswordWo`. This property should be incremented when updating `administratorPasswordWo`.
  ///
  /// &gt; **Note:** Either `administratorPassword` or `administratorPasswordWo` is required when `createMode` is `Default`.
  late final pulumi.Output<int?> administratorPasswordWoVersion;
  /// The backup retention days for the MySQL Flexible Server. Possible values are between `1` and `35` days. Defaults to `7`.
  late final pulumi.Output<int?> backupRetentionDays;
  /// The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created.
  ///
  /// &gt; **Note:** Creating a `GeoRestore` server requires the source server with `geoRedundantBackupEnabled` enabled.
  ///
  /// &gt; **Note:** When a server is first created it may not be immediately available for `geo restore` or `replica`. It may take a few minutes to several hours for the necessary metadata to be populated. Please see the [Geo Restore](https://learn.microsoft.com/azure/mysql/single-server/how-to-restore-server-portal#geo-restore) and the [Replica](https://learn.microsoft.com/azure/mysql/flexible-server/concepts-read-replicas#create-a-replica) for more information.
  ///
  /// &gt; **Note:** When importing a MySQL Flexible Server, `createMode` is not returned by the api so you will see a diff if `createMode` is specified in your config. To prevent recreation, use the `ignoreChanges` lifecycle meta-argument.
  late final pulumi.Output<String?> createMode;
  /// A `customerManagedKey` block as defined below.
  ///
  /// &gt; **Note:** `identity` is required when `customerManagedKey` is specified.
  late final pulumi.Output<FlexibleServerCustomerManagedKey?> customerManagedKey;
  /// The ID of the virtual network subnet to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  late final pulumi.Output<String?> delegatedSubnetId;
  /// The fully qualified domain name of the MySQL Flexible Server.
  late final pulumi.Output<String> fqdn;
  /// Should geo redundant backup enabled? Defaults to `false`. Changing this forces a new MySQL Flexible Server to be created.
  late final pulumi.Output<bool?> geoRedundantBackupEnabled;
  /// A `highAvailability` block as defined below.
  late final pulumi.Output<FlexibleServerHighAvailability?> highAvailability;
  /// An `identity` block as defined below.
  late final pulumi.Output<FlexibleServerIdentity?> identity;
  /// The Azure Region where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
  late final pulumi.Output<String> location;
  /// A `maintenanceWindow` block as defined below.
  late final pulumi.Output<FlexibleServerMaintenanceWindow?> maintenanceWindow;
  /// The name which should be used for this MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  late final pulumi.Output<String> name;
  /// The point in time to restore from `creationSourceServerId` when `createMode` is `PointInTimeRestore`. Changing this forces a new MySQL Flexible Server to be created.
  late final pulumi.Output<String?> pointInTimeRestoreTimeInUtc;
  /// The ID of the private DNS zone to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  ///
  /// &gt; **Note:** The `privateDnsZoneId` is required when setting a `delegatedSubnetId`. The `azure.privatedns.Zone` should end with suffix `.mysql.database.azure.com`.
  late final pulumi.Output<String?> privateDnsZoneId;
  /// Whether approved public traffic is allowed through the firewall to this server. Possible values are `Enabled` and `Disabled`.
  ///
  /// &gt; **Note:** `publicNetworkAccess` is automatically set to `Disabled` if the server is created with VNet Integration (i.e. values are provided for `delegatedSubnetId` and `privateDnsZoneId`").
  late final pulumi.Output<String> publicNetworkAccess;
  late final pulumi.Output<bool> publicNetworkAccessEnabled;
  /// The maximum number of replicas that a primary MySQL Flexible Server can have.
  late final pulumi.Output<int> replicaCapacity;
  /// The replication role. Possible value is `None`.
  ///
  /// &gt; **Note:** The `replicationRole` cannot be set while creating and only can be updated from `Replica` to `None`.
  late final pulumi.Output<String> replicationRole;
  /// The name of the Resource Group where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The SKU Name for the MySQL Flexible Server.
  ///
  /// &gt; **Note:** `skuName` should start with SKU tier `B (Burstable)`, `GP (General Purpose)`, `MO (Memory Optimized)` like `B_Standard_B1ms`.
  late final pulumi.Output<String> skuName;
  /// The resource ID of the source MySQL Flexible Server to be restored. Required when `createMode` is `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created.
  ///
  /// &gt; **Note:** The replica server is always created in the same resource group and subscription as the source server.
  late final pulumi.Output<String?> sourceServerId;
  /// A `storage` block as defined below.
  late final pulumi.Output<FlexibleServerStorage> storage;
  /// A mapping of tags which should be assigned to the MySQL Flexible Server.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The version of the MySQL Flexible Server to use. Possible values are `5.7`, `8.0.21` and `8.4`.
  late final pulumi.Output<String> version;
  /// Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are `1`, `2` and `3`.
  ///
  /// &gt; **Note:** Azure will automatically assign an Availability Zone if one is not specified. If the MySQL Flexible Server fails-over to the Standby Availability Zone, the `zone` will be updated to reflect the current Primary Availability Zone. You can use Terraform's `ignoreChanges` functionality to ignore changes to the `zone` and `high_availability[0].standby_availability_zone` fields should you wish for Terraform to not migrate the MySQL Flexible Server back to it's primary Availability Zone after a fail-over.
  ///
  /// &gt; **Note:** The Availability Zones available depend on the Azure Region that the MySQL Flexible Server is being deployed into - see [the Azure Availability Zones documentation](https://azure.microsoft.com/global-infrastructure/geographies/#geographies) for more information on which Availability Zones are available in each Azure Region.
  late final pulumi.Output<String> zone;

  /// Creates a new [FlexibleServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlexibleServer]. {@macro pulumi_mysql_flexible_server_flexible_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlexibleServer(
    String name, {
    FlexibleServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mysql/flexibleServer:FlexibleServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorLogin = registerOutput<String>('administratorLogin');
    administratorPassword = registerOutput<String?>('administratorPassword');
    administratorPasswordWoVersion = registerOutput<int?>('administratorPasswordWoVersion');
    backupRetentionDays = registerOutput<int?>('backupRetentionDays');
    createMode = registerOutput<String?>('createMode');
    customerManagedKey = registerOutput<FlexibleServerCustomerManagedKey?>('customerManagedKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlexibleServerCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    delegatedSubnetId = registerOutput<String?>('delegatedSubnetId');
    fqdn = registerOutput<String>('fqdn');
    geoRedundantBackupEnabled = registerOutput<bool?>('geoRedundantBackupEnabled');
    highAvailability = registerOutput<FlexibleServerHighAvailability?>('highAvailability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlexibleServerHighAvailability.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<FlexibleServerIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlexibleServerIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    maintenanceWindow = registerOutput<FlexibleServerMaintenanceWindow?>('maintenanceWindow', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlexibleServerMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    pointInTimeRestoreTimeInUtc = registerOutput<String?>('pointInTimeRestoreTimeInUtc');
    privateDnsZoneId = registerOutput<String?>('privateDnsZoneId');
    publicNetworkAccess = registerOutput<String>('publicNetworkAccess');
    publicNetworkAccessEnabled = registerOutput<bool>('publicNetworkAccessEnabled');
    replicaCapacity = registerOutput<int>('replicaCapacity');
    replicationRole = registerOutput<String>('replicationRole');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    sourceServerId = registerOutput<String?>('sourceServerId');
    storage = registerOutput<FlexibleServerStorage>('storage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlexibleServerStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    version = registerOutput<String>('version');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [FlexibleServer] resource's state with the given [name] and [id].
  static FlexibleServer get(
    String name,
    pulumi.Input<String> id, {
    FlexibleServerState? state,
  }) {
    return FlexibleServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FlexibleServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mysql/flexibleServer:FlexibleServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorLogin = registerOutput<String>('administratorLogin');
    administratorPassword = registerOutput<String?>('administratorPassword');
    administratorPasswordWoVersion = registerOutput<int?>('administratorPasswordWoVersion');
    backupRetentionDays = registerOutput<int?>('backupRetentionDays');
    createMode = registerOutput<String?>('createMode');
    customerManagedKey = registerOutput<FlexibleServerCustomerManagedKey?>('customerManagedKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlexibleServerCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    delegatedSubnetId = registerOutput<String?>('delegatedSubnetId');
    fqdn = registerOutput<String>('fqdn');
    geoRedundantBackupEnabled = registerOutput<bool?>('geoRedundantBackupEnabled');
    highAvailability = registerOutput<FlexibleServerHighAvailability?>('highAvailability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlexibleServerHighAvailability.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<FlexibleServerIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlexibleServerIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    maintenanceWindow = registerOutput<FlexibleServerMaintenanceWindow?>('maintenanceWindow', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlexibleServerMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    pointInTimeRestoreTimeInUtc = registerOutput<String?>('pointInTimeRestoreTimeInUtc');
    privateDnsZoneId = registerOutput<String?>('privateDnsZoneId');
    publicNetworkAccess = registerOutput<String>('publicNetworkAccess');
    publicNetworkAccessEnabled = registerOutput<bool>('publicNetworkAccessEnabled');
    replicaCapacity = registerOutput<int>('replicaCapacity');
    replicationRole = registerOutput<String>('replicationRole');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    sourceServerId = registerOutput<String?>('sourceServerId');
    storage = registerOutput<FlexibleServerStorage>('storage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlexibleServerStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    version = registerOutput<String>('version');
    zone = registerOutput<String>('zone');
  }
}
