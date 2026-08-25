import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_cluster_args.dart';
import 'workstation_cluster_condition.dart';
import 'workstation_cluster_domain_config.dart';
import 'workstation_cluster_private_cluster_config.dart';
import 'workstation_cluster_state.dart';

/// A grouping of workstation configurations and the associated workstations in that region.
///
///
/// To get more information about WorkstationCluster, see:
///
/// * [API documentation](https://cloud.google.com/workstations/docs/reference/rest/v1/projects.locations.workstationClusters/create)
/// * How-to Guides
/// * [Workstations](https://cloud.google.com/workstations/docs/)
///
/// ## Example Usage
///
/// ### Workstation Cluster Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "workstation-cluster",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: defaultNetwork.name,
/// });
/// const _default = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: defaultNetwork.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="workstation-cluster",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default_network.name)
/// default = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default_network.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
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
///         Name = "workstation-cluster",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = defaultNetwork.Name,
///     });
///
///     var @default = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = defaultNetwork.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "key" },
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     defaultNetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
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
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///             .name("workstation-cluster")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(defaultNetwork.name())
///             .build());
///
///         var default_ = new WorkstationCluster("default", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(defaultNetwork.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
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
///     type: gcp:workstations:WorkstationCluster
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${defaultNetwork.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: workstation-cluster
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${defaultNetwork.name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Workstation Cluster Private
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "workstation-cluster-private",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster-private",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: defaultNetwork.name,
/// });
/// const _default = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster-private",
///     network: defaultNetwork.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     privateClusterConfig: {
///         enablePrivateEndpoint: true,
///     },
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="workstation-cluster-private",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster-private",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default_network.name)
/// default = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster-private",
///     network=default_network.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     private_cluster_config={
///         "enable_private_endpoint": True,
///     },
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
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
///         Name = "workstation-cluster-private",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster-private",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = defaultNetwork.Name,
///     });
///
///     var @default = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster-private",
///         Network = defaultNetwork.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         PrivateClusterConfig = new Gcp.Workstations.Inputs.WorkstationClusterPrivateClusterConfigArgs
///         {
///             EnablePrivateEndpoint = true,
///         },
///         Labels =
///         {
///             { "label", "key" },
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster-private"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster-private"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     defaultNetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster-private"),
/// 			Network:              defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 			PrivateClusterConfig: &workstations.WorkstationClusterPrivateClusterConfigArgs{
/// 				EnablePrivateEndpoint: pulumi.Bool(true),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
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
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster-private"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
///   private_cluster_config = {
///     enable_private_endpoint = true
///   }
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster-private"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster-private"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationClusterPrivateClusterConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///             .name("workstation-cluster-private")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster-private")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(defaultNetwork.name())
///             .build());
///
///         var default_ = new WorkstationCluster("default", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster-private")
///             .network(defaultNetwork.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .privateClusterConfig(WorkstationClusterPrivateClusterConfigArgs.builder()
///                 .enablePrivateEndpoint(true)
///                 .build())
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
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
///     type: gcp:workstations:WorkstationCluster
///     properties:
///       workstationClusterId: workstation-cluster-private
///       network: ${defaultNetwork.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       privateClusterConfig:
///         enablePrivateEndpoint: true
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: workstation-cluster-private
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster-private
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${defaultNetwork.name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Workstation Cluster Custom Domain
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "workstation-cluster-custom-domain",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster-custom-domain",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: defaultNetwork.name,
/// });
/// const _default = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster-custom-domain",
///     network: defaultNetwork.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     privateClusterConfig: {
///         enablePrivateEndpoint: true,
///     },
///     domainConfig: {
///         domain: "workstations.example.com",
///     },
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="workstation-cluster-custom-domain",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster-custom-domain",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default_network.name)
/// default = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster-custom-domain",
///     network=default_network.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     private_cluster_config={
///         "enable_private_endpoint": True,
///     },
///     domain_config={
///         "domain": "workstations.example.com",
///     },
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
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
///         Name = "workstation-cluster-custom-domain",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster-custom-domain",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = defaultNetwork.Name,
///     });
///
///     var @default = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster-custom-domain",
///         Network = defaultNetwork.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         PrivateClusterConfig = new Gcp.Workstations.Inputs.WorkstationClusterPrivateClusterConfigArgs
///         {
///             EnablePrivateEndpoint = true,
///         },
///         DomainConfig = new Gcp.Workstations.Inputs.WorkstationClusterDomainConfigArgs
///         {
///             Domain = "workstations.example.com",
///         },
///         Labels =
///         {
///             { "label", "key" },
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster-custom-domain"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster-custom-domain"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     defaultNetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster-custom-domain"),
/// 			Network:              defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 			PrivateClusterConfig: &workstations.WorkstationClusterPrivateClusterConfigArgs{
/// 				EnablePrivateEndpoint: pulumi.Bool(true),
/// 			},
/// 			DomainConfig: &workstations.WorkstationClusterDomainConfigArgs{
/// 				Domain: pulumi.String("workstations.example.com"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
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
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster-custom-domain"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
///   private_cluster_config = {
///     enable_private_endpoint = true
///   }
///   domain_config = {
///     domain = "workstations.example.com"
///   }
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster-custom-domain"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster-custom-domain"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationClusterPrivateClusterConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationClusterDomainConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///             .name("workstation-cluster-custom-domain")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster-custom-domain")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(defaultNetwork.name())
///             .build());
///
///         var default_ = new WorkstationCluster("default", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster-custom-domain")
///             .network(defaultNetwork.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .privateClusterConfig(WorkstationClusterPrivateClusterConfigArgs.builder()
///                 .enablePrivateEndpoint(true)
///                 .build())
///             .domainConfig(WorkstationClusterDomainConfigArgs.builder()
///                 .domain("workstations.example.com")
///                 .build())
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
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
///     type: gcp:workstations:WorkstationCluster
///     properties:
///       workstationClusterId: workstation-cluster-custom-domain
///       network: ${defaultNetwork.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       privateClusterConfig:
///         enablePrivateEndpoint: true
///       domainConfig:
///         domain: workstations.example.com
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: workstation-cluster-custom-domain
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster-custom-domain
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${defaultNetwork.name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Workstation Cluster Tags
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const tagKey = new gcp.tags.TagKey("tag_key", {
///     parent: project.then(project => `projects/${project.number}`),
///     shortName: "keyname",
/// });
/// const tagValue = new gcp.tags.TagValue("tag_value", {
///     parent: pulumi.interpolate`tagKeys/${tagKey.name}`,
///     shortName: "valuename",
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "workstation-cluster-tags",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster-tags",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: defaultNetwork.name,
/// });
/// const _default = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster-tags",
///     network: defaultNetwork.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     tags: pulumi.all([project, tagKey.shortName, tagValue.shortName]).apply(([project, tagKeyShortName, tagValueShortName]) => {
///         [`${project.projectId}/${tagKeyShortName}`]: tagValueShortName,
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// tag_key = gcp.tags.TagKey("tag_key",
///     parent=f"projects/{project.number}",
///     short_name="keyname")
/// tag_value = gcp.tags.TagValue("tag_value",
///     parent=tag_key.name.apply(lambda name: f"tagKeys/{name}"),
///     short_name="valuename")
/// default_network = gcp.compute.Network("default",
///     name="workstation-cluster-tags",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster-tags",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default_network.name)
/// default = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster-tags",
///     network=default_network.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     tags=pulumi.Output.all(
///         tagKeyShort_name=tag_key.short_name,
///         tagValueShort_name=tag_value.short_name
/// ).apply(lambda resolved_outputs: {
///         f"{project.project_id}/{resolved_outputs['tagKeyShort_name']}": resolved_outputs['tagValueShort_name'],
///     })
/// )
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var tagKey = new Gcp.Tags.TagKey("tag_key", new()
///     {
///         Parent = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         ShortName = "keyname",
///     });
///
///     var tagValue = new Gcp.Tags.TagValue("tag_value", new()
///     {
///         Parent = tagKey.Name.Apply(name => $"tagKeys/{name}"),
///         ShortName = "valuename",
///     });
///
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster-tags",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster-tags",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = defaultNetwork.Name,
///     });
///
///     var @default = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster-tags",
///         Network = defaultNetwork.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         Tags = Output.Tuple(project, tagKey.ShortName, tagValue.ShortName).Apply(values =>
///         {
///             var project = values.Item1;
///             var tagKeyShortName = values.Item2;
///             var tagValueShortName = values.Item3;
///             return
///             {
///                 { $"{project.Apply(getProjectResult => getProjectResult.ProjectId)}/{tagKeyShortName}", tagValueShortName },
///             };
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// tagKey, err := tags.NewTagKey(ctx, "tag_key", &tags.TagKeyArgs{
/// Parent: pulumi.Sprintf("projects/%v", project.Number),
/// ShortName: pulumi.String("keyname"),
/// })
/// if err != nil {
/// return err
/// }
/// tagValue, err := tags.NewTagValue(ctx, "tag_value", &tags.TagValueArgs{
/// Parent: tagKey.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("tagKeys/%v", name), nil
/// }).(pulumi.StringOutput),
/// ShortName: pulumi.String("valuename"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name: pulumi.String("workstation-cluster-tags"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// Name: pulumi.String("workstation-cluster-tags"),
/// IpCidrRange: pulumi.String("10.0.0.0/24"),
/// Region: pulumi.String("us-central1"),
/// Network: defaultNetwork.Name,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// WorkstationClusterId: pulumi.String("workstation-cluster-tags"),
/// Network: defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// Subnetwork: defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// Location: pulumi.String("us-central1"),
/// Tags: pulumi.All(tagKey.ShortName,tagValue.ShortName).ApplyT(func(_args []interface{}) (map[string]string, error) {
/// tagKeyShortName := _args[0].(string)
/// tagValueShortName := _args[1].(string)
/// return map[string]string{
/// fmt.Sprintf("%v/%v", project.ProjectId, tagKeyShortName): tagValueShortName,
/// }, nil
/// }).(pulumi.Map[string]stringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// resource "gcp_tags_tagkey" "tag_key" {
///   parent     ="projects/${data.gcp_organizations_getproject.project.number}"
///   short_name = "keyname"
/// }
/// resource "gcp_tags_tagvalue" "tag_value" {
///   parent     ="tagKeys/${gcp_tags_tagkey.tag_key.name}"
///   short_name = "valuename"
/// }
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster-tags"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
///   tags = {
///     "${data.gcp_organizations_getproject.project.project_id}/${gcp_tags_tagkey.tag_key.short_name}" = gcp_tags_tagvalue.tag_value.short_name
///   }
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster-tags"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster-tags"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var tagKey = new TagKey("tagKey", TagKeyArgs.builder()
///             .parent(String.format("projects/%s", project.number()))
///             .shortName("keyname")
///             .build());
///
///         var tagValue = new TagValue("tagValue", TagValueArgs.builder()
///             .parent(tagKey.name().applyValue(_name -> String.format("tagKeys/%s", _name)))
///             .shortName("valuename")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("workstation-cluster-tags")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster-tags")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(defaultNetwork.name())
///             .build());
///
///         var default_ = new WorkstationCluster("default", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster-tags")
///             .network(defaultNetwork.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .tags(Output.tuple(tagKey.shortName(), tagValue.shortName()).applyValue(values -> {
///                 var tagKeyShortName = values.t1;
///                 var tagValueShortName = values.t2;
///                 return Map.of(String.format("%s/%s", project.projectId(),tagKeyShortName), tagValueShortName);
///             }))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tagKey:
///     type: gcp:tags:TagKey
///     name: tag_key
///     properties:
///       parent: projects/${project.number}
///       shortName: keyname
///   tagValue:
///     type: gcp:tags:TagValue
///     name: tag_value
///     properties:
///       parent: tagKeys/${tagKey.name}
///       shortName: valuename
///   default:
///     type: gcp:workstations:WorkstationCluster
///     properties:
///       workstationClusterId: workstation-cluster-tags
///       network: ${defaultNetwork.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       tags:
///         ${project.projectId}/${tagKey.shortName}: ${tagValue.shortName}
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: workstation-cluster-tags
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster-tags
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${defaultNetwork.name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Workstation Cluster Custom Urls
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "workstations-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstations-network",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: defaultNetwork.name,
/// });
/// const _default = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "custom-urls-cluster",
///     network: defaultNetwork.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     workstationAuthorizationUrl: "https://console.cloud.google.com/workstations/auth",
///     workstationLaunchUrl: "https://console.cloud.google.com/workstations/launch",
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="workstations-network",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstations-network",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default_network.name)
/// default = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="custom-urls-cluster",
///     network=default_network.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     workstation_authorization_url="https://console.cloud.google.com/workstations/auth",
///     workstation_launch_url="https://console.cloud.google.com/workstations/launch")
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
///         Name = "workstations-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstations-network",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = defaultNetwork.Name,
///     });
///
///     var @default = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "custom-urls-cluster",
///         Network = defaultNetwork.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         WorkstationAuthorizationUrl = "https://console.cloud.google.com/workstations/auth",
///         WorkstationLaunchUrl = "https://console.cloud.google.com/workstations/launch",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstations-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstations-network"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     defaultNetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId:        pulumi.String("custom-urls-cluster"),
/// 			Network:                     defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:                  defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:                    pulumi.String("us-central1"),
/// 			WorkstationAuthorizationUrl: pulumi.String("https://console.cloud.google.com/workstations/auth"),
/// 			WorkstationLaunchUrl:        pulumi.String("https://console.cloud.google.com/workstations/launch"),
/// 		})
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
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id        = "custom-urls-cluster"
///   network                       = gcp_compute_network.default.id
///   subnetwork                    = gcp_compute_subnetwork.default.id
///   location                      = "us-central1"
///   workstation_authorization_url = "https://console.cloud.google.com/workstations/auth"
///   workstation_launch_url        = "https://console.cloud.google.com/workstations/launch"
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "workstations-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstations-network"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///             .name("workstations-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstations-network")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(defaultNetwork.name())
///             .build());
///
///         var default_ = new WorkstationCluster("default", WorkstationClusterArgs.builder()
///             .workstationClusterId("custom-urls-cluster")
///             .network(defaultNetwork.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .workstationAuthorizationUrl("https://console.cloud.google.com/workstations/auth")
///             .workstationLaunchUrl("https://console.cloud.google.com/workstations/launch")
///             .build());
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
///     type: gcp:workstations:WorkstationCluster
///     properties:
///       workstationClusterId: custom-urls-cluster
///       network: ${defaultNetwork.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       workstationAuthorizationUrl: https://console.cloud.google.com/workstations/auth
///       workstationLaunchUrl: https://console.cloud.google.com/workstations/launch
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: workstations-network
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstations-network
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${defaultNetwork.name}
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
/// WorkstationCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}`
/// * `{{project}}/{{location}}/{{workstation_cluster_id}}`
/// * `{{location}}/{{workstation_cluster_id}}`
///
///
/// When using the `pulumi import` command, WorkstationCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationCluster:WorkstationCluster default projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}
/// $ pulumi import gcp:workstations/workstationCluster:WorkstationCluster default {{project}}/{{location}}/{{workstation_cluster_id}}
/// $ pulumi import gcp:workstations/workstationCluster:WorkstationCluster default {{location}}/{{workstation_cluster_id}}
/// ```
class WorkstationCluster extends pulumi.CustomResource {
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Status conditions describing the current resource state.
  /// Structure is documented below.
  late final pulumi.Output<List<WorkstationClusterCondition>> conditions;
  /// The private IP address of the control plane for this workstation cluster.
  /// Workstation VMs need access to this IP address to work with the service, so make sure that your firewall rules allow egress from the workstation VMs to this address.
  late final pulumi.Output<String> controlPlaneIp;
  /// Time when this resource was created.
  late final pulumi.Output<String> createTime;
  /// Whether this resource is in degraded mode, in which case it may require user action to restore full functionality.
  /// Details can be found in the conditions field.
  late final pulumi.Output<bool> degraded;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Human-readable name for this resource.
  late final pulumi.Output<String?> displayName;
  /// Configuration options for a custom domain.
  /// Structure is documented below.
  late final pulumi.Output<WorkstationClusterDomainConfig?> domainConfig;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Checksum computed by the server.
  /// May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location where the workstation cluster should reside.
  late final pulumi.Output<String?> location;
  /// The name of the cluster resource.
  late final pulumi.Output<String> name;
  /// The relative resource name of the VPC network on which the instance can be accessed.
  /// It is specified in the following form: "projects/{projectNumber}/global/networks/{network_id}".
  late final pulumi.Output<String> network;
  /// Configuration for private cluster.
  /// Structure is documented below.
  late final pulumi.Output<WorkstationClusterPrivateClusterConfig?> privateClusterConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Name of the Compute Engine subnetwork in which instances associated with this cluster will be created.
  /// Must be part of the subnetwork specified for this cluster.
  late final pulumi.Output<String> subnetwork;
  /// Resource manager tags bound to this resource.
  /// For example:
  /// "123/environment": "production",
  /// "123/costCenter": "marketing"
  late final pulumi.Output<Map<String, String>?> tags;
  /// The system-generated UID of the resource.
  late final pulumi.Output<String> uid;
  /// Specifies the redirect URL for unauthorized requests received by workstation VMs in this cluster.
  /// Redirects to this endpoint will send a base64 encoded `state` query param containing the target workstation name and original request hostname. The endpoint is responsible for retrieving a token using `GenerateAccessToken` and redirecting back to the original hostname with the token.
  late final pulumi.Output<String> workstationAuthorizationUrl;
  /// ID to use for the workstation cluster.
  late final pulumi.Output<String> workstationClusterId;
  /// Specifies the launch URL for workstations in this cluster. Requests sent to unstarted workstations will be redirected to this URL.
  /// Requests redirected to the launch endpoint will be sent with a `workstation` query parameter containing the full workstation resource. The launch endpoint is responsible for starting the workstation, polling it until it reaches `STATE_RUNNING`, and then issuing a redirect to the workstation's host URL.
  late final pulumi.Output<String?> workstationLaunchUrl;

  /// Creates a new [WorkstationCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkstationCluster]. {@macro pulumi_workstations_workstation_cluster_workstation_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkstationCluster(
    String name, {
    WorkstationClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workstations/workstationCluster:WorkstationCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    conditions = registerOutput<List<WorkstationClusterCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationClusterCondition>(guardedValue, (value) => WorkstationClusterCondition.fromMap((value as Map).cast<String, dynamic>())); });
    controlPlaneIp = registerOutput<String>('controlPlaneIp');
    createTime = registerOutput<String>('createTime');
    degraded = registerOutput<bool>('degraded');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    domainConfig = registerOutput<WorkstationClusterDomainConfig?>('domainConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationClusterDomainConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    privateClusterConfig = registerOutput<WorkstationClusterPrivateClusterConfig?>('privateClusterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationClusterPrivateClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    subnetwork = registerOutput<String>('subnetwork');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uid = registerOutput<String>('uid');
    workstationAuthorizationUrl = registerOutput<String>('workstationAuthorizationUrl');
    workstationClusterId = registerOutput<String>('workstationClusterId');
    workstationLaunchUrl = registerOutput<String?>('workstationLaunchUrl');
  }

  /// Gets an existing [WorkstationCluster] resource's state with the given [name] and [id].
  static WorkstationCluster get(
    String name,
    pulumi.Input<String> id, {
    WorkstationClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkstationCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkstationCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workstations/workstationCluster:WorkstationCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    conditions = registerOutput<List<WorkstationClusterCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationClusterCondition>(guardedValue, (value) => WorkstationClusterCondition.fromMap((value as Map).cast<String, dynamic>())); });
    controlPlaneIp = registerOutput<String>('controlPlaneIp');
    createTime = registerOutput<String>('createTime');
    degraded = registerOutput<bool>('degraded');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    domainConfig = registerOutput<WorkstationClusterDomainConfig?>('domainConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationClusterDomainConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    privateClusterConfig = registerOutput<WorkstationClusterPrivateClusterConfig?>('privateClusterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationClusterPrivateClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    subnetwork = registerOutput<String>('subnetwork');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uid = registerOutput<String>('uid');
    workstationAuthorizationUrl = registerOutput<String>('workstationAuthorizationUrl');
    workstationClusterId = registerOutput<String>('workstationClusterId');
    workstationLaunchUrl = registerOutput<String?>('workstationLaunchUrl');
  }

  /// Creates a typed reference to an existing [WorkstationCluster] resource.
  WorkstationCluster.reference(String urn)
    : super(
        'gcp:workstations/workstationCluster:WorkstationCluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    conditions = registerOutput<List<WorkstationClusterCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationClusterCondition>(guardedValue, (value) => WorkstationClusterCondition.fromMap((value as Map).cast<String, dynamic>())); });
    controlPlaneIp = registerOutput<String>('controlPlaneIp');
    createTime = registerOutput<String>('createTime');
    degraded = registerOutput<bool>('degraded');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    domainConfig = registerOutput<WorkstationClusterDomainConfig?>('domainConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationClusterDomainConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    privateClusterConfig = registerOutput<WorkstationClusterPrivateClusterConfig?>('privateClusterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationClusterPrivateClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    subnetwork = registerOutput<String>('subnetwork');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uid = registerOutput<String>('uid');
    workstationAuthorizationUrl = registerOutput<String>('workstationAuthorizationUrl');
    workstationClusterId = registerOutput<String>('workstationClusterId');
    workstationLaunchUrl = registerOutput<String?>('workstationLaunchUrl');
  }
}
