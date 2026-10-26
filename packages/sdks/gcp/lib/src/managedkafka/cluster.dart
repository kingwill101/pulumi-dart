import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_broker_capacity_config.dart';
import 'cluster_capacity_config.dart';
import 'cluster_gcp_config.dart';
import 'cluster_public_cluster_detail.dart';
import 'cluster_rebalance_config.dart';
import 'cluster_state.dart';
import 'cluster_tls_config.dart';

/// A Managed Service for Apache Kafka cluster. Apache Kafka is a trademark owned by the Apache Software Foundation.
///
///
///
/// ## Example Usage
///
/// ### Managedkafka Cluster Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.managedkafka.Cluster("example", {
///     clusterId: "my-cluster",
///     location: "us-central1",
///     capacityConfig: {
///         vcpuCount: "3",
///         memoryBytes: "3221225472",
///     },
///     gcpConfig: {
///         accessConfig: {
///             networkConfigs: [{
///                 subnet: project.then(project => `projects/${project.number}/regions/us-central1/subnetworks/default`),
///             }],
///         },
///     },
///     rebalanceConfig: {
///         mode: "AUTO_REBALANCE_ON_SCALE_UP",
///     },
///     labels: {
///         key: "value",
///     },
///     kafkaVersion: "3.7.x",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.managedkafka.Cluster("example",
///     cluster_id="my-cluster",
///     location="us-central1",
///     capacity_config={
///         "vcpu_count": "3",
///         "memory_bytes": "3221225472",
///     },
///     gcp_config={
///         "access_config": {
///             "network_configs": [{
///                 "subnet": f"projects/{project.number}/regions/us-central1/subnetworks/default",
///             }],
///         },
///     },
///     rebalance_config={
///         "mode": "AUTO_REBALANCE_ON_SCALE_UP",
///     },
///     labels={
///         "key": "value",
///     },
///     kafka_version="3.7.x")
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
///     var example = new Gcp.ManagedKafka.Cluster("example", new()
///     {
///         ClusterId = "my-cluster",
///         Location = "us-central1",
///         CapacityConfig = new Gcp.ManagedKafka.Inputs.ClusterCapacityConfigArgs
///         {
///             VcpuCount = "3",
///             MemoryBytes = "3221225472",
///         },
///         GcpConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigArgs
///         {
///             AccessConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigArgs
///             {
///                 NetworkConfigs = new[]
///                 {
///                     new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigNetworkConfigArgs
///                     {
///                         Subnet = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/regions/us-central1/subnetworks/default",
///                     },
///                 },
///             },
///         },
///         RebalanceConfig = new Gcp.ManagedKafka.Inputs.ClusterRebalanceConfigArgs
///         {
///             Mode = "AUTO_REBALANCE_ON_SCALE_UP",
///         },
///         Labels =
///         {
///             { "key", "value" },
///         },
///         KafkaVersion = "3.7.x",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/managedkafka"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = managedkafka.NewCluster(ctx, "example", &managedkafka.ClusterArgs{
/// 			ClusterId: pulumi.String("my-cluster"),
/// 			Location:  pulumi.String("us-central1"),
/// 			CapacityConfig: &managedkafka.ClusterCapacityConfigArgs{
/// 				VcpuCount:   pulumi.String("3"),
/// 				MemoryBytes: pulumi.String("3221225472"),
/// 			},
/// 			GcpConfig: &managedkafka.ClusterGcpConfigArgs{
/// 				AccessConfig: &managedkafka.ClusterGcpConfigAccessConfigArgs{
/// 					NetworkConfigs: managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArray{
/// 						&managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArgs{
/// 							Subnet: pulumi.Sprintf("projects/%v/regions/us-central1/subnetworks/default", project.Number),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			RebalanceConfig: &managedkafka.ClusterRebalanceConfigArgs{
/// 				Mode: pulumi.String("AUTO_REBALANCE_ON_SCALE_UP"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			KafkaVersion: pulumi.String("3.7.x"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_managedkafka_cluster" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   cluster_id = "my-cluster"
///   location   = "us-central1"
///   capacity_config = {
///     vcpu_count   = 3
///     memory_bytes = 3221225472
///   }
///   gcp_config = {
///     access_config = {
///       network_configs = [{
///         subnet ="projects/${data.gcp_organizations_project.project.number}/regions/us-central1/subnetworks/default"
///       }]
///     }
///   }
///   rebalance_config = {
///     mode = "AUTO_REBALANCE_ON_SCALE_UP"
///   }
///   labels = {
///     "key" = "value"
///   }
///   kafka_version = "3.7.x"
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
/// import com.pulumi.gcp.managedkafka.Cluster;
/// import com.pulumi.gcp.managedkafka.ClusterArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterCapacityConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigNetworkConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterRebalanceConfigArgs;
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterId("my-cluster")
///             .location("us-central1")
///             .capacityConfig(ClusterCapacityConfigArgs.builder()
///                 .vcpuCount("3")
///                 .memoryBytes("3221225472")
///                 .build())
///             .gcpConfig(ClusterGcpConfigArgs.builder()
///                 .accessConfig(ClusterGcpConfigAccessConfigArgs.builder()
///                     .networkConfigs(ClusterGcpConfigAccessConfigNetworkConfigArgs.builder()
///                         .subnet(String.format("projects/%s/regions/us-central1/subnetworks/default", project.number()))
///                         .build())
///                     .build())
///                 .build())
///             .rebalanceConfig(ClusterRebalanceConfigArgs.builder()
///                 .mode("AUTO_REBALANCE_ON_SCALE_UP")
///                 .build())
///             .labels(Map.of("key", "value"))
///             .kafkaVersion("3.7.x")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:managedkafka:Cluster
///     properties:
///       clusterId: my-cluster
///       location: us-central1
///       capacityConfig:
///         vcpuCount: 3
///         memoryBytes: 3.221225472e+09
///       gcpConfig:
///         accessConfig:
///           networkConfigs:
///             - subnet: projects/${project.number}/regions/us-central1/subnetworks/default
///       rebalanceConfig:
///         mode: AUTO_REBALANCE_ON_SCALE_UP
///       labels:
///         key: value
///       kafkaVersion: 3.7.x
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Managedkafka Cluster Mtls
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const caPool = new gcp.certificateauthority.CaPool("ca_pool", {
///     name: "my-ca-pool",
///     location: "us-central1",
///     tier: "ENTERPRISE",
///     publishingOptions: {
///         publishCaCert: true,
///         publishCrl: true,
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.managedkafka.Cluster("example", {
///     clusterId: "my-cluster",
///     location: "us-central1",
///     capacityConfig: {
///         vcpuCount: "3",
///         memoryBytes: "3221225472",
///     },
///     gcpConfig: {
///         accessConfig: {
///             networkConfigs: [{
///                 subnet: project.then(project => `projects/${project.number}/regions/us-central1/subnetworks/default`),
///             }],
///         },
///     },
///     tlsConfig: {
///         trustConfig: {
///             casConfigs: [{
///                 caPool: caPool.id,
///             }],
///         },
///         sslPrincipalMappingRules: "RULE:pattern/replacement/L,DEFAULT",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ca_pool = gcp.certificateauthority.CaPool("ca_pool",
///     name="my-ca-pool",
///     location="us-central1",
///     tier="ENTERPRISE",
///     publishing_options={
///         "publish_ca_cert": True,
///         "publish_crl": True,
///     })
/// project = gcp.organizations.get_project()
/// example = gcp.managedkafka.Cluster("example",
///     cluster_id="my-cluster",
///     location="us-central1",
///     capacity_config={
///         "vcpu_count": "3",
///         "memory_bytes": "3221225472",
///     },
///     gcp_config={
///         "access_config": {
///             "network_configs": [{
///                 "subnet": f"projects/{project.number}/regions/us-central1/subnetworks/default",
///             }],
///         },
///     },
///     tls_config={
///         "trust_config": {
///             "cas_configs": [{
///                 "ca_pool": ca_pool.id,
///             }],
///         },
///         "ssl_principal_mapping_rules": "RULE:pattern/replacement/L,DEFAULT",
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
///     var caPool = new Gcp.CertificateAuthority.CaPool("ca_pool", new()
///     {
///         Name = "my-ca-pool",
///         Location = "us-central1",
///         Tier = "ENTERPRISE",
///         PublishingOptions = new Gcp.CertificateAuthority.Inputs.CaPoolPublishingOptionsArgs
///         {
///             PublishCaCert = true,
///             PublishCrl = true,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.ManagedKafka.Cluster("example", new()
///     {
///         ClusterId = "my-cluster",
///         Location = "us-central1",
///         CapacityConfig = new Gcp.ManagedKafka.Inputs.ClusterCapacityConfigArgs
///         {
///             VcpuCount = "3",
///             MemoryBytes = "3221225472",
///         },
///         GcpConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigArgs
///         {
///             AccessConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigArgs
///             {
///                 NetworkConfigs = new[]
///                 {
///                     new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigNetworkConfigArgs
///                     {
///                         Subnet = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/regions/us-central1/subnetworks/default",
///                     },
///                 },
///             },
///         },
///         TlsConfig = new Gcp.ManagedKafka.Inputs.ClusterTlsConfigArgs
///         {
///             TrustConfig = new Gcp.ManagedKafka.Inputs.ClusterTlsConfigTrustConfigArgs
///             {
///                 CasConfigs = new[]
///                 {
///                     new Gcp.ManagedKafka.Inputs.ClusterTlsConfigTrustConfigCasConfigArgs
///                     {
///                         CaPool = caPool.Id,
///                     },
///                 },
///             },
///             SslPrincipalMappingRules = "RULE:pattern/replacement/L,DEFAULT",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/certificateauthority"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/managedkafka"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		caPool, err := certificateauthority.NewCaPool(ctx, "ca_pool", &certificateauthority.CaPoolArgs{
/// 			Name:     pulumi.String("my-ca-pool"),
/// 			Location: pulumi.String("us-central1"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 			PublishingOptions: &certificateauthority.CaPoolPublishingOptionsArgs{
/// 				PublishCaCert: pulumi.Bool(true),
/// 				PublishCrl:    pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = managedkafka.NewCluster(ctx, "example", &managedkafka.ClusterArgs{
/// 			ClusterId: pulumi.String("my-cluster"),
/// 			Location:  pulumi.String("us-central1"),
/// 			CapacityConfig: &managedkafka.ClusterCapacityConfigArgs{
/// 				VcpuCount:   pulumi.String("3"),
/// 				MemoryBytes: pulumi.String("3221225472"),
/// 			},
/// 			GcpConfig: &managedkafka.ClusterGcpConfigArgs{
/// 				AccessConfig: &managedkafka.ClusterGcpConfigAccessConfigArgs{
/// 					NetworkConfigs: managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArray{
/// 						&managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArgs{
/// 							Subnet: pulumi.Sprintf("projects/%v/regions/us-central1/subnetworks/default", project.Number),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			TlsConfig: &managedkafka.ClusterTlsConfigArgs{
/// 				TrustConfig: &managedkafka.ClusterTlsConfigTrustConfigArgs{
/// 					CasConfigs: managedkafka.ClusterTlsConfigTrustConfigCasConfigArray{
/// 						&managedkafka.ClusterTlsConfigTrustConfigCasConfigArgs{
/// 							CaPool: caPool.ID(),
/// 						},
/// 					},
/// 				},
/// 				SslPrincipalMappingRules: pulumi.String("RULE:pattern/replacement/L,DEFAULT"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_managedkafka_cluster" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   cluster_id = "my-cluster"
///   location   = "us-central1"
///   capacity_config = {
///     vcpu_count   = 3
///     memory_bytes = 3221225472
///   }
///   gcp_config = {
///     access_config = {
///       network_configs = [{
///         subnet ="projects/${data.gcp_organizations_project.project.number}/regions/us-central1/subnetworks/default"
///       }]
///     }
///   }
///   tls_config = {
///     trust_config = {
///       cas_configs = [{
///         ca_pool = gcp_certificateauthority_ca_pool.ca_pool.id
///       }]
///     }
///     ssl_principal_mapping_rules = "RULE:pattern/replacement/L,DEFAULT"
///   }
/// }
/// resource "gcp_certificateauthority_ca_pool" "ca_pool" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "my-ca-pool"
///   location = "us-central1"
///   tier     = "ENTERPRISE"
///   publishing_options = {
///     publish_ca_cert = true
///     publish_crl     = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificateauthority.CaPool;
/// import com.pulumi.gcp.certificateauthority.CaPoolArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolPublishingOptionsArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.managedkafka.Cluster;
/// import com.pulumi.gcp.managedkafka.ClusterArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterCapacityConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigNetworkConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterTlsConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterTlsConfigTrustConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterTlsConfigTrustConfigCasConfigArgs;
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
///         var caPool = new CaPool("caPool", CaPoolArgs.builder()
///             .name("my-ca-pool")
///             .location("us-central1")
///             .tier("ENTERPRISE")
///             .publishingOptions(CaPoolPublishingOptionsArgs.builder()
///                 .publishCaCert(true)
///                 .publishCrl(true)
///                 .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterId("my-cluster")
///             .location("us-central1")
///             .capacityConfig(ClusterCapacityConfigArgs.builder()
///                 .vcpuCount("3")
///                 .memoryBytes("3221225472")
///                 .build())
///             .gcpConfig(ClusterGcpConfigArgs.builder()
///                 .accessConfig(ClusterGcpConfigAccessConfigArgs.builder()
///                     .networkConfigs(ClusterGcpConfigAccessConfigNetworkConfigArgs.builder()
///                         .subnet(String.format("projects/%s/regions/us-central1/subnetworks/default", project.number()))
///                         .build())
///                     .build())
///                 .build())
///             .tlsConfig(ClusterTlsConfigArgs.builder()
///                 .trustConfig(ClusterTlsConfigTrustConfigArgs.builder()
///                     .casConfigs(ClusterTlsConfigTrustConfigCasConfigArgs.builder()
///                         .caPool(caPool.id())
///                         .build())
///                     .build())
///                 .sslPrincipalMappingRules("RULE:pattern/replacement/L,DEFAULT")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:managedkafka:Cluster
///     properties:
///       clusterId: my-cluster
///       location: us-central1
///       capacityConfig:
///         vcpuCount: 3
///         memoryBytes: 3.221225472e+09
///       gcpConfig:
///         accessConfig:
///           networkConfigs:
///             - subnet: projects/${project.number}/regions/us-central1/subnetworks/default
///       tlsConfig:
///         trustConfig:
///           casConfigs:
///             - caPool: ${caPool.id}
///         sslPrincipalMappingRules: RULE:pattern/replacement/L,DEFAULT
///   caPool:
///     type: gcp:certificateauthority:CaPool
///     name: ca_pool
///     properties:
///       name: my-ca-pool
///       location: us-central1
///       tier: ENTERPRISE
///       publishingOptions:
///         publishCaCert: true
///         publishCrl: true
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Managedkafka Cluster Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.managedkafka.Cluster("example", {
///     clusterId: "my-cluster",
///     location: "us-central1",
///     capacityConfig: {
///         vcpuCount: "3",
///         memoryBytes: "3221225472",
///     },
///     gcpConfig: {
///         accessConfig: {
///             networkConfigs: [{
///                 subnet: project.then(project => `projects/${project.number}/regions/us-central1/subnetworks/default`),
///             }],
///         },
///         kmsKey: "example-key",
///     },
/// });
/// const kafkaServiceIdentity = new gcp.projects.ServiceIdentity("kafka_service_identity", {
///     project: project.then(project => project.projectId),
///     service: "managedkafka.googleapis.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.managedkafka.Cluster("example",
///     cluster_id="my-cluster",
///     location="us-central1",
///     capacity_config={
///         "vcpu_count": "3",
///         "memory_bytes": "3221225472",
///     },
///     gcp_config={
///         "access_config": {
///             "network_configs": [{
///                 "subnet": f"projects/{project.number}/regions/us-central1/subnetworks/default",
///             }],
///         },
///         "kms_key": "example-key",
///     })
/// kafka_service_identity = gcp.projects.ServiceIdentity("kafka_service_identity",
///     project=project.project_id,
///     service="managedkafka.googleapis.com")
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
///     var example = new Gcp.ManagedKafka.Cluster("example", new()
///     {
///         ClusterId = "my-cluster",
///         Location = "us-central1",
///         CapacityConfig = new Gcp.ManagedKafka.Inputs.ClusterCapacityConfigArgs
///         {
///             VcpuCount = "3",
///             MemoryBytes = "3221225472",
///         },
///         GcpConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigArgs
///         {
///             AccessConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigArgs
///             {
///                 NetworkConfigs = new[]
///                 {
///                     new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigNetworkConfigArgs
///                     {
///                         Subnet = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/regions/us-central1/subnetworks/default",
///                     },
///                 },
///             },
///             KmsKey = "example-key",
///         },
///     });
///
///     var kafkaServiceIdentity = new Gcp.Projects.ServiceIdentity("kafka_service_identity", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Service = "managedkafka.googleapis.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/managedkafka"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = managedkafka.NewCluster(ctx, "example", &managedkafka.ClusterArgs{
/// 			ClusterId: pulumi.String("my-cluster"),
/// 			Location:  pulumi.String("us-central1"),
/// 			CapacityConfig: &managedkafka.ClusterCapacityConfigArgs{
/// 				VcpuCount:   pulumi.String("3"),
/// 				MemoryBytes: pulumi.String("3221225472"),
/// 			},
/// 			GcpConfig: &managedkafka.ClusterGcpConfigArgs{
/// 				AccessConfig: &managedkafka.ClusterGcpConfigAccessConfigArgs{
/// 					NetworkConfigs: managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArray{
/// 						&managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArgs{
/// 							Subnet: pulumi.Sprintf("projects/%v/regions/us-central1/subnetworks/default", project.Number),
/// 						},
/// 					},
/// 				},
/// 				KmsKey: pulumi.String("example-key"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewServiceIdentity(ctx, "kafka_service_identity", &projects.ServiceIdentityArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Service: pulumi.String("managedkafka.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_managedkafka_cluster" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   cluster_id = "my-cluster"
///   location   = "us-central1"
///   capacity_config = {
///     vcpu_count   = 3
///     memory_bytes = 3221225472
///   }
///   gcp_config = {
///     access_config = {
///       network_configs = [{
///         subnet ="projects/${data.gcp_organizations_project.project.number}/regions/us-central1/subnetworks/default"
///       }]
///     }
///     kms_key = "example-key"
///   }
/// }
/// resource "gcp_projects_service_identity" "kafka_service_identity" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project = data.gcp_organizations_project.project.project_id
///   service = "managedkafka.googleapis.com"
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
/// import com.pulumi.gcp.managedkafka.Cluster;
/// import com.pulumi.gcp.managedkafka.ClusterArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterCapacityConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigNetworkConfigArgs;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterId("my-cluster")
///             .location("us-central1")
///             .capacityConfig(ClusterCapacityConfigArgs.builder()
///                 .vcpuCount("3")
///                 .memoryBytes("3221225472")
///                 .build())
///             .gcpConfig(ClusterGcpConfigArgs.builder()
///                 .accessConfig(ClusterGcpConfigAccessConfigArgs.builder()
///                     .networkConfigs(ClusterGcpConfigAccessConfigNetworkConfigArgs.builder()
///                         .subnet(String.format("projects/%s/regions/us-central1/subnetworks/default", project.number()))
///                         .build())
///                     .build())
///                 .kmsKey("example-key")
///                 .build())
///             .build());
///
///         var kafkaServiceIdentity = new ServiceIdentity("kafkaServiceIdentity", ServiceIdentityArgs.builder()
///             .project(project.projectId())
///             .service("managedkafka.googleapis.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:managedkafka:Cluster
///     properties:
///       clusterId: my-cluster
///       location: us-central1
///       capacityConfig:
///         vcpuCount: 3
///         memoryBytes: 3.221225472e+09
///       gcpConfig:
///         accessConfig:
///           networkConfigs:
///             - subnet: projects/${project.number}/regions/us-central1/subnetworks/default
///         kmsKey: example-key
///   kafkaServiceIdentity:
///     type: gcp:projects:ServiceIdentity
///     name: kafka_service_identity
///     properties:
///       project: ${project.projectId}
///       service: managedkafka.googleapis.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Managedkafka Cluster Public
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.managedkafka.Cluster("example", {
///     clusterId: "my-cluster",
///     location: "us-central1",
///     capacityConfig: {
///         vcpuCount: "3",
///         memoryBytes: "3221225472",
///     },
///     gcpConfig: {
///         accessConfig: {
///             networkConfigs: [{
///                 subnet: project.then(project => `projects/${project.number}/regions/us-central1/subnetworks/default`),
///             }],
///             publicClusterConfig: {
///                 allowedSourceIpRanges: ["192.168.1.0/24"],
///             },
///         },
///     },
///     rebalanceConfig: {
///         mode: "AUTO_REBALANCE_ON_SCALE_UP",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.managedkafka.Cluster("example",
///     cluster_id="my-cluster",
///     location="us-central1",
///     capacity_config={
///         "vcpu_count": "3",
///         "memory_bytes": "3221225472",
///     },
///     gcp_config={
///         "access_config": {
///             "network_configs": [{
///                 "subnet": f"projects/{project.number}/regions/us-central1/subnetworks/default",
///             }],
///             "public_cluster_config": {
///                 "allowed_source_ip_ranges": ["192.168.1.0/24"],
///             },
///         },
///     },
///     rebalance_config={
///         "mode": "AUTO_REBALANCE_ON_SCALE_UP",
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.ManagedKafka.Cluster("example", new()
///     {
///         ClusterId = "my-cluster",
///         Location = "us-central1",
///         CapacityConfig = new Gcp.ManagedKafka.Inputs.ClusterCapacityConfigArgs
///         {
///             VcpuCount = "3",
///             MemoryBytes = "3221225472",
///         },
///         GcpConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigArgs
///         {
///             AccessConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigArgs
///             {
///                 NetworkConfigs = new[]
///                 {
///                     new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigNetworkConfigArgs
///                     {
///                         Subnet = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/regions/us-central1/subnetworks/default",
///                     },
///                 },
///                 PublicClusterConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigPublicClusterConfigArgs
///                 {
///                     AllowedSourceIpRanges = new[]
///                     {
///                         "192.168.1.0/24",
///                     },
///                 },
///             },
///         },
///         RebalanceConfig = new Gcp.ManagedKafka.Inputs.ClusterRebalanceConfigArgs
///         {
///             Mode = "AUTO_REBALANCE_ON_SCALE_UP",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/managedkafka"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = managedkafka.NewCluster(ctx, "example", &managedkafka.ClusterArgs{
/// 			ClusterId: pulumi.String("my-cluster"),
/// 			Location:  pulumi.String("us-central1"),
/// 			CapacityConfig: &managedkafka.ClusterCapacityConfigArgs{
/// 				VcpuCount:   pulumi.String("3"),
/// 				MemoryBytes: pulumi.String("3221225472"),
/// 			},
/// 			GcpConfig: &managedkafka.ClusterGcpConfigArgs{
/// 				AccessConfig: &managedkafka.ClusterGcpConfigAccessConfigArgs{
/// 					NetworkConfigs: managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArray{
/// 						&managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArgs{
/// 							Subnet: pulumi.Sprintf("projects/%v/regions/us-central1/subnetworks/default", project.Number),
/// 						},
/// 					},
/// 					PublicClusterConfig: &managedkafka.ClusterGcpConfigAccessConfigPublicClusterConfigArgs{
/// 						AllowedSourceIpRanges: pulumi.StringArray{
/// 							pulumi.String("192.168.1.0/24"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			RebalanceConfig: &managedkafka.ClusterRebalanceConfigArgs{
/// 				Mode: pulumi.String("AUTO_REBALANCE_ON_SCALE_UP"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_managedkafka_cluster" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   cluster_id = "my-cluster"
///   location   = "us-central1"
///   capacity_config = {
///     vcpu_count   = 3
///     memory_bytes = 3221225472
///   }
///   gcp_config = {
///     access_config = {
///       network_configs = [{
///         subnet ="projects/${data.gcp_organizations_project.project.number}/regions/us-central1/subnetworks/default"
///       }]
///       public_cluster_config = {
///         allowed_source_ip_ranges = ["192.168.1.0/24"]
///       }
///     }
///   }
///   rebalance_config = {
///     mode = "AUTO_REBALANCE_ON_SCALE_UP"
///   }
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
/// import com.pulumi.gcp.managedkafka.Cluster;
/// import com.pulumi.gcp.managedkafka.ClusterArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterCapacityConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigNetworkConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigPublicClusterConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterRebalanceConfigArgs;
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterId("my-cluster")
///             .location("us-central1")
///             .capacityConfig(ClusterCapacityConfigArgs.builder()
///                 .vcpuCount("3")
///                 .memoryBytes("3221225472")
///                 .build())
///             .gcpConfig(ClusterGcpConfigArgs.builder()
///                 .accessConfig(ClusterGcpConfigAccessConfigArgs.builder()
///                     .networkConfigs(ClusterGcpConfigAccessConfigNetworkConfigArgs.builder()
///                         .subnet(String.format("projects/%s/regions/us-central1/subnetworks/default", project.number()))
///                         .build())
///                     .publicClusterConfig(ClusterGcpConfigAccessConfigPublicClusterConfigArgs.builder()
///                         .allowedSourceIpRanges("192.168.1.0/24")
///                         .build())
///                     .build())
///                 .build())
///             .rebalanceConfig(ClusterRebalanceConfigArgs.builder()
///                 .mode("AUTO_REBALANCE_ON_SCALE_UP")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:managedkafka:Cluster
///     properties:
///       clusterId: my-cluster
///       location: us-central1
///       capacityConfig:
///         vcpuCount: 3
///         memoryBytes: 3.221225472e+09
///       gcpConfig:
///         accessConfig:
///           networkConfigs:
///             - subnet: projects/${project.number}/regions/us-central1/subnetworks/default
///           publicClusterConfig:
///             allowedSourceIpRanges:
///               - 192.168.1.0/24
///       rebalanceConfig:
///         mode: AUTO_REBALANCE_ON_SCALE_UP
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
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster_id}}`
/// * `{{project}}/{{location}}/{{cluster_id}}`
/// * `{{location}}/{{cluster_id}}`
///
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:managedkafka/cluster:Cluster default projects/{{project}}/locations/{{location}}/clusters/{{cluster_id}}
/// $ pulumi import gcp:managedkafka/cluster:Cluster default {{project}}/{{location}}/{{cluster_id}}
/// $ pulumi import gcp:managedkafka/cluster:Cluster default {{location}}/{{cluster_id}}
/// ```
class Cluster extends pulumi.CustomResource {
  /// The bootstrap address of the Kafka cluster. Use port :9092 for SASL connection and :9192 for mTLS connection
  late final pulumi.Output<String> bootstrapAddress;
  /// Capacity configuration at a per-broker level within the Kafka cluster. The config will be appled to each broker in the cluster.
  /// Structure is documented below.
  late final pulumi.Output<ClusterBrokerCapacityConfig?> brokerCapacityConfig;
  /// A capacity configuration of a Kafka cluster.
  /// Structure is documented below.
  late final pulumi.Output<ClusterCapacityConfig> capacityConfig;
  /// The ID to use for the cluster, which will become the final component of the cluster's name. The ID must be 1-63 characters long, and match the regular expression `a-z?` to comply with RFC 1035. This value is structured like: `my-cluster-id`.
  late final pulumi.Output<String> clusterId;
  /// The time when the cluster was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Configuration properties for a Kafka cluster deployed to Google Cloud Platform.
  /// Structure is documented below.
  late final pulumi.Output<ClusterGcpConfig> gcpConfig;
  /// The Apache Kafka version of the cluster (for example, `3.7.x`, `4.3.x`). If not specified during cluster creation, defaults to `3.7.x`.
  late final pulumi.Output<String> kafkaVersion;
  /// List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  late final pulumi.Output<String> location;
  /// The name of the cluster. Structured like: `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Details of the public cluster feature for the Kafka cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterPublicClusterDetail>> publicClusterDetails;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Defines rebalancing behavior of a Kafka cluster.
  /// Structure is documented below.
  late final pulumi.Output<ClusterRebalanceConfig?> rebalanceConfig;
  /// The current state of the cluster. Possible values: `STATE_UNSPECIFIED`, `CREATING`, `ACTIVE`, `DELETING`.
  late final pulumi.Output<String> state;
  /// TLS configuration for the Kafka cluster. This is used to configure mTLS authentication. To clear our a TLS configuration that has been previously set, please explicitly add an empty `tlsConfig` block.
  /// Structure is documented below.
  late final pulumi.Output<ClusterTlsConfig> tlsConfig;
  /// The time when the cluster was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_managedkafka_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    bootstrapAddress = registerOutput<String>('bootstrapAddress');
    brokerCapacityConfig = registerOutput<ClusterBrokerCapacityConfig?>('brokerCapacityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterBrokerCapacityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityConfig = registerOutput<ClusterCapacityConfig>('capacityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCapacityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterId = registerOutput<String>('clusterId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gcpConfig = registerOutput<ClusterGcpConfig>('gcpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterGcpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kafkaVersion = registerOutput<String>('kafkaVersion');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publicClusterDetails = registerOutput<List<ClusterPublicClusterDetail>>('publicClusterDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterPublicClusterDetail>(guardedValue, (value) => ClusterPublicClusterDetail.fromMap((value as Map).cast<String, dynamic>())); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    rebalanceConfig = registerOutput<ClusterRebalanceConfig?>('rebalanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRebalanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    tlsConfig = registerOutput<ClusterTlsConfig>('tlsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterTlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bootstrapAddress = registerOutput<String>('bootstrapAddress');
    brokerCapacityConfig = registerOutput<ClusterBrokerCapacityConfig?>('brokerCapacityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterBrokerCapacityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityConfig = registerOutput<ClusterCapacityConfig>('capacityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCapacityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterId = registerOutput<String>('clusterId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gcpConfig = registerOutput<ClusterGcpConfig>('gcpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterGcpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kafkaVersion = registerOutput<String>('kafkaVersion');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publicClusterDetails = registerOutput<List<ClusterPublicClusterDetail>>('publicClusterDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterPublicClusterDetail>(guardedValue, (value) => ClusterPublicClusterDetail.fromMap((value as Map).cast<String, dynamic>())); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    rebalanceConfig = registerOutput<ClusterRebalanceConfig?>('rebalanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRebalanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
    tlsConfig = registerOutput<ClusterTlsConfig>('tlsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterTlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Cluster] resource.
  Cluster.reference(String urn)
    : super(
        'gcp:managedkafka/cluster:Cluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    bootstrapAddress = registerOutput<String>('bootstrapAddress');
    brokerCapacityConfig = registerOutput<ClusterBrokerCapacityConfig?>('brokerCapacityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterBrokerCapacityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityConfig = registerOutput<ClusterCapacityConfig>('capacityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCapacityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterId = registerOutput<String>('clusterId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gcpConfig = registerOutput<ClusterGcpConfig>('gcpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterGcpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kafkaVersion = registerOutput<String>('kafkaVersion');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publicClusterDetails = registerOutput<List<ClusterPublicClusterDetail>>('publicClusterDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterPublicClusterDetail>(guardedValue, (value) => ClusterPublicClusterDetail.fromMap((value as Map).cast<String, dynamic>())); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    rebalanceConfig = registerOutput<ClusterRebalanceConfig?>('rebalanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRebalanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    tlsConfig = registerOutput<ClusterTlsConfig>('tlsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterTlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }
}
