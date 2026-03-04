import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_client_connection_config.dart';
import 'instance_connection_pool_config.dart';
import 'instance_machine_config.dart';
import 'instance_network_config.dart';
import 'instance_observability_config.dart';
import 'instance_psc_instance_config.dart';
import 'instance_query_insights_config.dart';
import 'instance_read_pool_config.dart';
import 'instance_state.dart';

/// ## Example Usage
///
/// ### Alloydb Instance Basic
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
///     initialUser: {
///         password: "alloydb-cluster",
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
/// const _default = new gcp.alloydb.Instance("default", {
///     cluster: defaultCluster.name,
///     instanceId: "alloydb-instance",
///     instanceType: "PRIMARY",
///     machineConfig: {
///         cpuCount: 2,
///     },
/// }, {
///     dependsOn: [vpcConnection],
/// });
/// const project = gcp.organizations.getProject({});
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
///     initial_user={
///         "password": "alloydb-cluster",
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
/// default = gcp.alloydb.Instance("default",
///     cluster=default_cluster.name,
///     instance_id="alloydb-instance",
///     instance_type="PRIMARY",
///     machine_config={
///         "cpu_count": 2,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[vpc_connection]))
/// project = gcp.organizations.get_project()
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
///         InitialUser = new Gcp.Alloydb.Inputs.ClusterInitialUserArgs
///         {
///             Password = "alloydb-cluster",
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
///     var @default = new Gcp.Alloydb.Instance("default", new()
///     {
///         Cluster = defaultCluster.Name,
///         InstanceId = "alloydb-instance",
///         InstanceType = "PRIMARY",
///         MachineConfig = new Gcp.Alloydb.Inputs.InstanceMachineConfigArgs
///         {
///             CpuCount = 2,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vpcConnection,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
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
/// 			InitialUser: &alloydb.ClusterInitialUserArgs{
/// 				Password: pulumi.String("alloydb-cluster"),
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
/// 		_, err = alloydb.NewInstance(ctx, "default", &alloydb.InstanceArgs{
/// 			Cluster:      defaultCluster.Name,
/// 			InstanceId:   pulumi.String("alloydb-instance"),
/// 			InstanceType: pulumi.String("PRIMARY"),
/// 			MachineConfig: &alloydb.InstanceMachineConfigArgs{
/// 				CpuCount: pulumi.Int(2),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.alloydb.inputs.ClusterInitialUserArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.alloydb.Instance;
/// import com.pulumi.gcp.alloydb.InstanceArgs;
/// import com.pulumi.gcp.alloydb.inputs.InstanceMachineConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///             .initialUser(ClusterInitialUserArgs.builder()
///                 .password("alloydb-cluster")
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .cluster(defaultCluster.name())
///             .instanceId("alloydb-instance")
///             .instanceType("PRIMARY")
///             .machineConfig(InstanceMachineConfigArgs.builder()
///                 .cpuCount(2)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vpcConnection)
///                 .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:alloydb:Instance
///     properties:
///       cluster: ${defaultCluster.name}
///       instanceId: alloydb-instance
///       instanceType: PRIMARY
///       machineConfig:
///         cpuCount: 2
///     options:
///       dependsOn:
///         - ${vpcConnection}
///   defaultCluster:
///     type: gcp:alloydb:Cluster
///     name: default
///     properties:
///       clusterId: alloydb-cluster
///       location: us-central1
///       networkConfig:
///         network: ${defaultNetwork.id}
///       initialUser:
///         password: alloydb-cluster
///       deletionProtection: false
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: alloydb-network
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
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Alloydb Secondary Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "alloydb-secondary-network"});
/// const primary = new gcp.alloydb.Cluster("primary", {
///     clusterId: "alloydb-primary-cluster",
///     location: "us-central1",
///     networkConfig: {
///         network: _default.id,
///     },
///     deletionProtection: false,
/// });
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
///     name: "alloydb-secondary-instance",
///     addressType: "INTERNAL",
///     purpose: "VPC_PEERING",
///     prefixLength: 16,
///     network: _default.id,
/// });
/// const vpcConnection = new gcp.servicenetworking.Connection("vpc_connection", {
///     network: _default.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [privateIpAlloc.name],
/// });
/// const primaryInstance = new gcp.alloydb.Instance("primary", {
///     cluster: primary.name,
///     instanceId: "alloydb-primary-instance",
///     instanceType: "PRIMARY",
///     machineConfig: {
///         cpuCount: 2,
///     },
/// }, {
///     dependsOn: [vpcConnection],
/// });
/// const secondary = new gcp.alloydb.Cluster("secondary", {
///     clusterId: "alloydb-secondary-cluster",
///     location: "us-east1",
///     networkConfig: {
///         network: defaultGoogleComputeNetwork.id,
///     },
///     clusterType: "SECONDARY",
///     continuousBackupConfig: {
///         enabled: false,
///     },
///     secondaryConfig: {
///         primaryClusterName: primary.name,
///     },
///     deletionPolicy: "FORCE",
///     deletionProtection: false,
/// }, {
///     dependsOn: [primaryInstance],
/// });
/// const secondaryInstance = new gcp.alloydb.Instance("secondary", {
///     cluster: secondary.name,
///     instanceId: "alloydb-secondary-instance",
///     instanceType: secondary.clusterType,
///     machineConfig: {
///         cpuCount: 2,
///     },
/// }, {
///     dependsOn: [vpcConnection],
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="alloydb-secondary-network")
/// primary = gcp.alloydb.Cluster("primary",
///     cluster_id="alloydb-primary-cluster",
///     location="us-central1",
///     network_config={
///         "network": default.id,
///     },
///     deletion_protection=False)
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
///     name="alloydb-secondary-instance",
///     address_type="INTERNAL",
///     purpose="VPC_PEERING",
///     prefix_length=16,
///     network=default.id)
/// vpc_connection = gcp.servicenetworking.Connection("vpc_connection",
///     network=default.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[private_ip_alloc.name])
/// primary_instance = gcp.alloydb.Instance("primary",
///     cluster=primary.name,
///     instance_id="alloydb-primary-instance",
///     instance_type="PRIMARY",
///     machine_config={
///         "cpu_count": 2,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[vpc_connection]))
/// secondary = gcp.alloydb.Cluster("secondary",
///     cluster_id="alloydb-secondary-cluster",
///     location="us-east1",
///     network_config={
///         "network": default_google_compute_network["id"],
///     },
///     cluster_type="SECONDARY",
///     continuous_backup_config={
///         "enabled": False,
///     },
///     secondary_config={
///         "primary_cluster_name": primary.name,
///     },
///     deletion_policy="FORCE",
///     deletion_protection=False,
///     opts = pulumi.ResourceOptions(depends_on=[primary_instance]))
/// secondary_instance = gcp.alloydb.Instance("secondary",
///     cluster=secondary.name,
///     instance_id="alloydb-secondary-instance",
///     instance_type=secondary.cluster_type,
///     machine_config={
///         "cpu_count": 2,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[vpc_connection]))
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "alloydb-secondary-network",
///     });
///
///     var primary = new Gcp.Alloydb.Cluster("primary", new()
///     {
///         ClusterId = "alloydb-primary-cluster",
///         Location = "us-central1",
///         NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
///         {
///             Network = @default.Id,
///         },
///         DeletionProtection = false,
///     });
///
///     var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
///     {
///         Name = "alloydb-secondary-instance",
///         AddressType = "INTERNAL",
///         Purpose = "VPC_PEERING",
///         PrefixLength = 16,
///         Network = @default.Id,
///     });
///
///     var vpcConnection = new Gcp.ServiceNetworking.Connection("vpc_connection", new()
///     {
///         Network = @default.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             privateIpAlloc.Name,
///         },
///     });
///
///     var primaryInstance = new Gcp.Alloydb.Instance("primary", new()
///     {
///         Cluster = primary.Name,
///         InstanceId = "alloydb-primary-instance",
///         InstanceType = "PRIMARY",
///         MachineConfig = new Gcp.Alloydb.Inputs.InstanceMachineConfigArgs
///         {
///             CpuCount = 2,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vpcConnection,
///         },
///     });
///
///     var secondary = new Gcp.Alloydb.Cluster("secondary", new()
///     {
///         ClusterId = "alloydb-secondary-cluster",
///         Location = "us-east1",
///         NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
///         {
///             Network = defaultGoogleComputeNetwork.Id,
///         },
///         ClusterType = "SECONDARY",
///         ContinuousBackupConfig = new Gcp.Alloydb.Inputs.ClusterContinuousBackupConfigArgs
///         {
///             Enabled = false,
///         },
///         SecondaryConfig = new Gcp.Alloydb.Inputs.ClusterSecondaryConfigArgs
///         {
///             PrimaryClusterName = primary.Name,
///         },
///         DeletionPolicy = "FORCE",
///         DeletionProtection = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primaryInstance,
///         },
///     });
///
///     var secondaryInstance = new Gcp.Alloydb.Instance("secondary", new()
///     {
///         Cluster = secondary.Name,
///         InstanceId = "alloydb-secondary-instance",
///         InstanceType = secondary.ClusterType,
///         MachineConfig = new Gcp.Alloydb.Inputs.InstanceMachineConfigArgs
///         {
///             CpuCount = 2,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vpcConnection,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("alloydb-secondary-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := alloydb.NewCluster(ctx, "primary", &alloydb.ClusterArgs{
/// 			ClusterId: pulumi.String("alloydb-primary-cluster"),
/// 			Location:  pulumi.String("us-central1"),
/// 			NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// 				Network: _default.ID(),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("alloydb-secondary-instance"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpcConnection, err := servicenetworking.NewConnection(ctx, "vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: _default.ID(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				privateIpAlloc.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryInstance, err := alloydb.NewInstance(ctx, "primary", &alloydb.InstanceArgs{
/// 			Cluster:      primary.Name,
/// 			InstanceId:   pulumi.String("alloydb-primary-instance"),
/// 			InstanceType: pulumi.String("PRIMARY"),
/// 			MachineConfig: &alloydb.InstanceMachineConfigArgs{
/// 				CpuCount: pulumi.Int(2),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary, err := alloydb.NewCluster(ctx, "secondary", &alloydb.ClusterArgs{
/// 			ClusterId: pulumi.String("alloydb-secondary-cluster"),
/// 			Location:  pulumi.String("us-east1"),
/// 			NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// 				Network: pulumi.Any(defaultGoogleComputeNetwork.Id),
/// 			},
/// 			ClusterType: pulumi.String("SECONDARY"),
/// 			ContinuousBackupConfig: &alloydb.ClusterContinuousBackupConfigArgs{
/// 				Enabled: pulumi.Bool(false),
/// 			},
/// 			SecondaryConfig: &alloydb.ClusterSecondaryConfigArgs{
/// 				PrimaryClusterName: primary.Name,
/// 			},
/// 			DeletionPolicy:     pulumi.String("FORCE"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primaryInstance,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alloydb.NewInstance(ctx, "secondary", &alloydb.InstanceArgs{
/// 			Cluster:      secondary.Name,
/// 			InstanceId:   pulumi.String("alloydb-secondary-instance"),
/// 			InstanceType: secondary.ClusterType,
/// 			MachineConfig: &alloydb.InstanceMachineConfigArgs{
/// 				CpuCount: pulumi.Int(2),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.alloydb.inputs.InstanceMachineConfigArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterContinuousBackupConfigArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterSecondaryConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("alloydb-secondary-network")
///             .build());
///
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .clusterId("alloydb-primary-cluster")
///             .location("us-central1")
///             .networkConfig(ClusterNetworkConfigArgs.builder()
///                 .network(default_.id())
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
///             .name("alloydb-secondary-instance")
///             .addressType("INTERNAL")
///             .purpose("VPC_PEERING")
///             .prefixLength(16)
///             .network(default_.id())
///             .build());
///
///         var vpcConnection = new Connection("vpcConnection", ConnectionArgs.builder()
///             .network(default_.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(privateIpAlloc.name())
///             .build());
///
///         var primaryInstance = new Instance("primaryInstance", InstanceArgs.builder()
///             .cluster(primary.name())
///             .instanceId("alloydb-primary-instance")
///             .instanceType("PRIMARY")
///             .machineConfig(InstanceMachineConfigArgs.builder()
///                 .cpuCount(2)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vpcConnection)
///                 .build());
///
///         var secondary = new Cluster("secondary", ClusterArgs.builder()
///             .clusterId("alloydb-secondary-cluster")
///             .location("us-east1")
///             .networkConfig(ClusterNetworkConfigArgs.builder()
///                 .network(defaultGoogleComputeNetwork.id())
///                 .build())
///             .clusterType("SECONDARY")
///             .continuousBackupConfig(ClusterContinuousBackupConfigArgs.builder()
///                 .enabled(false)
///                 .build())
///             .secondaryConfig(ClusterSecondaryConfigArgs.builder()
///                 .primaryClusterName(primary.name())
///                 .build())
///             .deletionPolicy("FORCE")
///             .deletionProtection(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(primaryInstance)
///                 .build());
///
///         var secondaryInstance = new Instance("secondaryInstance", InstanceArgs.builder()
///             .cluster(secondary.name())
///             .instanceId("alloydb-secondary-instance")
///             .instanceType(secondary.clusterType())
///             .machineConfig(InstanceMachineConfigArgs.builder()
///                 .cpuCount(2)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vpcConnection)
///                 .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:alloydb:Cluster
///     properties:
///       clusterId: alloydb-primary-cluster
///       location: us-central1
///       networkConfig:
///         network: ${default.id}
///       deletionProtection: false
///   primaryInstance:
///     type: gcp:alloydb:Instance
///     name: primary
///     properties:
///       cluster: ${primary.name}
///       instanceId: alloydb-primary-instance
///       instanceType: PRIMARY
///       machineConfig:
///         cpuCount: 2
///     options:
///       dependsOn:
///         - ${vpcConnection}
///   secondary:
///     type: gcp:alloydb:Cluster
///     properties:
///       clusterId: alloydb-secondary-cluster
///       location: us-east1
///       networkConfig:
///         network: ${defaultGoogleComputeNetwork.id}
///       clusterType: SECONDARY
///       continuousBackupConfig:
///         enabled: false
///       secondaryConfig:
///         primaryClusterName: ${primary.name}
///       deletionPolicy: FORCE
///       deletionProtection: false
///     options:
///       dependsOn:
///         - ${primaryInstance}
///   secondaryInstance:
///     type: gcp:alloydb:Instance
///     name: secondary
///     properties:
///       cluster: ${secondary.name}
///       instanceId: alloydb-secondary-instance
///       instanceType: ${secondary.clusterType}
///       machineConfig:
///         cpuCount: 2
///     options:
///       dependsOn:
///         - ${vpcConnection}
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: alloydb-secondary-network
///   privateIpAlloc:
///     type: gcp:compute:GlobalAddress
///     name: private_ip_alloc
///     properties:
///       name: alloydb-secondary-instance
///       addressType: INTERNAL
///       purpose: VPC_PEERING
///       prefixLength: 16
///       network: ${default.id}
///   vpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: vpc_connection
///     properties:
///       network: ${default.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${privateIpAlloc.name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/instances/{{instance_id}}`
///
/// * `{{project}}/{{location}}/{{cluster}}/{{instance_id}}`
///
/// * `{{location}}/{{cluster}}/{{instance_id}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:alloydb/instance:Instance default projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/instances/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/instance:Instance default {{project}}/{{location}}/{{cluster}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/instance:Instance default {{location}}/{{cluster}}/{{instance_id}}
/// ```
class Instance extends pulumi.CustomResource {
  /// 'Specifies whether an instance needs to spin up. Once the instance is
  /// active, the activation policy can be updated to the `NEVER` to stop the
  /// instance. Likewise, the activation policy can be updated to `ALWAYS` to
  /// start the instance.
  /// There are restrictions around when an instance can/cannot be activated (for
  /// example, a read pool instance should be stopped before stopping primary
  /// etc.). Please refer to the API documentation for more details.
  /// Possible values are: `ACTIVATION_POLICY_UNSPECIFIED`, `ALWAYS`, `NEVER`.'
  /// Possible values are: `ACTIVATION_POLICY_UNSPECIFIED`, `ALWAYS`, `NEVER`.
  late final pulumi.Output<String> activationPolicy;

  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// 'Availability type of an Instance. Defaults to REGIONAL for both primary and read instances.
  /// Note that primary and read instances can have different availability types.
  /// Primary instances can be either ZONAL or REGIONAL. Read Pool instances can also be either ZONAL or REGIONAL.
  /// Read pools of size 1 can only have zonal availability. Read pools with a node count of 2 or more
  /// can have regional availability (nodes are present in 2 or more zones in a region).
  /// Possible values are: `AVAILABILITY_TYPE_UNSPECIFIED`, `ZONAL`, `REGIONAL`.'
  /// Possible values are: `AVAILABILITY_TYPE_UNSPECIFIED`, `ZONAL`, `REGIONAL`.
  late final pulumi.Output<String> availabilityType;

