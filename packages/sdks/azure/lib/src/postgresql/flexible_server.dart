import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_server_args.dart';
import 'flexible_server_authentication.dart';
import 'flexible_server_cluster.dart';
import 'flexible_server_customer_managed_key.dart';
import 'flexible_server_high_availability.dart';
import 'flexible_server_identity.dart';
import 'flexible_server_maintenance_window.dart';
import 'flexible_server_state.dart';

/// Manages a PostgreSQL Flexible Server.
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
///             name: "Microsoft.DBforPostgreSQL/flexibleServers",
///             actions: ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }],
/// });
/// const exampleZone = new azure.privatedns.Zone("example", {
///     name: "example.postgres.database.azure.com",
///     resourceGroupName: example.name,
/// });
/// const exampleZoneVirtualNetworkLink = new azure.privatedns.ZoneVirtualNetworkLink("example", {
///     name: "exampleVnetZone.com",
///     privateDnsZoneName: exampleZone.name,
///     virtualNetworkId: exampleVirtualNetwork.id,
///     resourceGroupName: example.name,
/// }, {
///     dependsOn: [exampleSubnet],
/// });
/// const exampleFlexibleServer = new azure.postgresql.FlexibleServer("example", {
///     name: "example-psqlflexibleserver",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12",
///     delegatedSubnetId: exampleSubnet.id,
///     privateDnsZoneId: exampleZone.id,
///     publicNetworkAccessEnabled: false,
///     administratorLogin: "psqladmin",
///     administratorPassword: "H@Sh1CoR3!",
///     zone: "1",
///     storageMb: 32768,
///     storageTier: "P4",
///     skuName: "B_Standard_B1ms",
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
///             "name": "Microsoft.DBforPostgreSQL/flexibleServers",
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }])
/// example_zone = azure.privatedns.Zone("example",
///     name="example.postgres.database.azure.com",
///     resource_group_name=example.name)
/// example_zone_virtual_network_link = azure.privatedns.ZoneVirtualNetworkLink("example",
///     name="exampleVnetZone.com",
///     private_dns_zone_name=example_zone.name,
///     virtual_network_id=example_virtual_network.id,
///     resource_group_name=example.name,
///     opts = pulumi.ResourceOptions(depends_on=[example_subnet]))
/// example_flexible_server = azure.postgresql.FlexibleServer("example",
///     name="example-psqlflexibleserver",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12",
///     delegated_subnet_id=example_subnet.id,
///     private_dns_zone_id=example_zone.id,
///     public_network_access_enabled=False,
///     administrator_login="psqladmin",
///     administrator_password="H@Sh1CoR3!",
///     zone="1",
///     storage_mb=32768,
///     storage_tier="P4",
///     sku_name="B_Standard_B1ms",
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
///                     Name = "Microsoft.DBforPostgreSQL/flexibleServers",
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
///         Name = "example.postgres.database.azure.com",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleZoneVirtualNetworkLink = new Azure.PrivateDns.ZoneVirtualNetworkLink("example", new()
///     {
///         Name = "exampleVnetZone.com",
///         PrivateDnsZoneName = exampleZone.Name,
///         VirtualNetworkId = exampleVirtualNetwork.Id,
///         ResourceGroupName = example.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleSubnet,
///         },
///     });
///
///     var exampleFlexibleServer = new Azure.PostgreSql.FlexibleServer("example", new()
///     {
///         Name = "example-psqlflexibleserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12",
///         DelegatedSubnetId = exampleSubnet.Id,
///         PrivateDnsZoneId = exampleZone.Id,
///         PublicNetworkAccessEnabled = false,
///         AdministratorLogin = "psqladmin",
///         AdministratorPassword = "H@Sh1CoR3!",
///         Zone = "1",
///         StorageMb = 32768,
///         StorageTier = "P4",
///         SkuName = "B_Standard_B1ms",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/postgresql"
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
/// 						Name: pulumi.String("Microsoft.DBforPostgreSQL/flexibleServers"),
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
/// 			Name:              pulumi.String("example.postgres.database.azure.com"),
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
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleSubnet,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewFlexibleServer(ctx, "example", &postgresql.FlexibleServerArgs{
/// 			Name:                       pulumi.String("example-psqlflexibleserver"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    pulumi.String("12"),
/// 			DelegatedSubnetId:          exampleSubnet.ID(),
/// 			PrivateDnsZoneId:           exampleZone.ID(),
/// 			PublicNetworkAccessEnabled: pulumi.Bool(false),
/// 			AdministratorLogin:         pulumi.String("psqladmin"),
/// 			AdministratorPassword:      pulumi.String("H@Sh1CoR3!"),
/// 			Zone:                       pulumi.String("1"),
/// 			StorageMb:                  pulumi.Int(32768),
/// 			StorageTier:                pulumi.String("P4"),
/// 			SkuName:                    pulumi.String("B_Standard_B1ms"),
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
/// import com.pulumi.azure.postgresql.FlexibleServer;
/// import com.pulumi.azure.postgresql.FlexibleServerArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///                     .name("Microsoft.DBforPostgreSQL/flexibleServers")
///                     .actions("Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("example.postgres.database.azure.com")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleZoneVirtualNetworkLink = new ZoneVirtualNetworkLink("exampleZoneVirtualNetworkLink", ZoneVirtualNetworkLinkArgs.builder()
///             .name("exampleVnetZone.com")
///             .privateDnsZoneName(exampleZone.name())
///             .virtualNetworkId(exampleVirtualNetwork.id())
///             .resourceGroupName(example.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleSubnet)
///                 .build());
///
///         var exampleFlexibleServer = new FlexibleServer("exampleFlexibleServer", FlexibleServerArgs.builder()
///             .name("example-psqlflexibleserver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12")
///             .delegatedSubnetId(exampleSubnet.id())
///             .privateDnsZoneId(exampleZone.id())
///             .publicNetworkAccessEnabled(false)
///             .administratorLogin("psqladmin")
///             .administratorPassword("H@Sh1CoR3!")
///             .zone("1")
///             .storageMb(32768)
///             .storageTier("P4")
///             .skuName("B_Standard_B1ms")
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
///             name: Microsoft.DBforPostgreSQL/flexibleServers
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   exampleZone:
///     type: azure:privatedns:Zone
///     name: example
///     properties:
///       name: example.postgres.database.azure.com
///       resourceGroupName: ${example.name}
///   exampleZoneVirtualNetworkLink:
///     type: azure:privatedns:ZoneVirtualNetworkLink
///     name: example
///     properties:
///       name: exampleVnetZone.com
///       privateDnsZoneName: ${exampleZone.name}
///       virtualNetworkId: ${exampleVirtualNetwork.id}
///       resourceGroupName: ${example.name}
///     options:
///       dependsOn:
///         - ${exampleSubnet}
///   exampleFlexibleServer:
///     type: azure:postgresql:FlexibleServer
///     name: example
///     properties:
///       name: example-psqlflexibleserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12'
///       delegatedSubnetId: ${exampleSubnet.id}
///       privateDnsZoneId: ${exampleZone.id}
///       publicNetworkAccessEnabled: false
///       administratorLogin: psqladmin
///       administratorPassword: H@Sh1CoR3!
///       zone: '1'
///       storageMb: 32768
///       storageTier: P4
///       skuName: B_Standard_B1ms
///     options:
///       dependsOn:
///         - ${exampleZoneVirtualNetworkLink}
/// ```
///
///
/// ## `storage_tier` defaults based on `storage_mb`
///
/// | `storage_mb` | GiB   | TiB | Default | Supported `storage_tier`'s           | Provisioned `IOPS`  |
/// |:------------:|:-----:|:---:|:-------:|:------------------------------------:|:-------------------:|
/// | 32768        | 32    |  -  | P4      | P4, P6, P10, P15, P20, P30, P40, P50 | 120                 |
/// | 65536        | 64    |  -  | P6      | P6, P10, P15, P20, P30, P40, P50     | 240                 |
/// | 131072       | 128   |  -  | P10     | P10, P15, P20, P30, P40, P50         | 500                 |
/// | 262144       | 256   |  -  | P15     | P15, P20, P30, P40, P50              | 1,100               |
/// | 524288       | 512   |  -  | P20     | P20, P30, P40, P50                   | 2,300               |
/// | 1048576      | 1024  |  1  | P30     | P30, P40, P50                        | 5,000               |
/// | 2097152      | 2048  |  2  | P40     | P40, P50                             | 7,500               |
/// | 4193280      | 4095  |  4  | P50     | P50                                  | 7,500               |
/// | 4194304      | 4096  |  4  | P50     | P50                                  | 7,500               |
/// | 8388608      | 8192  |  8  | P60     | P60, P70                             | 16,000              |
/// | 16777216     | 16384 |  16 | P70     | P70, P80                             | 18,000              |
/// | 33553408     | 32767 |  32 | P80     | P80                                  | 20,000              |
///
/// &gt; **Note:** Host Caching (ReadOnly and Read/Write) is supported on disk sizes less than 4194304 MiB. This means any disk that is provisioned up to 4193280 MiB can take advantage of Host Caching. Host caching is not supported for disk sizes larger than 4193280 MiB. For example, a P50 premium disk provisioned at 4193280 GiB can take advantage of Host caching while a P50 disk provisioned at 4194304 MiB cannot. Moving from a smaller disk size to a larger disk size, greater than 4193280 MiB, will cause the disk to lose the disk caching ability.
///
/// ---
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2025-08-01
///
/// ## Import
///
/// PostgreSQL Flexible Servers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:postgresql/flexibleServer:FlexibleServer example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.DBforPostgreSQL/flexibleServers/server1
/// ```
class FlexibleServer extends pulumi.CustomResource {
  /// The Administrator login for the PostgreSQL Flexible Server. Required when `create_mode` is `Default` and `authentication.password_auth_enabled` is `true`.
  ///
  /// &gt; **Note:** Once `administrator_login` is specified, changing this forces a new PostgreSQL Flexible Server to be created.
  ///
  /// &gt; **Note:** To create with `administrator_login` specified or update with it first specified , `authentication.password_auth_enabled` must be set to `true`.
  late final pulumi.Output<String> administratorLogin;
  /// The Password associated with the `administrator_login` for the PostgreSQL Flexible Server.
  late final pulumi.Output<String?> administratorPassword;
  /// An integer value used to trigger an update for `administrator_password_wo`. This property should be incremented when updating `administrator_password_wo`.
  late final pulumi.Output<int?> administratorPasswordWoVersion;
  /// An `authentication` block as defined below.
  late final pulumi.Output<FlexibleServerAuthentication> authentication;
  /// Is the storage auto grow for PostgreSQL Flexible Server enabled? Defaults to `false`.
  late final pulumi.Output<bool?> autoGrowEnabled;
  /// The backup retention days for the PostgreSQL Flexible Server. Possible values are between `7` and `35` days.
  late final pulumi.Output<int> backupRetentionDays;
  /// A `cluster` block as defined below.
  late final pulumi.Output<FlexibleServerCluster?> cluster;
  /// The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `GeoRestore`, `PointInTimeRestore`, `Replica`, `ReviveDropped` and `Update`.
  late final pulumi.Output<String?> createMode;
  /// A `customer_managed_key` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<FlexibleServerCustomerManagedKey?> customerManagedKey;
  /// The ID of the virtual network subnet to create the PostgreSQL Flexible Server. The provided subnet should not have any other resource deployed in it and this subnet will be delegated to the PostgreSQL Flexible Server, if not already delegated. Changing this forces a new PostgreSQL Flexible Server to be created.
  late final pulumi.Output<String?> delegatedSubnetId;
  /// The FQDN of the PostgreSQL Flexible Server.
  late final pulumi.Output<String> fqdn;
  /// Is Geo-Redundant backup enabled on the PostgreSQL Flexible Server. Defaults to `false`. Changing this forces a new PostgreSQL Flexible Server to be created.
  late final pulumi.Output<bool?> geoRedundantBackupEnabled;
  /// A `high_availability` block as defined below.
  late final pulumi.Output<FlexibleServerHighAvailability?> highAvailability;
  /// An `identity` block as defined below.
  late final pulumi.Output<FlexibleServerIdentity?> identity;
  /// The Azure Region where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created.
  late final pulumi.Output<String> location;
  /// A `maintenance_window` block as defined below.
  late final pulumi.Output<FlexibleServerMaintenanceWindow?> maintenanceWindow;
  /// The name which should be used for this PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created.
  ///
  /// &gt; **Note:** This must be unique across the entire Azure service, not just within the resource group.
  late final pulumi.Output<String> name;
  /// The point in time to restore from `source_server_id` when `create_mode` is `GeoRestore`, `PointInTimeRestore`. Changing this forces a new PostgreSQL Flexible Server to be created.
  late final pulumi.Output<String?> pointInTimeRestoreTimeInUtc;
  /// The ID of the private DNS zone to create the PostgreSQL Flexible Server.
  ///
  /// &gt; **Note:** There will be a breaking change from upstream service at 15th July 2021, the `private_dns_zone_id` will be required when setting a `delegated_subnet_id`. For existing flexible servers who don't want to be recreated, you need to provide the `private_dns_zone_id` to the service team to manually migrate to the specified private DNS zone. The `azure.privatedns.Zone` should end with suffix `.postgres.database.azure.com`.
  late final pulumi.Output<String> privateDnsZoneId;
  /// Specifies whether this PostgreSQL Flexible Server is publicly accessible. Defaults to `true`.
  ///
  /// &gt; **Note:** `public_network_access_enabled` must be set to `false` when `delegated_subnet_id` and `private_dns_zone_id` have a value.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The replication role for the PostgreSQL Flexible Server. Possible value is `None`.
  ///
  /// &gt; **Note:** The `replication_role` cannot be set while creating and only can be updated to `None` for replica server.
  late final pulumi.Output<String?> replicationRole;
  /// The name of the Resource Group where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the `tier` + `name` pattern (e.g. `B_Standard_B1ms`, `GP_Standard_D2s_v3`, `MO_Standard_E4s_v3`).
  late final pulumi.Output<String> skuName;
  /// The resource ID of the source PostgreSQL Flexible Server to be restored. Required when `create_mode` is `GeoRestore`, `PointInTimeRestore` or `Replica`. Changing this forces a new PostgreSQL Flexible Server to be created.
  late final pulumi.Output<String?> sourceServerId;
  /// The max storage allowed for the PostgreSQL Flexible Server. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4193280`, `4194304`, `8388608`, `16777216` and `33553408`.
  ///
  /// &gt; **Note:** If the `storage_mb` field is undefined on the initial deployment of the PostgreSQL Flexible Server resource it will default to `32768`. If the `storage_mb` field has been defined and then removed, the `storage_mb` field will retain the previously defined value.
  ///
  /// &gt; **Note:** The `storage_mb` can only be scaled up, for example, you can scale the `storage_mb` from `32768` to `65536`, but not from `65536` to `32768`. Scaling down `storage_mb` forces a new PostgreSQL Flexible Server to be created.
  late final pulumi.Output<int> storageMb;
  /// The name of storage performance tier for IOPS of the PostgreSQL Flexible Server. Possible values are `P4`, `P6`, `P10`, `P15`,`P20`, `P30`,`P40`, `P50`,`P60`, `P70` or `P80`. Default value is dependent on the `storage_mb` value. Please see the `storage_tier` defaults based on `storage_mb` table below.
  ///
  /// &gt; **Note:** The `storage_tier` can be scaled once every 12 hours, this restriction is in place to ensure stability and performance after any changes to your PostgreSQL Flexible Server's configuration.
  late final pulumi.Output<String> storageTier;
  /// A mapping of tags which should be assigned to the PostgreSQL Flexible Server.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The version of PostgreSQL Flexible Server to use. Possible values are `11`,`12`, `13`, `14`, `15`, `16`, `17`, and `18`. Required when `create_mode` is `Default`.
  ///
  /// &gt; **Note:** Downgrading `version` isn't supported and will force a new PostgreSQL Flexible Server to be created.
  ///
  /// &gt; **Note:** In-place version updates are irreversible and may cause downtime for the PostgreSQL Flexible Server, determined by the size of the instance.
  ///
  /// &gt; **Note:** Major version upgrades are not supported when `cluster` is specified.
  late final pulumi.Output<String> version;
  /// Specifies the Availability Zone in which the PostgreSQL Flexible Server should be located.
  ///
  /// &gt; **Note:** Azure will automatically assign an Availability Zone if one is not specified. If the PostgreSQL Flexible Server fails-over to the Standby Availability Zone, the `zone` will be updated to reflect the current Primary Availability Zone. You can use Terraform's `ignore_changes` functionality to ignore changes to the `zone` and `high_availability[0].standby_availability_zone` fields should you wish for Terraform to not migrate the PostgreSQL Flexible Server back to it's primary Availability Zone after a fail-over.
  ///
  /// &gt; **Note:** The Availability Zones available depend on the Azure Region that the PostgreSQL Flexible Server is being deployed into - see [the Azure Availability Zones documentation](https://azure.microsoft.com/global-infrastructure/geographies/#geographies) for more information on which Availability Zones are available in each Azure Region.
  late final pulumi.Output<String?> zone;

  /// Creates a new [FlexibleServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlexibleServer]. {@macro pulumi_postgresql_flexible_server_flexible_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlexibleServer(
    String name, {
    FlexibleServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/flexibleServer:FlexibleServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorLogin = registerOutput<String>('administratorLogin');
    administratorPassword = registerOutput<String?>('administratorPassword');
    administratorPasswordWoVersion = registerOutput<int?>('administratorPasswordWoVersion');
    authentication = registerOutput<FlexibleServerAuthentication>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlexibleServerAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoGrowEnabled = registerOutput<bool?>('autoGrowEnabled');
    backupRetentionDays = registerOutput<int>('backupRetentionDays');
    cluster = registerOutput<FlexibleServerCluster?>('cluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlexibleServerCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
    privateDnsZoneId = registerOutput<String>('privateDnsZoneId');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    replicationRole = registerOutput<String?>('replicationRole');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    sourceServerId = registerOutput<String?>('sourceServerId');
    storageMb = registerOutput<int>('storageMb');
    storageTier = registerOutput<String>('storageTier');
    tags = registerOutput<Map<String, String>?>('tags');
    version = registerOutput<String>('version');
    zone = registerOutput<String?>('zone');
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
          'azure:postgresql/flexibleServer:FlexibleServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorLogin = registerOutput<String>('administratorLogin');
    administratorPassword = registerOutput<String?>('administratorPassword');
    administratorPasswordWoVersion = registerOutput<int?>('administratorPasswordWoVersion');
    authentication = registerOutput<FlexibleServerAuthentication>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlexibleServerAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoGrowEnabled = registerOutput<bool?>('autoGrowEnabled');
    backupRetentionDays = registerOutput<int>('backupRetentionDays');
    cluster = registerOutput<FlexibleServerCluster?>('cluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlexibleServerCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
    privateDnsZoneId = registerOutput<String>('privateDnsZoneId');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    replicationRole = registerOutput<String?>('replicationRole');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    sourceServerId = registerOutput<String?>('sourceServerId');
    storageMb = registerOutput<int>('storageMb');
    storageTier = registerOutput<String>('storageTier');
    tags = registerOutput<Map<String, String>?>('tags');
    version = registerOutput<String>('version');
    zone = registerOutput<String?>('zone');
  }
}
