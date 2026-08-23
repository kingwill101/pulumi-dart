import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_args.dart';
import 'database_instance_clone.dart';
import 'database_instance_point_in_time_restore_context.dart';
import 'database_instance_replica_configuration.dart';
import 'database_instance_replication_cluster.dart';
import 'database_instance_restore_backup_context.dart';
import 'database_instance_settings.dart';
import 'database_instance_state.dart';

/// Creates a new Google SQL Database Instance. For more information, see the [official documentation](https://cloud.google.com/sql/docs/mysql/create-instance),
/// or the [JSON API](https://cloud.google.com/sql/docs/admin-api/v1beta4/instances).
///
/// &gt; **NOTE on `gcp.sql.DatabaseInstance`:** - Second-generation instances include a
/// default 'root'@'%' user with no password. This user will be deleted by the provider on
/// instance creation. You should use `gcp.sql.User` to define a custom user with
/// a restricted host and strong password.
///
/// &gt; **Note**: On newer versions of the provider, you must explicitly set `deletion_protection=false`
/// (and run `pulumi update` to write the field to state) in order to destroy an instance.
/// It is recommended to not set this field (or set it to true) until you're ready to destroy the instance and its databases.
///
/// ## Example Usage
///
/// ### SQL Second Generation Instance
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.sql.DatabaseInstance("main", {
///     name: "main-instance",
///     databaseVersion: "POSTGRES_15",
///     region: "us-central1",
///     settings: {
///         tier: "db-f1-micro",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.sql.DatabaseInstance("main",
///     name="main-instance",
///     database_version="POSTGRES_15",
///     region="us-central1",
///     settings={
///         "tier": "db-f1-micro",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Gcp.Sql.DatabaseInstance("main", new()
///     {
///         Name = "main-instance",
///         DatabaseVersion = "POSTGRES_15",
///         Region = "us-central1",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("main-instance"),
/// 			DatabaseVersion: pulumi.String("POSTGRES_15"),
/// 			Region:          pulumi.String("us-central1"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "main" {
///   name             = "main-instance"
///   database_version = "POSTGRES_15"
///   region           = "us-central1"
///   settings = {
///     tier = "db-f1-micro"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
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
///         var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
///             .name("main-instance")
///             .databaseVersion("POSTGRES_15")
///             .region("us-central1")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: main-instance
///       databaseVersion: POSTGRES_15
///       region: us-central1
///       settings:
///         tier: db-f1-micro
/// ```
///
///
/// ### Granular restriction of network access
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const apps: gcp.compute.Instance[] = [];
/// for (let range = 0; range < 8; range++) {
///     apps.push(new gcp.compute.Instance(`apps-${range}`, {
///         networkInterfaces: [{
///             accessConfigs: [{}],
///             network: "default",
///         }],
///         name: `apps-${range + 1}`,
///         machineType: "f1-micro",
///         bootDisk: {
///             initializeParams: {
///                 image: "ubuntu-os-cloud/ubuntu-1804-lts",
///             },
///         },
///     }));
/// }
/// const dbNameSuffix = new random.index.Id("db_name_suffix", {byteLength: 4});
/// const onprem = [
///     "192.168.1.2",
///     "192.168.2.3",
/// ];
/// const postgres = new gcp.sql.DatabaseInstance("postgres", {
///     name: `postgres-instance-${dbNameSuffix.hex}`,
///     databaseVersion: "POSTGRES_15",
///     settings: {
///         tier: "db-f1-micro",
///         ipConfiguration: {
///             authorizedNetworks: Object.entries(apps).sort().map(([k, v]) => ({key: k, value: v})).apply(entries => entries.map(entry => ({
///                 name: entry.value.name,
///                 value: entry.value.networkInterface[0].accessConfig[0].natIp,
///             }))),
///             authorizedNetworks: onprem.map((v, k) => ({key: k, value: v})).map(entry2 => ({
///                 name: `onprem-${entry2.key}`,
///                 value: entry2.value,
///             })),
///         },
///     },
/// });
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apps = new List<Gcp.Compute.Instance>();
///     for (var rangeIndex = 0; rangeIndex < 8; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         apps.Add(new Gcp.Compute.Instance($"apps-{range.Value}", new()
///         {
///             NetworkInterfaces = new[]
///             {
///                 new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///                 {
///                     AccessConfigs = new[]
///                     {
///                         null,
///                     },
///                     Network = "default",
///                 },
///             },
///             Name = $"apps-{range.Value + 1}",
///             MachineType = "f1-micro",
///             BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///             {
///                 InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///                 {
///                     Image = "ubuntu-os-cloud/ubuntu-1804-lts",
///                 },
///             },
///         }));
///     }
///     var dbNameSuffix = new Random.Id("db_name_suffix", new()
///     {
///         ByteLength = 4,
///     });
///
///     var onprem = new[]
///     {
///         "192.168.1.2",
///         "192.168.2.3",
///     };
///
///     var postgres = new Gcp.Sql.DatabaseInstance("postgres", new()
///     {
///         Name = $"postgres-instance-{dbNameSuffix.Hex}",
///         DatabaseVersion = "POSTGRES_15",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
///             {
///                 AuthorizedNetworks = .Apply(entries => entries.Select(entry =>
///                 {
///                     return
///                     {
///                         { "name", entry.Value.Name },
///                         { "value", entry.Value.NetworkInterface[0].AccessConfig[0].NatIp },
///                     };
///                 }).ToList()),
///                 AuthorizedNetworks = onprem.Select((v, k) => new { Key = k, Value = v }).Select(entry2 =>
///                 {
///                     return new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
///                     {
///                         Name = $"onprem-{entry2.Key}",
///                         Value = entry2.Value,
///                     };
///                 }).ToList(),
///             },
///         },
///     });
///
/// });
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     random = {
///       source = "pulumi/random"
///     }
///   }
/// }
///
/// resource "gcp_compute_instance" "apps" {
///   count = 8
///   network_interfaces {
///     access_configs {
///     }
///     network = "default"
///   }
///   name         ="apps-${count.index+1}"
///   machine_type = "f1-micro"
///   boot_disk = {
///     initialize_params = {
///       image = "ubuntu-os-cloud/ubuntu-1804-lts"
///     }
///   }
/// }
/// resource "random_id" "db_name_suffix" {
///   byte_length = 4
/// }
/// resource "gcp_sql_databaseinstance" "postgres" {
///   name             ="postgres-instance-${random_id.db_name_suffix.hex}"
///   database_version = "POSTGRES_15"
///   settings = {
///     tier = "db-f1-micro"
///     ip_configuration = {
///       authorized_networks = [for entry in entries(gcp_compute_instance.apps) : {
///         "name"  = entry.value.name
///         "value" = entry.value.networkInterface[0].accessConfig[0].natIp
///       } ]
///       authorized_networks = [for entry2 in entries(local.onprem) : {
///         "name"  ="onprem-${entry2.key}"
///         "value" = entry2.value
///       } ]
///     }
///   }
/// }
/// locals {
///   onprem = ["192.168.1.2", "192.168.2.3"]
/// }
/// ```
///
///
/// ### Private IP Instance
/// &gt; **NOTE:** For private IP instance setup, note that the `gcp.sql.DatabaseInstance` does not actually interpolate values from `gcp.servicenetworking.Connection`. You must explicitly add a `dependsOn`reference as shown below.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const privateNetwork = new gcp.compute.Network("private_network", {name: "private-network"});
/// const privateIpAddress = new gcp.compute.GlobalAddress("private_ip_address", {
///     name: "private-ip-address",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: privateNetwork.id,
/// });
/// const privateVpcConnection = new gcp.servicenetworking.Connection("private_vpc_connection", {
///     network: privateNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [privateIpAddress.name],
/// });
/// const dbNameSuffix = new random.index.Id("db_name_suffix", {byteLength: 4});
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: `private-instance-${dbNameSuffix.hex}`,
///     region: "us-central1",
///     databaseVersion: "MYSQL_5_7",
///     settings: {
///         tier: "db-f1-micro",
///         ipConfiguration: {
///             ipv4Enabled: false,
///             privateNetwork: privateNetwork.selfLink,
///             enablePrivatePathForGoogleCloudServices: true,
///         },
///     },
/// }, {
///     dependsOn: [privateVpcConnection],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// private_network = gcp.compute.Network("private_network", name="private-network")
/// private_ip_address = gcp.compute.GlobalAddress("private_ip_address",
///     name="private-ip-address",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=private_network.id)
/// private_vpc_connection = gcp.servicenetworking.Connection("private_vpc_connection",
///     network=private_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[private_ip_address.name])
/// db_name_suffix = random.Id("db_name_suffix", byte_length=4)
/// instance = gcp.sql.DatabaseInstance("instance",
///     name=f"private-instance-{db_name_suffix['hex']}",
///     region="us-central1",
///     database_version="MYSQL_5_7",
///     settings={
///         "tier": "db-f1-micro",
///         "ip_configuration": {
///             "ipv4_enabled": False,
///             "private_network": private_network.self_link,
///             "enable_private_path_for_google_cloud_services": True,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[private_vpc_connection]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateNetwork = new Gcp.Compute.Network("private_network", new()
///     {
///         Name = "private-network",
///     });
///
///     var privateIpAddress = new Gcp.Compute.GlobalAddress("private_ip_address", new()
///     {
///         Name = "private-ip-address",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = privateNetwork.Id,
///     });
///
///     var privateVpcConnection = new Gcp.ServiceNetworking.Connection("private_vpc_connection", new()
///     {
///         Network = privateNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             privateIpAddress.Name,
///         },
///     });
///
///     var dbNameSuffix = new Random.Id("db_name_suffix", new()
///     {
///         ByteLength = 4,
///     });
///
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = $"private-instance-{dbNameSuffix.Hex}",
///         Region = "us-central1",
///         DatabaseVersion = "MYSQL_5_7",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
///             {
///                 Ipv4Enabled = false,
///                 PrivateNetwork = privateNetwork.SelfLink,
///                 EnablePrivatePathForGoogleCloudServices = true,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             privateVpcConnection,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		privateNetwork, err := compute.NewNetwork(ctx, "private_network", &compute.NetworkArgs{
/// 			Name: pulumi.String("private-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateIpAddress, err := compute.NewGlobalAddress(ctx, "private_ip_address", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("private-ip-address"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      privateNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateVpcConnection, err := servicenetworking.NewConnection(ctx, "private_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: privateNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				privateIpAddress.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dbNameSuffix, err := random.NewId(ctx, "db_name_suffix", &random.IdArgs{
/// 			ByteLength: 4,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.Sprintf("private-instance-%v", dbNameSuffix.Hex),
/// 			Region:          pulumi.String("us-central1"),
/// 			DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// 					Ipv4Enabled:                             pulumi.Bool(false),
/// 					PrivateNetwork:                          privateNetwork.SelfLink,
/// 					EnablePrivatePathForGoogleCloudServices: pulumi.Bool(true),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			privateVpcConnection,
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     random = {
///       source = "pulumi/random"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "private_network" {
///   name = "private-network"
/// }
/// resource "gcp_compute_globaladdress" "private_ip_address" {
///   name          = "private-ip-address"
///   purpose       = "VPC_PEERING"
///   address_type  = "INTERNAL"
///   prefix_length = 16
///   network       = gcp_compute_network.private_network.id
/// }
/// resource "gcp_servicenetworking_connection" "private_vpc_connection" {
///   network                 = gcp_compute_network.private_network.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.private_ip_address.name]
/// }
/// resource "random_id" "db_name_suffix" {
///   byte_length = 4
/// }
/// resource "gcp_sql_databaseinstance" "instance" {
///   depends_on       = [gcp_servicenetworking_connection.private_vpc_connection]
///   name             ="private-instance-${random_id.db_name_suffix.hex}"
///   region           = "us-central1"
///   database_version = "MYSQL_5_7"
///   settings = {
///     tier = "db-f1-micro"
///     ip_configuration = {
///       ipv4_enabled                                  = false
///       private_network                               = gcp_compute_network.private_network.self_link
///       enable_private_path_for_google_cloud_services = true
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
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
///         var privateNetwork = new Network("privateNetwork", NetworkArgs.builder()
///             .name("private-network")
///             .build());
///
///         var privateIpAddress = new GlobalAddress("privateIpAddress", GlobalAddressArgs.builder()
///             .name("private-ip-address")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(privateNetwork.id())
///             .build());
///
///         var privateVpcConnection = new Connection("privateVpcConnection", ConnectionArgs.builder()
///             .network(privateNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(privateIpAddress.name())
///             .build());
///
///         var dbNameSuffix = new Id("dbNameSuffix", IdArgs.builder()
///             .byteLength(4)
///             .build());
///
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name(String.format("private-instance-%s", dbNameSuffix.get("hex")))
///             .region("us-central1")
///             .databaseVersion("MYSQL_5_7")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
///                     .ipv4Enabled(false)
///                     .privateNetwork(privateNetwork.selfLink())
///                     .enablePrivatePathForGoogleCloudServices(true)
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(privateVpcConnection)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   privateNetwork:
///     type: gcp:compute:Network
///     name: private_network
///     properties:
///       name: private-network
///   privateIpAddress:
///     type: gcp:compute:GlobalAddress
///     name: private_ip_address
///     properties:
///       name: private-ip-address
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${privateNetwork.id}
///   privateVpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: private_vpc_connection
///     properties:
///       network: ${privateNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${privateIpAddress.name}
///   dbNameSuffix:
///     type: random:Id
///     name: db_name_suffix
///     properties:
///       byteLength: 4
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: private-instance-${dbNameSuffix.hex}
///       region: us-central1
///       databaseVersion: MYSQL_5_7
///       settings:
///         tier: db-f1-micro
///         ipConfiguration:
///           ipv4Enabled: false
///           privateNetwork: ${privateNetwork.selfLink}
///           enablePrivatePathForGoogleCloudServices: true
///     options:
///       dependsOn:
///         - ${privateVpcConnection}
/// ```
///
///
/// ### ENTERPRISE_PLUS Instance with dataCacheConfig
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.sql.DatabaseInstance("main", {
///     name: "enterprise-plus-main-instance",
///     databaseVersion: "MYSQL_8_0_31",
///     settings: {
///         tier: "db-perf-optimized-N-2",
///         edition: "ENTERPRISE_PLUS",
///         dataCacheConfig: {
///             dataCacheEnabled: true,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.sql.DatabaseInstance("main",
///     name="enterprise-plus-main-instance",
///     database_version="MYSQL_8_0_31",
///     settings={
///         "tier": "db-perf-optimized-N-2",
///         "edition": "ENTERPRISE_PLUS",
///         "data_cache_config": {
///             "data_cache_enabled": True,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Gcp.Sql.DatabaseInstance("main", new()
///     {
///         Name = "enterprise-plus-main-instance",
///         DatabaseVersion = "MYSQL_8_0_31",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-perf-optimized-N-2",
///             Edition = "ENTERPRISE_PLUS",
///             DataCacheConfig = new Gcp.Sql.Inputs.DatabaseInstanceSettingsDataCacheConfigArgs
///             {
///                 DataCacheEnabled = true,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("enterprise-plus-main-instance"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0_31"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier:    pulumi.String("db-perf-optimized-N-2"),
/// 				Edition: pulumi.String("ENTERPRISE_PLUS"),
/// 				DataCacheConfig: &sql.DatabaseInstanceSettingsDataCacheConfigArgs{
/// 					DataCacheEnabled: pulumi.Bool(true),
/// 				},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "main" {
///   name             = "enterprise-plus-main-instance"
///   database_version = "MYSQL_8_0_31"
///   settings = {
///     tier    = "db-perf-optimized-N-2"
///     edition = "ENTERPRISE_PLUS"
///     data_cache_config = {
///       data_cache_enabled = true
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsDataCacheConfigArgs;
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
///         var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
///             .name("enterprise-plus-main-instance")
///             .databaseVersion("MYSQL_8_0_31")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-perf-optimized-N-2")
///                 .edition("ENTERPRISE_PLUS")
///                 .dataCacheConfig(DatabaseInstanceSettingsDataCacheConfigArgs.builder()
///                     .dataCacheEnabled(true)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: enterprise-plus-main-instance
///       databaseVersion: MYSQL_8_0_31
///       settings:
///         tier: db-perf-optimized-N-2
///         edition: ENTERPRISE_PLUS
///         dataCacheConfig:
///           dataCacheEnabled: true
/// ```
///
///
/// ### Cloud SQL Instance with Managed Connection Pooling
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "mcp-enabled-main-instance",
///     region: "us-central1",
///     databaseVersion: "POSTGRES_16",
///     settings: {
///         tier: "db-perf-optimized-N-2",
///         edition: "ENTERPRISE_PLUS",
///         connectionPoolConfigs: [{
///             connectionPoolingEnabled: true,
///             flags: [{
///                 name: "max_client_connections",
///                 value: "1980",
///             }],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="mcp-enabled-main-instance",
///     region="us-central1",
///     database_version="POSTGRES_16",
///     settings={
///         "tier": "db-perf-optimized-N-2",
///         "edition": "ENTERPRISE_PLUS",
///         "connection_pool_configs": [{
///             "connection_pooling_enabled": True,
///             "flags": [{
///                 "name": "max_client_connections",
///                 "value": "1980",
///             }],
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "mcp-enabled-main-instance",
///         Region = "us-central1",
///         DatabaseVersion = "POSTGRES_16",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-perf-optimized-N-2",
///             Edition = "ENTERPRISE_PLUS",
///             ConnectionPoolConfigs = new[]
///             {
///                 new Gcp.Sql.Inputs.DatabaseInstanceSettingsConnectionPoolConfigArgs
///                 {
///                     ConnectionPoolingEnabled = true,
///                     Flags = new[]
///                     {
///                         new Gcp.Sql.Inputs.DatabaseInstanceSettingsConnectionPoolConfigFlagArgs
///                         {
///                             Name = "max_client_connections",
///                             Value = "1980",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("mcp-enabled-main-instance"),
/// 			Region:          pulumi.String("us-central1"),
/// 			DatabaseVersion: pulumi.String("POSTGRES_16"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier:    pulumi.String("db-perf-optimized-N-2"),
/// 				Edition: pulumi.String("ENTERPRISE_PLUS"),
/// 				ConnectionPoolConfigs: sql.DatabaseInstanceSettingsConnectionPoolConfigArray{
/// 					&sql.DatabaseInstanceSettingsConnectionPoolConfigArgs{
/// 						ConnectionPoolingEnabled: pulumi.Bool(true),
/// 						Flags: sql.DatabaseInstanceSettingsConnectionPoolConfigFlagArray{
/// 							&sql.DatabaseInstanceSettingsConnectionPoolConfigFlagArgs{
/// 								Name:  pulumi.String("max_client_connections"),
/// 								Value: pulumi.String("1980"),
/// 							},
/// 						},
/// 					},
/// 				},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "mcp-enabled-main-instance"
///   region           = "us-central1"
///   database_version = "POSTGRES_16"
///   settings = {
///     tier    = "db-perf-optimized-N-2"
///     edition = "ENTERPRISE_PLUS"
///     connection_pool_configs = [{
///       "connectionPoolingEnabled" = true
///       "flags" = [{
///         "name"  = "max_client_connections"
///         "value" = "1980"
///       }]
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsConnectionPoolConfigArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsConnectionPoolConfigFlagArgs;
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
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("mcp-enabled-main-instance")
///             .region("us-central1")
///             .databaseVersion("POSTGRES_16")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-perf-optimized-N-2")
///                 .edition("ENTERPRISE_PLUS")
///                 .connectionPoolConfigs(DatabaseInstanceSettingsConnectionPoolConfigArgs.builder()
///                     .connectionPoolingEnabled(true)
///                     .flags(DatabaseInstanceSettingsConnectionPoolConfigFlagArgs.builder()
///                         .name("max_client_connections")
///                         .value("1980")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: mcp-enabled-main-instance
///       region: us-central1
///       databaseVersion: POSTGRES_16
///       settings:
///         tier: db-perf-optimized-N-2
///         edition: ENTERPRISE_PLUS
///         connectionPoolConfigs:
///           - connectionPoolingEnabled: true
///             flags:
///               - name: max_client_connections
///                 value: '1980'
/// ```
///
///
/// ### Cloud SQL Instance with PSC connectivity
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.sql.DatabaseInstance("main", {
///     name: "psc-enabled-main-instance",
///     databaseVersion: "MYSQL_8_0",
///     settings: {
///         tier: "db-f1-micro",
///         ipConfiguration: {
///             pscConfigs: [{
///                 pscEnabled: true,
///                 allowedConsumerProjects: ["allowed-consumer-project-name"],
///             }],
///             ipv4Enabled: false,
///         },
///         backupConfiguration: {
///             enabled: true,
///             binaryLogEnabled: true,
///         },
///         availabilityType: "REGIONAL",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.sql.DatabaseInstance("main",
///     name="psc-enabled-main-instance",
///     database_version="MYSQL_8_0",
///     settings={
///         "tier": "db-f1-micro",
///         "ip_configuration": {
///             "psc_configs": [{
///                 "psc_enabled": True,
///                 "allowed_consumer_projects": ["allowed-consumer-project-name"],
///             }],
///             "ipv4_enabled": False,
///         },
///         "backup_configuration": {
///             "enabled": True,
///             "binary_log_enabled": True,
///         },
///         "availability_type": "REGIONAL",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Gcp.Sql.DatabaseInstance("main", new()
///     {
///         Name = "psc-enabled-main-instance",
///         DatabaseVersion = "MYSQL_8_0",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
///             {
///                 PscConfigs = new[]
///                 {
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationPscConfigArgs
///                     {
///                         PscEnabled = true,
///                         AllowedConsumerProjects = new[]
///                         {
///                             "allowed-consumer-project-name",
///                         },
///                     },
///                 },
///                 Ipv4Enabled = false,
///             },
///             BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
///             {
///                 Enabled = true,
///                 BinaryLogEnabled = true,
///             },
///             AvailabilityType = "REGIONAL",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("psc-enabled-main-instance"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// 					PscConfigs: sql.DatabaseInstanceSettingsIpConfigurationPscConfigArray{
/// 						&sql.DatabaseInstanceSettingsIpConfigurationPscConfigArgs{
/// 							PscEnabled: pulumi.Bool(true),
/// 							AllowedConsumerProjects: pulumi.StringArray{
/// 								pulumi.String("allowed-consumer-project-name"),
/// 							},
/// 						},
/// 					},
/// 					Ipv4Enabled: pulumi.Bool(false),
/// 				},
/// 				BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// 					Enabled:          pulumi.Bool(true),
/// 					BinaryLogEnabled: pulumi.Bool(true),
/// 				},
/// 				AvailabilityType: pulumi.String("REGIONAL"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "main" {
///   name             = "psc-enabled-main-instance"
///   database_version = "MYSQL_8_0"
///   settings = {
///     tier = "db-f1-micro"
///     ip_configuration = {
///       psc_configs = [{
///         "pscEnabled"              = true
///         "allowedConsumerProjects" = ["allowed-consumer-project-name"]
///       }]
///       ipv4_enabled = false
///     }
///     backup_configuration = {
///       enabled            = true
///       binary_log_enabled = true
///     }
///     availability_type = "REGIONAL"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationPscConfigArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
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
///         var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
///             .name("psc-enabled-main-instance")
///             .databaseVersion("MYSQL_8_0")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
///                     .pscConfigs(DatabaseInstanceSettingsIpConfigurationPscConfigArgs.builder()
///                         .pscEnabled(true)
///                         .allowedConsumerProjects("allowed-consumer-project-name")
///                         .build())
///                     .ipv4Enabled(false)
///                     .build())
///                 .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
///                     .enabled(true)
///                     .binaryLogEnabled(true)
///                     .build())
///                 .availabilityType("REGIONAL")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: psc-enabled-main-instance
///       databaseVersion: MYSQL_8_0
///       settings:
///         tier: db-f1-micro
///         ipConfiguration:
///           pscConfigs:
///             - pscEnabled: true
///               allowedConsumerProjects:
///                 - allowed-consumer-project-name
///           ipv4Enabled: false
///         backupConfiguration:
///           enabled: true
///           binaryLogEnabled: true
///         availabilityType: REGIONAL
/// ```
///
///
/// ### Cloud SQL Instance with PSC auto connections
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.sql.DatabaseInstance("main", {
///     name: "psc-enabled-main-instance",
///     databaseVersion: "MYSQL_8_0",
///     settings: {
///         tier: "db-f1-micro",
///         ipConfiguration: {
///             pscConfigs: [{
///                 pscEnabled: true,
///                 allowedConsumerProjects: ["allowed-consumer-project-name"],
///                 pscAutoConnections: [{
///                     consumerNetwork: "network-name",
///                     consumerServiceProjectId: "project-id",
///                 }],
///             }],
///             ipv4Enabled: false,
///         },
///         backupConfiguration: {
///             enabled: true,
///             binaryLogEnabled: true,
///         },
///         availabilityType: "REGIONAL",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.sql.DatabaseInstance("main",
///     name="psc-enabled-main-instance",
///     database_version="MYSQL_8_0",
///     settings={
///         "tier": "db-f1-micro",
///         "ip_configuration": {
///             "psc_configs": [{
///                 "psc_enabled": True,
///                 "allowed_consumer_projects": ["allowed-consumer-project-name"],
///                 "psc_auto_connections": [{
///                     "consumer_network": "network-name",
///                     "consumer_service_project_id": "project-id",
///                 }],
///             }],
///             "ipv4_enabled": False,
///         },
///         "backup_configuration": {
///             "enabled": True,
///             "binary_log_enabled": True,
///         },
///         "availability_type": "REGIONAL",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Gcp.Sql.DatabaseInstance("main", new()
///     {
///         Name = "psc-enabled-main-instance",
///         DatabaseVersion = "MYSQL_8_0",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
///             {
///                 PscConfigs = new[]
///                 {
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationPscConfigArgs
///                     {
///                         PscEnabled = true,
///                         AllowedConsumerProjects = new[]
///                         {
///                             "allowed-consumer-project-name",
///                         },
///                         PscAutoConnections = new[]
///                         {
///                             new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnectionArgs
///                             {
///                                 ConsumerNetwork = "network-name",
///                                 ConsumerServiceProjectId = "project-id",
///                             },
///                         },
///                     },
///                 },
///                 Ipv4Enabled = false,
///             },
///             BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
///             {
///                 Enabled = true,
///                 BinaryLogEnabled = true,
///             },
///             AvailabilityType = "REGIONAL",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("psc-enabled-main-instance"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// 					PscConfigs: sql.DatabaseInstanceSettingsIpConfigurationPscConfigArray{
/// 						&sql.DatabaseInstanceSettingsIpConfigurationPscConfigArgs{
/// 							PscEnabled: pulumi.Bool(true),
/// 							AllowedConsumerProjects: pulumi.StringArray{
/// 								pulumi.String("allowed-consumer-project-name"),
/// 							},
/// 							PscAutoConnections: sql.DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnectionArray{
/// 								&sql.DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnectionArgs{
/// 									ConsumerNetwork:          pulumi.String("network-name"),
/// 									ConsumerServiceProjectId: pulumi.String("project-id"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Ipv4Enabled: pulumi.Bool(false),
/// 				},
/// 				BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// 					Enabled:          pulumi.Bool(true),
/// 					BinaryLogEnabled: pulumi.Bool(true),
/// 				},
/// 				AvailabilityType: pulumi.String("REGIONAL"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "main" {
///   name             = "psc-enabled-main-instance"
///   database_version = "MYSQL_8_0"
///   settings = {
///     tier = "db-f1-micro"
///     ip_configuration = {
///       psc_configs = [{
///         "pscEnabled"              = true
///         "allowedConsumerProjects" = ["allowed-consumer-project-name"]
///         "pscAutoConnections" = [{
///           "consumerNetwork"          = "network-name"
///           "consumerServiceProjectId" = "project-id"
///         }]
///       }]
///       ipv4_enabled = false
///     }
///     backup_configuration = {
///       enabled            = true
///       binary_log_enabled = true
///     }
///     availability_type = "REGIONAL"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationPscConfigArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnectionArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
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
///         var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
///             .name("psc-enabled-main-instance")
///             .databaseVersion("MYSQL_8_0")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
///                     .pscConfigs(DatabaseInstanceSettingsIpConfigurationPscConfigArgs.builder()
///                         .pscEnabled(true)
///                         .allowedConsumerProjects("allowed-consumer-project-name")
///                         .pscAutoConnections(DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnectionArgs.builder()
///                             .consumerNetwork("network-name")
///                             .consumerServiceProjectId("project-id")
///                             .build())
///                         .build())
///                     .ipv4Enabled(false)
///                     .build())
///                 .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
///                     .enabled(true)
///                     .binaryLogEnabled(true)
///                     .build())
///                 .availabilityType("REGIONAL")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: psc-enabled-main-instance
///       databaseVersion: MYSQL_8_0
///       settings:
///         tier: db-f1-micro
///         ipConfiguration:
///           pscConfigs:
///             - pscEnabled: true
///               allowedConsumerProjects:
///                 - allowed-consumer-project-name
///               pscAutoConnections:
///                 - consumerNetwork: network-name
///                   consumerServiceProjectId: project-id
///           ipv4Enabled: false
///         backupConfiguration:
///           enabled: true
///           binaryLogEnabled: true
///         availabilityType: REGIONAL
/// ```
///
///
/// ### Cloud SQL Instance with PSC outbound
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.sql.DatabaseInstance("main", {
///     name: "psc-enabled-main-instance",
///     databaseVersion: "MYSQL_8_0",
///     settings: {
///         tier: "db-f1-micro",
///         ipConfiguration: {
///             pscConfigs: [{
///                 pscEnabled: true,
///                 allowedConsumerProjects: ["allowed-consumer-project-name"],
///                 networkAttachmentUri: "network-attachment-uri",
///             }],
///             ipv4Enabled: false,
///         },
///         backupConfiguration: {
///             enabled: true,
///             binaryLogEnabled: true,
///         },
///         availabilityType: "REGIONAL",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.sql.DatabaseInstance("main",
///     name="psc-enabled-main-instance",
///     database_version="MYSQL_8_0",
///     settings={
///         "tier": "db-f1-micro",
///         "ip_configuration": {
///             "psc_configs": [{
///                 "psc_enabled": True,
///                 "allowed_consumer_projects": ["allowed-consumer-project-name"],
///                 "network_attachment_uri": "network-attachment-uri",
///             }],
///             "ipv4_enabled": False,
///         },
///         "backup_configuration": {
///             "enabled": True,
///             "binary_log_enabled": True,
///         },
///         "availability_type": "REGIONAL",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Gcp.Sql.DatabaseInstance("main", new()
///     {
///         Name = "psc-enabled-main-instance",
///         DatabaseVersion = "MYSQL_8_0",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
///             {
///                 PscConfigs = new[]
///                 {
///                     new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationPscConfigArgs
///                     {
///                         PscEnabled = true,
///                         AllowedConsumerProjects = new[]
///                         {
///                             "allowed-consumer-project-name",
///                         },
///                         NetworkAttachmentUri = "network-attachment-uri",
///                     },
///                 },
///                 Ipv4Enabled = false,
///             },
///             BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
///             {
///                 Enabled = true,
///                 BinaryLogEnabled = true,
///             },
///             AvailabilityType = "REGIONAL",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("psc-enabled-main-instance"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// 					PscConfigs: sql.DatabaseInstanceSettingsIpConfigurationPscConfigArray{
/// 						&sql.DatabaseInstanceSettingsIpConfigurationPscConfigArgs{
/// 							PscEnabled: pulumi.Bool(true),
/// 							AllowedConsumerProjects: pulumi.StringArray{
/// 								pulumi.String("allowed-consumer-project-name"),
/// 							},
/// 							NetworkAttachmentUri: pulumi.String("network-attachment-uri"),
/// 						},
/// 					},
/// 					Ipv4Enabled: pulumi.Bool(false),
/// 				},
/// 				BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// 					Enabled:          pulumi.Bool(true),
/// 					BinaryLogEnabled: pulumi.Bool(true),
/// 				},
/// 				AvailabilityType: pulumi.String("REGIONAL"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "main" {
///   name             = "psc-enabled-main-instance"
///   database_version = "MYSQL_8_0"
///   settings = {
///     tier = "db-f1-micro"
///     ip_configuration = {
///       psc_configs = [{
///         "pscEnabled"              = true
///         "allowedConsumerProjects" = ["allowed-consumer-project-name"]
///         "networkAttachmentUri"    = "network-attachment-uri"
///       }]
///       ipv4_enabled = false
///     }
///     backup_configuration = {
///       enabled            = true
///       binary_log_enabled = true
///     }
///     availability_type = "REGIONAL"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationPscConfigArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
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
///         var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
///             .name("psc-enabled-main-instance")
///             .databaseVersion("MYSQL_8_0")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
///                     .pscConfigs(DatabaseInstanceSettingsIpConfigurationPscConfigArgs.builder()
///                         .pscEnabled(true)
///                         .allowedConsumerProjects("allowed-consumer-project-name")
///                         .networkAttachmentUri("network-attachment-uri")
///                         .build())
///                     .ipv4Enabled(false)
///                     .build())
///                 .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
///                     .enabled(true)
///                     .binaryLogEnabled(true)
///                     .build())
///                 .availabilityType("REGIONAL")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: psc-enabled-main-instance
///       databaseVersion: MYSQL_8_0
///       settings:
///         tier: db-f1-micro
///         ipConfiguration:
///           pscConfigs:
///             - pscEnabled: true
///               allowedConsumerProjects:
///                 - allowed-consumer-project-name
///               networkAttachmentUri: network-attachment-uri
///           ipv4Enabled: false
///         backupConfiguration:
///           enabled: true
///           binaryLogEnabled: true
///         availabilityType: REGIONAL
/// ```
///
///
/// ### Cloud SQL Instance created with backupdrBackup
/// &gt; **NOTE:** For restoring from a backupdr_backup, note that the backup must be in active state. List down the backups using `gcp.backupdisasterrecovery.getBackup`. Replace `backupdrBackupFullPath` with the backup name.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "main-instance",
///     databaseVersion: "MYSQL_8_0",
///     settings: {
///         tier: "db-f1-micro",
///         backupConfiguration: {
///             enabled: true,
///             binaryLogEnabled: true,
///         },
///     },
///     backupdrBackup: "backupdr_backup_full_path",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="main-instance",
///     database_version="MYSQL_8_0",
///     settings={
///         "tier": "db-f1-micro",
///         "backup_configuration": {
///             "enabled": True,
///             "binary_log_enabled": True,
///         },
///     },
///     backupdr_backup="backupdr_backup_full_path")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "main-instance",
///         DatabaseVersion = "MYSQL_8_0",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
///             {
///                 Enabled = true,
///                 BinaryLogEnabled = true,
///             },
///         },
///         BackupdrBackup = "backupdr_backup_full_path",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("main-instance"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// 					Enabled:          pulumi.Bool(true),
/// 					BinaryLogEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			BackupdrBackup: pulumi.String("backupdr_backup_full_path"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "main-instance"
///   database_version = "MYSQL_8_0"
///   settings = {
///     tier = "db-f1-micro"
///     backup_configuration = {
///       enabled            = true
///       binary_log_enabled = true
///     }
///   }
///   backupdr_backup = "backupdr_backup_full_path"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
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
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("main-instance")
///             .databaseVersion("MYSQL_8_0")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
///                     .enabled(true)
///                     .binaryLogEnabled(true)
///                     .build())
///                 .build())
///             .backupdrBackup("backupdr_backup_full_path")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: main-instance
///       databaseVersion: MYSQL_8_0
///       settings:
///         tier: db-f1-micro
///         backupConfiguration:
///           enabled: true
///           binaryLogEnabled: true
///       backupdrBackup: backupdr_backup_full_path
/// ```
///
///
/// ### Cloud SQL Instance created using pointInTimeRestore
/// &gt; **NOTE:** Replace `backupdrDatasource` with the full datasource path, `timeStamp` should be in the format of `YYYY-MM-DDTHH:MM:SSZ`. The `targetInstance` is required field and must match the name of the resource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "main-instance",
///     databaseVersion: "MYSQL_8_0",
///     settings: {
///         tier: "db-f1-micro",
///         backupConfiguration: {
///             enabled: true,
///             binaryLogEnabled: true,
///         },
///     },
///     pointInTimeRestoreContext: {
///         datasource: "backupdr_datasource",
///         targetInstance: "main-instance",
///         pointInTime: "time_stamp",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="main-instance",
///     database_version="MYSQL_8_0",
///     settings={
///         "tier": "db-f1-micro",
///         "backup_configuration": {
///             "enabled": True,
///             "binary_log_enabled": True,
///         },
///     },
///     point_in_time_restore_context={
///         "datasource": "backupdr_datasource",
///         "target_instance": "main-instance",
///         "point_in_time": "time_stamp",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "main-instance",
///         DatabaseVersion = "MYSQL_8_0",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
///             {
///                 Enabled = true,
///                 BinaryLogEnabled = true,
///             },
///         },
///         PointInTimeRestoreContext = new Gcp.Sql.Inputs.DatabaseInstancePointInTimeRestoreContextArgs
///         {
///             Datasource = "backupdr_datasource",
///             TargetInstance = "main-instance",
///             PointInTime = "time_stamp",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("main-instance"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// 					Enabled:          pulumi.Bool(true),
/// 					BinaryLogEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			PointInTimeRestoreContext: &sql.DatabaseInstancePointInTimeRestoreContextArgs{
/// 				Datasource:     pulumi.String("backupdr_datasource"),
/// 				TargetInstance: pulumi.String("main-instance"),
/// 				PointInTime:    pulumi.String("time_stamp"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "main-instance"
///   database_version = "MYSQL_8_0"
///   settings = {
///     tier = "db-f1-micro"
///     backup_configuration = {
///       enabled            = true
///       binary_log_enabled = true
///     }
///   }
///   point_in_time_restore_context = {
///     datasource      = "backupdr_datasource"
///     target_instance = "main-instance"
///     point_in_time   = "time_stamp"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstancePointInTimeRestoreContextArgs;
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
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("main-instance")
///             .databaseVersion("MYSQL_8_0")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
///                     .enabled(true)
///                     .binaryLogEnabled(true)
///                     .build())
///                 .build())
///             .pointInTimeRestoreContext(DatabaseInstancePointInTimeRestoreContextArgs.builder()
///                 .datasource("backupdr_datasource")
///                 .targetInstance("main-instance")
///                 .pointInTime("time_stamp")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: main-instance
///       databaseVersion: MYSQL_8_0
///       settings:
///         tier: db-f1-micro
///         backupConfiguration:
///           enabled: true
///           binaryLogEnabled: true
///       pointInTimeRestoreContext:
///         datasource: backupdr_datasource
///         targetInstance: main-instance
///         pointInTime: time_stamp
/// ```
///
///
/// ### Cloud SQL Instance created using pointInTimeRestore using multiregion datasource
/// &gt; **NOTE:** Replace `backupdrDatasource` with the full datasource path, `timeStamp` should be in the format of `YYYY-MM-DDTHH:MM:SSZ` and `region` with the target instance region. The `targetInstance` is required field and must match the name of the resource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "main-instance",
///     databaseVersion: "MYSQL_8_0",
///     settings: {
///         tier: "db-f1-micro",
///         backupConfiguration: {
///             enabled: true,
///             binaryLogEnabled: true,
///         },
///     },
///     pointInTimeRestoreContext: {
///         datasource: "backupdr_datasource",
///         targetInstance: "main-instance",
///         pointInTime: "time_stamp",
///         region: "region",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="main-instance",
///     database_version="MYSQL_8_0",
///     settings={
///         "tier": "db-f1-micro",
///         "backup_configuration": {
///             "enabled": True,
///             "binary_log_enabled": True,
///         },
///     },
///     point_in_time_restore_context={
///         "datasource": "backupdr_datasource",
///         "target_instance": "main-instance",
///         "point_in_time": "time_stamp",
///         "region": "region",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "main-instance",
///         DatabaseVersion = "MYSQL_8_0",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
///             {
///                 Enabled = true,
///                 BinaryLogEnabled = true,
///             },
///         },
///         PointInTimeRestoreContext = new Gcp.Sql.Inputs.DatabaseInstancePointInTimeRestoreContextArgs
///         {
///             Datasource = "backupdr_datasource",
///             TargetInstance = "main-instance",
///             PointInTime = "time_stamp",
///             Region = "region",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("main-instance"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// 					Enabled:          pulumi.Bool(true),
/// 					BinaryLogEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			PointInTimeRestoreContext: &sql.DatabaseInstancePointInTimeRestoreContextArgs{
/// 				Datasource:     pulumi.String("backupdr_datasource"),
/// 				TargetInstance: pulumi.String("main-instance"),
/// 				PointInTime:    pulumi.String("time_stamp"),
/// 				Region:         pulumi.String("region"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "main-instance"
///   database_version = "MYSQL_8_0"
///   settings = {
///     tier = "db-f1-micro"
///     backup_configuration = {
///       enabled            = true
///       binary_log_enabled = true
///     }
///   }
///   point_in_time_restore_context = {
///     datasource      = "backupdr_datasource"
///     target_instance = "main-instance"
///     point_in_time   = "time_stamp"
///     region          = "region"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstancePointInTimeRestoreContextArgs;
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
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("main-instance")
///             .databaseVersion("MYSQL_8_0")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
///                     .enabled(true)
///                     .binaryLogEnabled(true)
///                     .build())
///                 .build())
///             .pointInTimeRestoreContext(DatabaseInstancePointInTimeRestoreContextArgs.builder()
///                 .datasource("backupdr_datasource")
///                 .targetInstance("main-instance")
///                 .pointInTime("time_stamp")
///                 .region("region")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: main-instance
///       databaseVersion: MYSQL_8_0
///       settings:
///         tier: db-f1-micro
///         backupConfiguration:
///           enabled: true
///           binaryLogEnabled: true
///       pointInTimeRestoreContext:
///         datasource: backupdr_datasource
///         targetInstance: main-instance
///         pointInTime: time_stamp
///         region: region
/// ```
///
///
/// ## Switchover
///
/// Users can perform a switchover on a replica by following the steps below.
///
/// ~&gt;**WARNING:** Failure to follow these steps can lead to data loss (You will be warned during plan stage). To prevent data loss during a switchover, please verify your plan with the checklist below.
///
/// For a more in-depth walkthrough with example code, see the Switchover Guide
///
/// ### Steps to Invoke Switchover
///
/// MySQL/PostgreSQL: Create a cross-region, Enterprise Plus edition primary and replica pair, then set the value of primary's `replication_cluster.failover_dr_replica_name` as the replica.
///
/// SQL Server: Create a `cascadable` replica in a different region from the primary (`cascadableReplica` is set to true in `replicaConfiguration`)
///
/// #### Invoking switchover in the replica resource:
/// 1. Change instanceType from `READ_REPLICA_INSTANCE` to `CLOUD_SQL_INSTANCE`
/// 2. Remove `masterInstanceName`
/// 3. (SQL Server) Remove `replicaConfiguration`
/// 4. Add current primary's name to the replica's `replicaNames` list
/// 5. (MySQL/PostgreSQL) Add current primary's name to the replica's `replication_cluster.failover_dr_replica_name`.
/// 6. (MySQL/PostgreSQL) Adjust `backupConfiguration`. See Switchover Guide for details.
///
/// #### Updating the primary resource:
/// 1. Change `instanceType` from `CLOUD_SQL_INSTANCE` to `READ_REPLICA_INSTANCE`
/// 2. Set `masterInstanceName` to the original replica (which will be primary after switchover)
/// 3. (SQL Server) Set `replicaConfiguration` and set `cascadableReplica` to `true`
/// 4. Remove original replica from `replicaNames`
/// * **NOTE**: Do **not** delete the replicaNames field, even if it has no replicas remaining. Set replicaNames = [ ] to indicate it having no replicas.
/// 5. (MySQL/PostgreSQL) Set `replication_cluster.failover_dr_replica_name` as the empty string.
/// 6. (MySQL/PostgreSQL) Adjust `backupConfiguration`. See Switchover Guide for details.
/// #### Plan and verify that:
/// - `pulumi preview` outputs **"0 to add, 0 to destroy"**
/// - `pulumi preview` does not say **"must be replaced"** for any resource
/// - Every resource **"will be updated in-place"**
/// - Only the 2 instances involved in switchover have planned changes
/// - (Recommended) Use `deletionProtection` on instances as a safety measure
///
/// ## Import
///
/// Database instances can be imported using one of any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Database instances can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:sql/databaseInstance:DatabaseInstance default projects/{{project}}/instances/{{name}}
/// $ pulumi import gcp:sql/databaseInstance:DatabaseInstance default {{project}}/{{name}}
/// $ pulumi import gcp:sql/databaseInstance:DatabaseInstance default {{name}}
/// ```
///
/// &gt; **NOTE:** Some fields (such as `replicaConfiguration`) won't show a diff if they are unset in
/// config and set on the server.
/// When importing, double-check that your config has all the fields set that you expect- just seeing
/// no diff isn't sufficient to know that your config could reproduce the imported resource.
class DatabaseInstance extends pulumi.CustomResource {
  /// The list of all maintenance versions applicable on the instance.
  late final pulumi.Output<List<String>> availableMaintenanceVersions;
  /// The backupdrBackup needed to restore the database to a backup run. This field will
  /// cause the provider to trigger the database to restore from the backup run indicated. The configuration is detailed below.
  /// **NOTE:** Restoring from a backup is an imperative action and not recommended via this provider. Adding or modifying this
  /// block during resource creation/update will trigger the restore action after the resource is created/updated.
  late final pulumi.Output<String?> backupdrBackup;
  /// The context needed to create this instance as a clone of another instance. When this field is set during
  /// resource creation, this provider will attempt to clone another instance as indicated in the context. The
  /// configuration is detailed below.
  late final pulumi.Output<DatabaseInstanceClone?> clone;
  /// The connection name of the instance to be used in
  /// connection strings. For example, when connecting with [Cloud SQL Proxy](https://cloud.google.com/sql/docs/mysql/connect-admin-proxy).
  late final pulumi.Output<String> connectionName;
  /// The MySQL, PostgreSQL or
  /// SQL Server version to use. Supported values include `MYSQL_5_6`,
  /// `MYSQL_5_7`, `MYSQL_8_0`, `MYSQL_8_4`, `POSTGRES_9_6`,`POSTGRES_10`, `POSTGRES_11`,
  /// `POSTGRES_12`, `POSTGRES_13`, `POSTGRES_14`, `POSTGRES_15`, `POSTGRES_16`, `POSTGRES_17`, `POSTGRES_18`,
  /// `SQLSERVER_2022_STANDARD`, `SQLSERVER_2022_ENTERPRISE`, `SQLSERVER_2022_EXPRESS`,
  /// `SQLSERVER_2022_WEB`, `SQLSERVER_2025_STANDARD`, `SQLSERVER_2025_ENTERPRISE`,
  /// `SQLSERVER_2025_EXPRESS`, `SQLSERVER_2025_WEB`.
  /// [Database Version Policies](https://cloud.google.com/sql/docs/db-versions)
  /// includes an up-to-date reference of supported versions.
  late final pulumi.Output<String> databaseVersion;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// in state, a `destroy` or `update` command that deletes the instance will fail. Defaults to `true`.
  ///
  /// &gt; **NOTE:** This flag only protects instances from deletion within Pulumi. To protect your instances from accidental deletion across all surfaces (API, gcloud, Cloud Console and Pulumi), use the API flag `settings.deletion_protection_enabled`.
  late final pulumi.Output<bool?> deletionProtection;
  /// The DNS name of the instance. See [Connect to an instance using Private Service Connect](https://cloud.google.com/sql/docs/mysql/configure-private-service-connect#view-summary-information-cloud-sql-instances-psc-enabled) for more details.
  late final pulumi.Output<String> dnsName;
  /// The list of DNS names used by this instance. Different connection types for an instance may have different DNS names. DNS names can apply to an individual instance or a cluster of instances.
  late final pulumi.Output<List<Map<String, dynamic>>> dnsNames;
  /// The full path to the encryption key used for the CMEK disk encryption.  Setting
  /// up disk encryption currently requires manual steps outside of this provider.
  /// The provided key must be in the same region as the SQL instance.  In order
  /// to use this feature, a special kind of service account must be created and
  /// granted permission on this key.  This step can currently only be done
  /// manually, please see [this step](https://cloud.google.com/sql/docs/mysql/configure-cmek#service-account).
  /// That service account needs the `Cloud KMS &gt; Cloud KMS CryptoKey Encrypter/Decrypter` role on your
  /// key - please see [this step](https://cloud.google.com/sql/docs/mysql/configure-cmek#grantkey).
  late final pulumi.Output<String> encryptionKeyName;
  /// Whether to enforce the new SQL network architecture.
  /// By default, new Cloud SQL instances created in projects created after August 2021 use the new network architecture.
  /// This follows the gcloud pattern where the flag is an irreversible opt-in.
  /// See [official documentation](https://docs.cloud.google.com/sql/docs/mysql/upgrade-cloud-sql-instance-new-network-architecture#new-arch) for more details.
  late final pulumi.Output<bool> enforceNewSqlNetworkArchitecture;
  /// The description of final backup. Only set this field when `final_backup_config.enabled` is true.
  late final pulumi.Output<String?> finalBackupDescription;
  /// The first IPv4 address of any type assigned.
  late final pulumi.Output<String> firstIpAddress;
  /// When this parameter is set to `true`, Cloud SQL instances can perform in-place major version upgrades of read replicas along with the primary instance when `databaseVersion` is updated. This is an input-only field that is not persisted in the API and only takes effect during a major version upgrade.
  late final pulumi.Output<bool?> includeReplicasForMajorVersionUpgrade;
  /// The type of the instance. See [API reference for SqlInstanceType](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instances#SqlInstanceType) for supported values.
  late final pulumi.Output<String> instanceType;
  late final pulumi.Output<List<Map<String, dynamic>>> ipAddresses;
  /// The current software version on the instance. This attribute can not be set during creation. Refer to `availableMaintenanceVersions` attribute to see what `maintenanceVersion` are available for upgrade. When this attribute gets updated, it will cause an instance restart. Setting a `maintenanceVersion` value that is older than the current one on the instance will be ignored.
  late final pulumi.Output<String> maintenanceVersion;
  /// The name of the existing instance that will
  /// act as the master in the replication setup. Note, this requires the master to
  /// have `binaryLogEnabled` set, as well as existing backups.
  late final pulumi.Output<String> masterInstanceName;
  /// The name of the instance. If the name is left
  /// blank, the provider will randomly generate one when the instance is first
  /// created. This is done because after a name is used, it cannot be reused for
  /// up to [one week](https://cloud.google.com/sql/docs/delete-instance).
  late final pulumi.Output<String> name;
  /// For a read pool instance, the number of nodes in the read pool. For read pools with auto scaling enabled, this field is read only.
  late final pulumi.Output<int> nodeCount;
  /// The pointInTimeRestoreContext needed for performing a point-in-time recovery of an instance managed by Google Cloud Backup and Disaster Recovery. This field will
  /// cause Terraform to trigger the database to restore to a point in time indicated. The configuration is detailed below.
  /// **NOTE:** Restoring from a backup is an imperative action and not recommended via this provider. Adding or modifying this
  /// block during resource creation/update will trigger the restore action after the resource is created/updated.
  late final pulumi.Output<DatabaseInstancePointInTimeRestoreContext?> pointInTimeRestoreContext;
  /// The first private (`PRIVATE`) IPv4 address assigned.
  late final pulumi.Output<String> privateIpAddress;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// the URI that points to the service attachment of the instance.
  late final pulumi.Output<String> pscServiceAttachmentLink;
  /// The first public (`PRIMARY`) IPv4 address assigned.
  late final pulumi.Output<String> publicIpAddress;
  /// The region the instance will sit in. If a region is not provided in the resource definition,
  /// the provider region will be used instead.
  ///
  /// - - -
  late final pulumi.Output<String> region;
  /// The configuration for replication. The
  /// configuration is detailed below.
  late final pulumi.Output<DatabaseInstanceReplicaConfiguration> replicaConfiguration;
  /// List of replica names. Can be updated.
  late final pulumi.Output<List<String>> replicaNames;
  /// A primary instance and disaster recovery replica pair. Applicable to MySQL and PostgreSQL. This field can be set if the primary has psaWriteEndpoint set or both the primary and replica are created.
  late final pulumi.Output<DatabaseInstanceReplicationCluster> replicationCluster;
  /// The context needed to restore the database to a backup run. This field will
  /// cause the provider to trigger the database to restore from the backup run indicated. The configuration is detailed below.
  /// **NOTE:** Restoring from a backup is an imperative action and not recommended via this provider. Adding or modifying this
  /// block during resource creation/update will trigger the restore action after the resource is created/updated.
  late final pulumi.Output<DatabaseInstanceRestoreBackupContext?> restoreBackupContext;
  /// Initial root password. Can be updated. Required for MS SQL Server.
  late final pulumi.Output<String?> rootPassword;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Initial root password. Can be updated. Required for MS SQL Server. **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `rootPassword` or `rootPasswordWo` can only be set.
  late final pulumi.Output<String?> rootPasswordWo;
  /// Triggers update of `rootPasswordWo` write-only. Increment this value when an update to `rootPasswordWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  late final pulumi.Output<String?> rootPasswordWoVersion;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  late final pulumi.Output<List<Map<String, dynamic>>> serverCaCerts;
  /// The service account email address assigned to the
  /// instance.
  late final pulumi.Output<String> serviceAccountEmailAddress;
  /// The settings to use for the database. The
  /// configuration is detailed below. Required if `clone` is not set.
  late final pulumi.Output<DatabaseInstanceSettings> settings;
  /// When set to `true`, Cloud SQL instances can switch storing point-in-time recovery transaction logs from a data disk to Cloud Storage, freeing up data disk space and enabling longer retention windows. This is an input-only field that is not persisted in the API.
  late final pulumi.Output<bool?> switchTransactionLogsToCloudStorageEnabled;

  /// Creates a new [DatabaseInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseInstance]. {@macro pulumi_sql_database_instance_database_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseInstance(
    String name, {
    DatabaseInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:sql/databaseInstance:DatabaseInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availableMaintenanceVersions = registerOutput<List<String>>('availableMaintenanceVersions');
    backupdrBackup = registerOutput<String?>('backupdrBackup');
    clone = registerOutput<DatabaseInstanceClone?>('clone', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseInstanceClone.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectionName = registerOutput<String>('connectionName');
    databaseVersion = registerOutput<String>('databaseVersion');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    dnsName = registerOutput<String>('dnsName');
    dnsNames = registerOutput<List<Map<String, dynamic>>>('dnsNames');
    encryptionKeyName = registerOutput<String>('encryptionKeyName');
    enforceNewSqlNetworkArchitecture = registerOutput<bool>('enforceNewSqlNetworkArchitecture');
    finalBackupDescription = registerOutput<String?>('finalBackupDescription');
    firstIpAddress = registerOutput<String>('firstIpAddress');
    includeReplicasForMajorVersionUpgrade = registerOutput<bool?>('includeReplicasForMajorVersionUpgrade');
    instanceType = registerOutput<String>('instanceType');
    ipAddresses = registerOutput<List<Map<String, dynamic>>>('ipAddresses');
    maintenanceVersion = registerOutput<String>('maintenanceVersion');
    masterInstanceName = registerOutput<String>('masterInstanceName');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int>('nodeCount');
    pointInTimeRestoreContext = registerOutput<DatabaseInstancePointInTimeRestoreContext?>('pointInTimeRestoreContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseInstancePointInTimeRestoreContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateIpAddress = registerOutput<String>('privateIpAddress');
    project = registerOutput<String>('project');
    pscServiceAttachmentLink = registerOutput<String>('pscServiceAttachmentLink');
    publicIpAddress = registerOutput<String>('publicIpAddress');
    region = registerOutput<String>('region');
    replicaConfiguration = registerOutput<DatabaseInstanceReplicaConfiguration>('replicaConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseInstanceReplicaConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    replicaNames = registerOutput<List<String>>('replicaNames');
    replicationCluster = registerOutput<DatabaseInstanceReplicationCluster>('replicationCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseInstanceReplicationCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    restoreBackupContext = registerOutput<DatabaseInstanceRestoreBackupContext?>('restoreBackupContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseInstanceRestoreBackupContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rootPassword = registerOutput<String?>('rootPassword');
    rootPasswordWo = registerOutput<String?>('rootPasswordWo');
    rootPasswordWoVersion = registerOutput<String?>('rootPasswordWoVersion');
    selfLink = registerOutput<String>('selfLink');
    serverCaCerts = registerOutput<List<Map<String, dynamic>>>('serverCaCerts');
    serviceAccountEmailAddress = registerOutput<String>('serviceAccountEmailAddress');
    settings = registerOutput<DatabaseInstanceSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseInstanceSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    switchTransactionLogsToCloudStorageEnabled = registerOutput<bool?>('switchTransactionLogsToCloudStorageEnabled');
  }

  /// Gets an existing [DatabaseInstance] resource's state with the given [name] and [id].
  static DatabaseInstance get(
    String name,
    pulumi.Input<String> id, {
    DatabaseInstanceState? state,
  }) {
    return DatabaseInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:sql/databaseInstance:DatabaseInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availableMaintenanceVersions = registerOutput<List<String>>('availableMaintenanceVersions');
    backupdrBackup = registerOutput<String?>('backupdrBackup');
    clone = registerOutput<DatabaseInstanceClone?>('clone', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseInstanceClone.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectionName = registerOutput<String>('connectionName');
    databaseVersion = registerOutput<String>('databaseVersion');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    dnsName = registerOutput<String>('dnsName');
    dnsNames = registerOutput<List<Map<String, dynamic>>>('dnsNames');
    encryptionKeyName = registerOutput<String>('encryptionKeyName');
    enforceNewSqlNetworkArchitecture = registerOutput<bool>('enforceNewSqlNetworkArchitecture');
    finalBackupDescription = registerOutput<String?>('finalBackupDescription');
    firstIpAddress = registerOutput<String>('firstIpAddress');
    includeReplicasForMajorVersionUpgrade = registerOutput<bool?>('includeReplicasForMajorVersionUpgrade');
    instanceType = registerOutput<String>('instanceType');
    ipAddresses = registerOutput<List<Map<String, dynamic>>>('ipAddresses');
    maintenanceVersion = registerOutput<String>('maintenanceVersion');
    masterInstanceName = registerOutput<String>('masterInstanceName');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int>('nodeCount');
    pointInTimeRestoreContext = registerOutput<DatabaseInstancePointInTimeRestoreContext?>('pointInTimeRestoreContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseInstancePointInTimeRestoreContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateIpAddress = registerOutput<String>('privateIpAddress');
    project = registerOutput<String>('project');
    pscServiceAttachmentLink = registerOutput<String>('pscServiceAttachmentLink');
    publicIpAddress = registerOutput<String>('publicIpAddress');
    region = registerOutput<String>('region');
    replicaConfiguration = registerOutput<DatabaseInstanceReplicaConfiguration>('replicaConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseInstanceReplicaConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    replicaNames = registerOutput<List<String>>('replicaNames');
    replicationCluster = registerOutput<DatabaseInstanceReplicationCluster>('replicationCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseInstanceReplicationCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    restoreBackupContext = registerOutput<DatabaseInstanceRestoreBackupContext?>('restoreBackupContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseInstanceRestoreBackupContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rootPassword = registerOutput<String?>('rootPassword');
    rootPasswordWo = registerOutput<String?>('rootPasswordWo');
    rootPasswordWoVersion = registerOutput<String?>('rootPasswordWoVersion');
    selfLink = registerOutput<String>('selfLink');
    serverCaCerts = registerOutput<List<Map<String, dynamic>>>('serverCaCerts');
    serviceAccountEmailAddress = registerOutput<String>('serviceAccountEmailAddress');
    settings = registerOutput<DatabaseInstanceSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseInstanceSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    switchTransactionLogsToCloudStorageEnabled = registerOutput<bool?>('switchTransactionLogsToCloudStorageEnabled');
  }
}
