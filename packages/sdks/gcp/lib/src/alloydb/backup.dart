import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_args.dart';
import 'backup_encryption_config.dart';
import 'backup_state.dart';

/// An AlloyDB Backup.
///
///
/// To get more information about Backup, see:
///
/// * [API documentation](https://cloud.google.com/alloydb/docs/reference/rest/v1/projects.locations.backups/create)
/// * How-to Guides
/// * [AlloyDB](https://cloud.google.com/alloydb/docs/)
///
/// ## Example Usage
///
/// ### Alloydb Backup Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {name: "alloydb-network"});
/// const defaultCluster = new gcp.alloydb.Cluster("default", {
///     clusterId: "alloydb-cluster",
///     location: "us-central1",
///     networkConfig: {
///         network: defaultNetwork.id,
///     },
///     deletionProtection: false,
/// });
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
///     name: "alloydb-cluster",
///     addressType: "INTERNAL",
///     purpose: "VPC_PEERING",
///     prefixLength: 16,
///     network: defaultNetwork.id,
/// });
/// const vpcConnection = new gcp.servicenetworking.Connection("vpc_connection", {
///     network: defaultNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [privateIpAlloc.name],
/// });
/// const defaultInstance = new gcp.alloydb.Instance("default", {
///     cluster: defaultCluster.name,
///     instanceId: "alloydb-instance",
///     instanceType: "PRIMARY",
/// }, {
///     dependsOn: [vpcConnection],
/// });
/// const _default = new gcp.alloydb.Backup("default", {
///     location: "us-central1",
///     backupId: "alloydb-backup",
///     clusterName: defaultCluster.name,
/// }, {
///     dependsOn: [defaultInstance],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default", name="alloydb-network")
/// default_cluster = gcp.alloydb.Cluster("default",
///     cluster_id="alloydb-cluster",
///     location="us-central1",
///     network_config={
///         "network": default_network.id,
///     },
///     deletion_protection=False)
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
///     name="alloydb-cluster",
///     address_type="INTERNAL",
///     purpose="VPC_PEERING",
///     prefix_length=16,
///     network=default_network.id)
/// vpc_connection = gcp.servicenetworking.Connection("vpc_connection",
///     network=default_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[private_ip_alloc.name])
/// default_instance = gcp.alloydb.Instance("default",
///     cluster=default_cluster.name,
///     instance_id="alloydb-instance",
///     instance_type="PRIMARY",
///     opts = pulumi.ResourceOptions(depends_on=[vpc_connection]))
/// default = gcp.alloydb.Backup("default",
///     location="us-central1",
///     backup_id="alloydb-backup",
///     cluster_name=default_cluster.name,
///     opts = pulumi.ResourceOptions(depends_on=[default_instance]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "alloydb-network",
///     });
///
///     var defaultCluster = new Gcp.Alloydb.Cluster("default", new()
///     {
///         ClusterId = "alloydb-cluster",
///         Location = "us-central1",
///         NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
///         {
///             Network = defaultNetwork.Id,
///         },
///         DeletionProtection = false,
///     });
///
///     var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
///     {
///         Name = "alloydb-cluster",
///         AddressType = "INTERNAL",
///         Purpose = "VPC_PEERING",
///         PrefixLength = 16,
///         Network = defaultNetwork.Id,
///     });
///
///     var vpcConnection = new Gcp.ServiceNetworking.Connection("vpc_connection", new()
///     {
///         Network = defaultNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             privateIpAlloc.Name,
///         },
///     });
///
///     var defaultInstance = new Gcp.Alloydb.Instance("default", new()
///     {
///         Cluster = defaultCluster.Name,
///         InstanceId = "alloydb-instance",
///         InstanceType = "PRIMARY",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vpcConnection,
///         },
///     });
///
///     var @default = new Gcp.Alloydb.Backup("default", new()
///     {
///         Location = "us-central1",
///         BackupId = "alloydb-backup",
///         ClusterName = defaultCluster.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultInstance,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("alloydb-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCluster, err := alloydb.NewCluster(ctx, "default", &alloydb.ClusterArgs{
/// 			ClusterId: pulumi.String("alloydb-cluster"),
/// 			Location:  pulumi.String("us-central1"),
/// 			NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// 				Network: defaultNetwork.ID(),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("alloydb-cluster"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpcConnection, err := servicenetworking.NewConnection(ctx, "vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: defaultNetwork.ID(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				privateIpAlloc.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := alloydb.NewInstance(ctx, "default", &alloydb.InstanceArgs{
/// 			Cluster:      defaultCluster.Name,
/// 			InstanceId:   pulumi.String("alloydb-instance"),
/// 			InstanceType: pulumi.String("PRIMARY"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alloydb.NewBackup(ctx, "default", &alloydb.BackupArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			BackupId:    pulumi.String("alloydb-backup"),
/// 			ClusterName: defaultCluster.Name,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultInstance,
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.alloydb.Cluster;
/// import com.pulumi.gcp.alloydb.ClusterArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterNetworkConfigArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.alloydb.Instance;
/// import com.pulumi.gcp.alloydb.InstanceArgs;
/// import com.pulumi.gcp.alloydb.Backup;
/// import com.pulumi.gcp.alloydb.BackupArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("alloydb-network")
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .clusterId("alloydb-cluster")
///             .location("us-central1")
///             .networkConfig(ClusterNetworkConfigArgs.builder()
///                 .network(defaultNetwork.id())
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
///             .name("alloydb-cluster")
///             .addressType("INTERNAL")
///             .purpose("VPC_PEERING")
///             .prefixLength(16)
///             .network(defaultNetwork.id())
///             .build());
///
///         var vpcConnection = new Connection("vpcConnection", ConnectionArgs.builder()
///             .network(defaultNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(privateIpAlloc.name())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .cluster(defaultCluster.name())
///             .instanceId("alloydb-instance")
///             .instanceType("PRIMARY")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vpcConnection)
///                 .build());
///
///         var default_ = new Backup("default", BackupArgs.builder()
///             .location("us-central1")
///             .backupId("alloydb-backup")
///             .clusterName(defaultCluster.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultInstance)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:alloydb:Backup
///     properties:
///       location: us-central1
///       backupId: alloydb-backup
///       clusterName: ${defaultCluster.name}
///     options:
///       dependsOn:
///         - ${defaultInstance}
///   defaultCluster:
///     type: gcp:alloydb:Cluster
///     name: default
///     properties:
///       clusterId: alloydb-cluster
///       location: us-central1
///       networkConfig:
///         network: ${defaultNetwork.id}
///       deletionProtection: false
///   defaultInstance:
///     type: gcp:alloydb:Instance
///     name: default
///     properties:
///       cluster: ${defaultCluster.name}
///       instanceId: alloydb-instance
///       instanceType: PRIMARY
///     options:
///       dependsOn:
///         - ${vpcConnection}
///   privateIpAlloc:
///     type: gcp:compute:GlobalAddress
///     name: private_ip_alloc
///     properties:
///       name: alloydb-cluster
///       addressType: INTERNAL
///       purpose: VPC_PEERING
///       prefixLength: 16
///       network: ${defaultNetwork.id}
///   vpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: vpc_connection
///     properties:
///       network: ${defaultNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${privateIpAlloc.name}
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: alloydb-network
/// ```
///
/// ### Alloydb Backup Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {name: "alloydb-network"});
/// const defaultCluster = new gcp.alloydb.Cluster("default", {
///     clusterId: "alloydb-cluster",
///     location: "us-central1",
///     networkConfig: {
///         network: defaultNetwork.id,
///     },
///     deletionProtection: false,
/// });
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
///     name: "alloydb-cluster",
///     addressType: "INTERNAL",
///     purpose: "VPC_PEERING",
///     prefixLength: 16,
///     network: defaultNetwork.id,
/// });
/// const vpcConnection = new gcp.servicenetworking.Connection("vpc_connection", {
///     network: defaultNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [privateIpAlloc.name],
/// });
/// const defaultInstance = new gcp.alloydb.Instance("default", {
///     cluster: defaultCluster.name,
///     instanceId: "alloydb-instance",
///     instanceType: "PRIMARY",
/// }, {
///     dependsOn: [vpcConnection],
/// });
/// const _default = new gcp.alloydb.Backup("default", {
///     location: "us-central1",
///     backupId: "alloydb-backup",
///     clusterName: defaultCluster.name,
///     description: "example description",
///     type: "ON_DEMAND",
///     labels: {
///         label: "key",
///     },
/// }, {
///     dependsOn: [defaultInstance],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default", name="alloydb-network")
/// default_cluster = gcp.alloydb.Cluster("default",
///     cluster_id="alloydb-cluster",
///     location="us-central1",
///     network_config={
///         "network": default_network.id,
///     },
///     deletion_protection=False)
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
///     name="alloydb-cluster",
///     address_type="INTERNAL",
///     purpose="VPC_PEERING",
///     prefix_length=16,
///     network=default_network.id)
/// vpc_connection = gcp.servicenetworking.Connection("vpc_connection",
///     network=default_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[private_ip_alloc.name])
/// default_instance = gcp.alloydb.Instance("default",
///     cluster=default_cluster.name,
///     instance_id="alloydb-instance",
///     instance_type="PRIMARY",
///     opts = pulumi.ResourceOptions(depends_on=[vpc_connection]))
/// default = gcp.alloydb.Backup("default",
///     location="us-central1",
///     backup_id="alloydb-backup",
///     cluster_name=default_cluster.name,
///     description="example description",
///     type="ON_DEMAND",
///     labels={
///         "label": "key",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[default_instance]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "alloydb-network",
///     });
///
///     var defaultCluster = new Gcp.Alloydb.Cluster("default", new()
///     {
///         ClusterId = "alloydb-cluster",
///         Location = "us-central1",
///         NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
///         {
///             Network = defaultNetwork.Id,
///         },
///         DeletionProtection = false,
///     });
///
///     var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
///     {
///         Name = "alloydb-cluster",
///         AddressType = "INTERNAL",
///         Purpose = "VPC_PEERING",
///         PrefixLength = 16,
///         Network = defaultNetwork.Id,
///     });
///
///     var vpcConnection = new Gcp.ServiceNetworking.Connection("vpc_connection", new()
///     {
///         Network = defaultNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             privateIpAlloc.Name,
///         },
///     });
///
///     var defaultInstance = new Gcp.Alloydb.Instance("default", new()
///     {
///         Cluster = defaultCluster.Name,
///         InstanceId = "alloydb-instance",
///         InstanceType = "PRIMARY",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vpcConnection,
///         },
///     });
///
///     var @default = new Gcp.Alloydb.Backup("default", new()
///     {
///         Location = "us-central1",
///         BackupId = "alloydb-backup",
///         ClusterName = defaultCluster.Name,
///         Description = "example description",
///         Type = "ON_DEMAND",
///         Labels =
///         {
///             { "label", "key" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultInstance,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("alloydb-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCluster, err := alloydb.NewCluster(ctx, "default", &alloydb.ClusterArgs{
/// 			ClusterId: pulumi.String("alloydb-cluster"),
/// 			Location:  pulumi.String("us-central1"),
/// 			NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// 				Network: defaultNetwork.ID(),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("alloydb-cluster"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpcConnection, err := servicenetworking.NewConnection(ctx, "vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: defaultNetwork.ID(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				privateIpAlloc.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := alloydb.NewInstance(ctx, "default", &alloydb.InstanceArgs{
/// 			Cluster:      defaultCluster.Name,
/// 			InstanceId:   pulumi.String("alloydb-instance"),
/// 			InstanceType: pulumi.String("PRIMARY"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alloydb.NewBackup(ctx, "default", &alloydb.BackupArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			BackupId:    pulumi.String("alloydb-backup"),
/// 			ClusterName: defaultCluster.Name,
/// 			Description: pulumi.String("example description"),
/// 			Type:        pulumi.String("ON_DEMAND"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultInstance,
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.alloydb.Cluster;
/// import com.pulumi.gcp.alloydb.ClusterArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterNetworkConfigArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.alloydb.Instance;
/// import com.pulumi.gcp.alloydb.InstanceArgs;
/// import com.pulumi.gcp.alloydb.Backup;
/// import com.pulumi.gcp.alloydb.BackupArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("alloydb-network")
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .clusterId("alloydb-cluster")
///             .location("us-central1")
///             .networkConfig(ClusterNetworkConfigArgs.builder()
///                 .network(defaultNetwork.id())
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
///             .name("alloydb-cluster")
///             .addressType("INTERNAL")
///             .purpose("VPC_PEERING")
///             .prefixLength(16)
///             .network(defaultNetwork.id())
///             .build());
///
///         var vpcConnection = new Connection("vpcConnection", ConnectionArgs.builder()
///             .network(defaultNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(privateIpAlloc.name())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .cluster(defaultCluster.name())
///             .instanceId("alloydb-instance")
///             .instanceType("PRIMARY")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vpcConnection)
///                 .build());
///
///         var default_ = new Backup("default", BackupArgs.builder()
///             .location("us-central1")
///             .backupId("alloydb-backup")
///             .clusterName(defaultCluster.name())
///             .description("example description")
///             .type("ON_DEMAND")
///             .labels(Map.of("label", "key"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultInstance)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:alloydb:Backup
///     properties:
///       location: us-central1
///       backupId: alloydb-backup
///       clusterName: ${defaultCluster.name}
///       description: example description
///       type: ON_DEMAND
///       labels:
///         label: key
///     options:
///       dependsOn:
///         - ${defaultInstance}
///   defaultCluster:
///     type: gcp:alloydb:Cluster
///     name: default
///     properties:
///       clusterId: alloydb-cluster
///       location: us-central1
///       networkConfig:
///         network: ${defaultNetwork.id}
///       deletionProtection: false
///   defaultInstance:
///     type: gcp:alloydb:Instance
///     name: default
///     properties:
///       cluster: ${defaultCluster.name}
///       instanceId: alloydb-instance
///       instanceType: PRIMARY
///     options:
///       dependsOn:
///         - ${vpcConnection}
///   privateIpAlloc:
///     type: gcp:compute:GlobalAddress
///     name: private_ip_alloc
///     properties:
///       name: alloydb-cluster
///       addressType: INTERNAL
///       purpose: VPC_PEERING
///       prefixLength: 16
///       network: ${defaultNetwork.id}
///   vpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: vpc_connection
///     properties:
///       network: ${defaultNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${privateIpAlloc.name}
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: alloydb-network
/// ```
///
///
/// ## Import
///
/// Backup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backups/{{backup_id}}`
///
/// * `{{project}}/{{location}}/{{backup_id}}`
///
/// * `{{location}}/{{backup_id}}`
///
/// When using the `pulumi import` command, Backup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:alloydb/backup:Backup default projects/{{project}}/locations/{{location}}/backups/{{backup_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/backup:Backup default {{project}}/{{location}}/{{backup_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/backup:Backup default {{location}}/{{backup_id}}
/// ```
class Backup extends pulumi.CustomResource {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// The ID of the alloydb backup.
  late final pulumi.Output<String> backupId;

