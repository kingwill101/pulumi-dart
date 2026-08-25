import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_state.dart';

/// A database user in an AlloyDB cluster.
///
///
/// To get more information about User, see:
///
/// * [API documentation](https://cloud.google.com/alloydb/docs/reference/rest/v1/projects.locations.clusters.users/create)
/// * How-to Guides
/// * [AlloyDB](https://cloud.google.com/alloydb/docs/)
///
///
///
/// &gt; **Note:**  All arguments marked as write-only values will not be stored in the state: `passwordWo`.
/// Read more about Write-only Arguments.
///
/// ## Example Usage
///
/// ### Alloydb User Builtin
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultCluster = new gcp.alloydb.Cluster("default", {
///     clusterId: "alloydb-cluster",
///     location: "us-central1",
///     networkConfig: {
///         network: defaultGoogleComputeNetwork.id,
///     },
///     initialUser: {
///         password: "cluster_secret",
///     },
///     deletionProtection: false,
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {name: "alloydb-network"});
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
/// }, {
///     dependsOn: [vpcConnection],
/// });
/// const project = gcp.organizations.getProject({});
/// const user1 = new gcp.alloydb.User("user1", {
///     cluster: defaultCluster.name,
///     userId: "user1",
///     userType: "ALLOYDB_BUILT_IN",
///     password: "user_secret",
///     databaseRoles: ["alloydbsuperuser"],
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_cluster = gcp.alloydb.Cluster("default",
///     cluster_id="alloydb-cluster",
///     location="us-central1",
///     network_config={
///         "network": default_google_compute_network["id"],
///     },
///     initial_user={
///         "password": "cluster_secret",
///     },
///     deletion_protection=False)
/// default_network = gcp.compute.Network("default", name="alloydb-network")
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
///     opts = pulumi.ResourceOptions(depends_on=[vpc_connection]))
/// project = gcp.organizations.get_project()
/// user1 = gcp.alloydb.User("user1",
///     cluster=default_cluster.name,
///     user_id="user1",
///     user_type="ALLOYDB_BUILT_IN",
///     password="user_secret",
///     database_roles=["alloydbsuperuser"],
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultCluster = new Gcp.Alloydb.Cluster("default", new()
///     {
///         ClusterId = "alloydb-cluster",
///         Location = "us-central1",
///         NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
///         {
///             Network = defaultGoogleComputeNetwork.Id,
///         },
///         InitialUser = new Gcp.Alloydb.Inputs.ClusterInitialUserArgs
///         {
///             Password = "cluster_secret",
///         },
///         DeletionProtection = false,
///     });
///
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "alloydb-network",
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
///     var user1 = new Gcp.Alloydb.User("user1", new()
///     {
///         Cluster = defaultCluster.Name,
///         UserId = "user1",
///         UserType = "ALLOYDB_BUILT_IN",
///         Password = "user_secret",
///         DatabaseRoles = new[]
///         {
///             "alloydbsuperuser",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultCluster, err := alloydb.NewCluster(ctx, "default", &alloydb.ClusterArgs{
/// 			ClusterId: pulumi.String("alloydb-cluster"),
/// 			Location:  pulumi.String("us-central1"),
/// 			NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// 				Network: pulumi.Any(defaultGoogleComputeNetwork.Id),
/// 			},
/// 			InitialUser: &alloydb.ClusterInitialUserArgs{
/// 				Password: pulumi.String("cluster_secret"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("alloydb-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("alloydb-cluster"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpcConnection, err := servicenetworking.NewConnection(ctx, "vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				privateIpAlloc.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alloydb.NewInstance(ctx, "default", &alloydb.InstanceArgs{
/// 			Cluster:      defaultCluster.Name,
/// 			InstanceId:   pulumi.String("alloydb-instance"),
/// 			InstanceType: pulumi.String("PRIMARY"),
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
/// 		_, err = alloydb.NewUser(ctx, "user1", &alloydb.UserArgs{
/// 			Cluster:  defaultCluster.Name,
/// 			UserId:   pulumi.String("user1"),
/// 			UserType: pulumi.String("ALLOYDB_BUILT_IN"),
/// 			Password: pulumi.String("user_secret"),
/// 			DatabaseRoles: pulumi.StringArray{
/// 				pulumi.String("alloydbsuperuser"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
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
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_alloydb_instance" "default" {
///   depends_on    = [gcp_servicenetworking_connection.vpc_connection]
///   cluster       = gcp_alloydb_cluster.default.name
///   instance_id   = "alloydb-instance"
///   instance_type = "PRIMARY"
/// }
/// resource "gcp_alloydb_cluster" "default" {
///   cluster_id = "alloydb-cluster"
///   location   = "us-central1"
///   network_config = {
///     network = defaultGoogleComputeNetwork.id
///   }
///   initial_user = {
///     password = "cluster_secret"
///   }
///   deletion_protection = false
/// }
/// resource "gcp_compute_network" "default" {
///   name = "alloydb-network"
/// }
/// resource "gcp_compute_globaladdress" "private_ip_alloc" {
///   name          = "alloydb-cluster"
///   address_type  = "INTERNAL"
///   purpose       = "VPC_PEERING"
///   prefix_length = 16
///   network       = gcp_compute_network.default.id
/// }
/// resource "gcp_servicenetworking_connection" "vpc_connection" {
///   network                 = gcp_compute_network.default.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.private_ip_alloc.name]
/// }
/// resource "gcp_alloydb_user" "user1" {
///   depends_on     = [gcp_alloydb_instance.default]
///   cluster        = gcp_alloydb_cluster.default.name
///   user_id        = "user1"
///   user_type      = "ALLOYDB_BUILT_IN"
///   password       = "user_secret"
///   database_roles = ["alloydbsuperuser"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.alloydb.Cluster;
/// import com.pulumi.gcp.alloydb.ClusterArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterNetworkConfigArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterInitialUserArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.alloydb.Instance;
/// import com.pulumi.gcp.alloydb.InstanceArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.alloydb.User;
/// import com.pulumi.gcp.alloydb.UserArgs;
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
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .clusterId("alloydb-cluster")
///             .location("us-central1")
///             .networkConfig(ClusterNetworkConfigArgs.builder()
///                 .network(defaultGoogleComputeNetwork.get("id"))
///                 .build())
///             .initialUser(ClusterInitialUserArgs.builder()
///                 .password("cluster_secret")
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("alloydb-network")
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
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vpcConnection)
///                 .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var user1 = new User("user1", UserArgs.builder()
///             .cluster(defaultCluster.name())
///             .userId("user1")
///             .userType("ALLOYDB_BUILT_IN")
///             .password("user_secret")
///             .databaseRoles("alloydbsuperuser")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
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
///         network: ${defaultGoogleComputeNetwork.id}
///       initialUser:
///         password: cluster_secret
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
///   user1:
///     type: gcp:alloydb:User
///     properties:
///       cluster: ${defaultCluster.name}
///       userId: user1
///       userType: ALLOYDB_BUILT_IN
///       password: user_secret
///       databaseRoles:
///         - alloydbsuperuser
///     options:
///       dependsOn:
///         - ${default}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Alloydb User Iam
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
///         password: "cluster_secret",
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
/// }, {
///     dependsOn: [vpcConnection],
/// });
/// const project = gcp.organizations.getProject({});
/// const user2 = new gcp.alloydb.User("user2", {
///     cluster: defaultCluster.name,
///     userId: "user2@foo.com",
///     userType: "ALLOYDB_IAM_USER",
///     databaseRoles: ["alloydbiamuser"],
/// }, {
///     dependsOn: [_default],
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
///     initial_user={
///         "password": "cluster_secret",
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
///     opts = pulumi.ResourceOptions(depends_on=[vpc_connection]))
/// project = gcp.organizations.get_project()
/// user2 = gcp.alloydb.User("user2",
///     cluster=default_cluster.name,
///     user_id="user2@foo.com",
///     user_type="ALLOYDB_IAM_USER",
///     database_roles=["alloydbiamuser"],
///     opts = pulumi.ResourceOptions(depends_on=[default]))
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
///             Password = "cluster_secret",
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
///     var user2 = new Gcp.Alloydb.User("user2", new()
///     {
///         Cluster = defaultCluster.Name,
///         UserId = "user2@foo.com",
///         UserType = "ALLOYDB_IAM_USER",
///         DatabaseRoles = new[]
///         {
///             "alloydbiamuser",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
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
/// 				Network: defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			InitialUser: &alloydb.ClusterInitialUserArgs{
/// 				Password: pulumi.String("cluster_secret"),
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
/// 			Network:      defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpcConnection, err := servicenetworking.NewConnection(ctx, "vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				privateIpAlloc.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alloydb.NewInstance(ctx, "default", &alloydb.InstanceArgs{
/// 			Cluster:      defaultCluster.Name,
/// 			InstanceId:   pulumi.String("alloydb-instance"),
/// 			InstanceType: pulumi.String("PRIMARY"),
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
/// 		_, err = alloydb.NewUser(ctx, "user2", &alloydb.UserArgs{
/// 			Cluster:  defaultCluster.Name,
/// 			UserId:   pulumi.String("user2@foo.com"),
/// 			UserType: pulumi.String("ALLOYDB_IAM_USER"),
/// 			DatabaseRoles: pulumi.StringArray{
/// 				pulumi.String("alloydbiamuser"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
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
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_alloydb_instance" "default" {
///   depends_on    = [gcp_servicenetworking_connection.vpc_connection]
///   cluster       = gcp_alloydb_cluster.default.name
///   instance_id   = "alloydb-instance"
///   instance_type = "PRIMARY"
/// }
/// resource "gcp_alloydb_cluster" "default" {
///   cluster_id = "alloydb-cluster"
///   location   = "us-central1"
///   network_config = {
///     network = gcp_compute_network.default.id
///   }
///   initial_user = {
///     password = "cluster_secret"
///   }
///   deletion_protection = false
/// }
/// resource "gcp_compute_network" "default" {
///   name = "alloydb-network"
/// }
/// resource "gcp_compute_globaladdress" "private_ip_alloc" {
///   name          = "alloydb-cluster"
///   address_type  = "INTERNAL"
///   purpose       = "VPC_PEERING"
///   prefix_length = 16
///   network       = gcp_compute_network.default.id
/// }
/// resource "gcp_servicenetworking_connection" "vpc_connection" {
///   network                 = gcp_compute_network.default.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.private_ip_alloc.name]
/// }
/// resource "gcp_alloydb_user" "user2" {
///   depends_on     = [gcp_alloydb_instance.default]
///   cluster        = gcp_alloydb_cluster.default.name
///   user_id        = "user2@foo.com"
///   user_type      = "ALLOYDB_IAM_USER"
///   database_roles = ["alloydbiamuser"]
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.alloydb.User;
/// import com.pulumi.gcp.alloydb.UserArgs;
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
///                 .password("cluster_secret")
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
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vpcConnection)
///                 .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var user2 = new User("user2", UserArgs.builder()
///             .cluster(defaultCluster.name())
///             .userId("user2@foo.com")
///             .userType("ALLOYDB_IAM_USER")
///             .databaseRoles("alloydbiamuser")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
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
///         password: cluster_secret
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
///   user2:
///     type: gcp:alloydb:User
///     properties:
///       cluster: ${defaultCluster.name}
///       userId: user2@foo.com
///       userType: ALLOYDB_IAM_USER
///       databaseRoles:
///         - alloydbiamuser
///     options:
///       dependsOn:
///         - ${default}
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
/// User can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/users/{{user_id}}`
/// * `{{project}}/{{location}}/{{cluster}}/{{user_id}}`
/// * `{{location}}/{{cluster}}/{{user_id}}`
///
///
/// When using the `pulumi import` command, User can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:alloydb/user:User default projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/users/{{user_id}}
/// $ pulumi import gcp:alloydb/user:User default {{project}}/{{location}}/{{cluster}}/{{user_id}}
/// $ pulumi import gcp:alloydb/user:User default {{location}}/{{cluster}}/{{user_id}}
/// ```
class User extends pulumi.CustomResource {
  /// Identifies the alloydb cluster. Must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  late final pulumi.Output<String> cluster;
  /// List of database roles this database user has.
  late final pulumi.Output<List<String>?> databaseRoles;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Name of the resource in the form of projects/{project}/locations/{location}/clusters/{cluster}/users/{user}.
  late final pulumi.Output<String> name;
  /// Password for this database user.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String?> password;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// Password for this database user.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `password` or `passwordWo` can only be set.
  late final pulumi.Output<String?> passwordWo;
  /// Triggers update of `passwordWo` write-only. Increment this value when an update to `passwordWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  late final pulumi.Output<String?> passwordWoVersion;
  /// The database role name of the user.
  late final pulumi.Output<String> userId;
  /// The type of this user.
  /// Possible values are: `ALLOYDB_BUILT_IN`, `ALLOYDB_IAM_USER`.
  late final pulumi.Output<String> userType;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_alloydb_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:alloydb/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['password', 'passwordWo'],
        ) {
    cluster = registerOutput<String>('cluster');
    databaseRoles = registerOutput<List<String>?>('databaseRoles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    passwordWo = registerOutput<String?>('passwordWo', isSecret: true);
    passwordWoVersion = registerOutput<String?>('passwordWoVersion');
    userId = registerOutput<String>('userId');
    userType = registerOutput<String>('userType');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:alloydb/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cluster = registerOutput<String>('cluster');
    databaseRoles = registerOutput<List<String>?>('databaseRoles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    passwordWo = registerOutput<String?>('passwordWo', isSecret: true);
    passwordWoVersion = registerOutput<String?>('passwordWoVersion');
    userId = registerOutput<String>('userId');
    userType = registerOutput<String>('userType');
  }

  /// Creates a typed reference to an existing [User] resource.
  User.reference(String urn)
    : super(
        'gcp:alloydb/user:User',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['password', 'passwordWo'],
        isResourceReference: true,
      ) {
    cluster = registerOutput<String>('cluster');
    databaseRoles = registerOutput<List<String>?>('databaseRoles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    passwordWo = registerOutput<String?>('passwordWo', isSecret: true);
    passwordWoVersion = registerOutput<String?>('passwordWoVersion');
    userId = registerOutput<String>('userId');
    userType = registerOutput<String>('userType');
  }
}