  /// Client connection specific configurations.
  /// Structure is documented below.
  late final pulumi.Output<InstanceClientConnectionConfig>
  clientConnectionConfig;

  /// Identifies the alloydb cluster. Must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  late final pulumi.Output<String> cluster;

  /// Configuration for Managed Connection Pool.
  /// Structure is documented below.
  late final pulumi.Output<InstanceConnectionPoolConfig?> connectionPoolConfig;

  /// Time the Instance was created in UTC.
  late final pulumi.Output<String> createTime;

  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary.
  late final pulumi.Output<Map<String, String>> databaseFlags;

  /// User-settable and human-readable display name for the Instance.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  late final pulumi.Output<String?> gceZone;

  /// The ID of the alloydb instance.
  late final pulumi.Output<String> instanceId;
  late final pulumi.Output<String> instanceType;

  /// The IP address for the Instance. This is the connection endpoint for an end-user application.
  late final pulumi.Output<String> ipAddress;

  /// User-defined labels for the alloydb instance.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Configurations for the machines that host the underlying database engine.
  /// Structure is documented below.
  late final pulumi.Output<InstanceMachineConfig> machineConfig;

  /// The name of the instance resource.
  late final pulumi.Output<String> name;

  /// Instance level network configuration.
  /// Structure is documented below.
  late final pulumi.Output<InstanceNetworkConfig> networkConfig;