  /// The full resource name of the backup source cluster (e.g., projects/{project}/locations/{location}/clusters/{clusterId}).
  late final pulumi.Output<String> clusterName;

  /// Output only. The system-generated UID of the cluster which was used to create this resource.
  late final pulumi.Output<String> clusterUid;

  /// Output only. Create time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// Output only. Delete time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> deleteTime;

  /// User-provided description of the backup.
  late final pulumi.Output<String?> description;

  /// User-settable and human-readable display name for the Backup.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// Structure is documented below.
  late final pulumi.Output<BackupEncryptionConfig?> encryptionConfig;

  /// EncryptionInfo describes the encryption information of a cluster or a backup.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> encryptionInfos;

  /// For Resource freshness validation (https://google.aip.dev/154)
  late final pulumi.Output<String> etag;

  /// Output only. The QuantityBasedExpiry of the backup, specified by the backup's retention policy.
  /// Once the expiry quantity is over retention, the backup is eligible to be garbage collected.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> expiryQuantities;

  /// Output only. The time at which after the backup is eligible to be garbage collected.
  /// It is the duration specified by the backup's retention policy, added to the backup's createTime.
  late final pulumi.Output<String> expiryTime;

  /// User-defined labels for the alloydb backup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location where the alloydb backup should reside.
  late final pulumi.Output<String> location;

  /// Output only. The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backupId}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. Reconciling (https://google.aip.dev/128#reconciliation), if true, indicates that the service is actively updating the resource.
  /// This can happen due to user-triggered updates or system actions like failover or maintenance.
  late final pulumi.Output<bool> reconciling;

  /// Output only. The size of the backup in bytes.
  late final pulumi.Output<String> sizeBytes;

  /// Output only. The current state of the backup.
  late final pulumi.Output<String> state;

  /// The backup type, which suggests the trigger for the backup.
  /// Possible values are: `TYPE_UNSPECIFIED`, `ON_DEMAND`, `AUTOMATED`, `CONTINUOUS`.
  late final pulumi.Output<String> type;

  /// Output only. The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  late final pulumi.Output<String> uid;

  /// Output only. Update time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Backup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Backup]. {@macro pulumi_alloydb_backup_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Backup(String name, {BackupArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:alloydb/backup:Backup',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    backupId = registerOutput<String>('backupId');
    clusterName = registerOutput<String>('clusterName');
    clusterUid = registerOutput<String>('clusterUid');
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    encryptionConfig = registerOutput<BackupEncryptionConfig?>(
      'encryptionConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BackupEncryptionConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    encryptionInfos = registerOutput<List<Map<String, dynamic>>>(
      'encryptionInfos',
    );
    etag = registerOutput<String>('etag');
    expiryQuantities = registerOutput<List<Map<String, dynamic>>>(
      'expiryQuantities',
    );
    expiryTime = registerOutput<String>('expiryTime');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    sizeBytes = registerOutput<String>('sizeBytes');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Backup] resource's state with the given [name] and [id].
  static Backup get(
    String name,
    pulumi.Input<String> id, {
    BackupState? state,
  }) {
    return Backup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Backup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:alloydb/backup:Backup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    backupId = registerOutput<String>('backupId');
    clusterName = registerOutput<String>('clusterName');
    clusterUid = registerOutput<String>('clusterUid');
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    encryptionConfig = registerOutput<BackupEncryptionConfig?>(
      'encryptionConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BackupEncryptionConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    encryptionInfos = registerOutput<List<Map<String, dynamic>>>(
      'encryptionInfos',
    );
    etag = registerOutput<String>('etag');
    expiryQuantities = registerOutput<List<Map<String, dynamic>>>(
      'expiryQuantities',
    );
    expiryTime = registerOutput<String>('expiryTime');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    sizeBytes = registerOutput<String>('sizeBytes');
    this.state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