  /// Configuration for enhanced query insights.
  /// Structure is documented below.
  late final pulumi.Output<InstanceObservabilityConfig> observabilityConfig;

  /// The outbound public IP addresses for the instance. This is available ONLY when
  /// networkConfig.enableOutboundPublicIp is set to true. These IP addresses are used
  /// for outbound connections.
  late final pulumi.Output<List<String>> outboundPublicIpAddresses;

  /// Configuration for Private Service Connect (PSC) for the instance.
  /// Structure is documented below.
  late final pulumi.Output<InstancePscInstanceConfig> pscInstanceConfig;

  /// The public IP addresses for the Instance. This is available ONLY when
  /// networkConfig.enablePublicIp is set to true. This is the connection
  /// endpoint for an end-user application.
  late final pulumi.Output<String> publicIpAddress;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Configuration for query insights.
  /// Structure is documented below.
  late final pulumi.Output<InstanceQueryInsightsConfig> queryInsightsConfig;

  /// Read pool specific config. If the instance type is READ_POOL, this configuration must be provided.
  /// Structure is documented below.
  late final pulumi.Output<InstanceReadPoolConfig?> readPoolConfig;

  /// Set to true if the current state of Instance does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  late final pulumi.Output<bool> reconciling;

  /// The current state of the alloydb instance.
  late final pulumi.Output<String> state;

  /// The system-generated UID of the resource.
  late final pulumi.Output<String> uid;

  /// Time the Instance was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_alloydb_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:alloydb/instance:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activationPolicy = registerOutput<String>('activationPolicy');
    annotations = registerOutput<Map<String, String>?>('annotations');
    availabilityType = registerOutput<String>('availabilityType');
    clientConnectionConfig = registerOutput<InstanceClientConnectionConfig>(
      'clientConnectionConfig',
    );
    cluster = registerOutput<String>('cluster');
    connectionPoolConfig = registerOutput<InstanceConnectionPoolConfig?>(
      'connectionPoolConfig',
    );
    createTime = registerOutput<String>('createTime');
    databaseFlags = registerOutput<Map<String, String>>('databaseFlags');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gceZone = registerOutput<String?>('gceZone');
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    ipAddress = registerOutput<String>('ipAddress');
    labels = registerOutput<Map<String, String>?>('labels');
    machineConfig = registerOutput<InstanceMachineConfig>('machineConfig');
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<InstanceNetworkConfig>('networkConfig');
    observabilityConfig = registerOutput<InstanceObservabilityConfig>(
      'observabilityConfig',
    );
    outboundPublicIpAddresses = registerOutput<List<String>>(
      'outboundPublicIpAddresses',
    );
    pscInstanceConfig = registerOutput<InstancePscInstanceConfig>(
      'pscInstanceConfig',
    );
    publicIpAddress = registerOutput<String>('publicIpAddress');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    queryInsightsConfig = registerOutput<InstanceQueryInsightsConfig>(
      'queryInsightsConfig',
    );
    readPoolConfig = registerOutput<InstanceReadPoolConfig?>('readPoolConfig');
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:alloydb/instance:Instance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activationPolicy = registerOutput<String>('activationPolicy');
    annotations = registerOutput<Map<String, String>?>('annotations');
    availabilityType = registerOutput<String>('availabilityType');
    clientConnectionConfig = registerOutput<InstanceClientConnectionConfig>(
      'clientConnectionConfig',
    );
    cluster = registerOutput<String>('cluster');
    connectionPoolConfig = registerOutput<InstanceConnectionPoolConfig?>(
      'connectionPoolConfig',
    );
    createTime = registerOutput<String>('createTime');
    databaseFlags = registerOutput<Map<String, String>>('databaseFlags');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gceZone = registerOutput<String?>('gceZone');
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    ipAddress = registerOutput<String>('ipAddress');
    labels = registerOutput<Map<String, String>?>('labels');
    machineConfig = registerOutput<InstanceMachineConfig>('machineConfig');
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<InstanceNetworkConfig>('networkConfig');
    observabilityConfig = registerOutput<InstanceObservabilityConfig>(
      'observabilityConfig',
    );
    outboundPublicIpAddresses = registerOutput<List<String>>(
      'outboundPublicIpAddresses',
    );
    pscInstanceConfig = registerOutput<InstancePscInstanceConfig>(
      'pscInstanceConfig',
    );
    publicIpAddress = registerOutput<String>('publicIpAddress');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    queryInsightsConfig = registerOutput<InstanceQueryInsightsConfig>(
      'queryInsightsConfig',
    );
    readPoolConfig = registerOutput<InstanceReadPoolConfig?>('readPoolConfig');
    reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
