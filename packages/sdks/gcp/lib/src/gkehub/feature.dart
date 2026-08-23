import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_args.dart';
import 'feature_fleet_default_member_config.dart';
import 'feature_gkehub_state.dart';
import 'feature_spec.dart';

/// Feature represents the settings and status of any Hub Feature.
///
///
/// To get more information about Feature, see:
///
/// * [API documentation](https://cloud.google.com/anthos/fleet-management/docs/reference/rest/v1/projects.locations.features)
/// * How-to Guides
/// * [Registering a Cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Feature Multi Cluster Ingress
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster = new gcp.container.Cluster("cluster", {
///     name: "my-cluster",
///     location: "us-central1-a",
///     initialNodeCount: 1,
/// });
/// const membership = new gcp.gkehub.Membership("membership", {
///     membershipId: "my-membership",
///     endpoint: {
///         gkeCluster: {
///             resourceLink: pulumi.interpolate`//container.googleapis.com/${cluster.id}`,
///         },
///     },
/// });
/// const feature = new gcp.gkehub.Feature("feature", {
///     name: "multiclusteringress",
///     location: "global",
///     spec: {
///         multiclusteringress: {
///             configMembership: membership.id,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster = gcp.container.Cluster("cluster",
///     name="my-cluster",
///     location="us-central1-a",
///     initial_node_count=1)
/// membership = gcp.gkehub.Membership("membership",
///     membership_id="my-membership",
///     endpoint={
///         "gke_cluster": {
///             "resource_link": cluster.id.apply(lambda id: f"//container.googleapis.com/{id}"),
///         },
///     })
/// feature = gcp.gkehub.Feature("feature",
///     name="multiclusteringress",
///     location="global",
///     spec={
///         "multiclusteringress": {
///             "config_membership": membership.id,
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
///     var cluster = new Gcp.Container.Cluster("cluster", new()
///     {
///         Name = "my-cluster",
///         Location = "us-central1-a",
///         InitialNodeCount = 1,
///     });
///
///     var membership = new Gcp.GkeHub.Membership("membership", new()
///     {
///         MembershipId = "my-membership",
///         Endpoint = new Gcp.GkeHub.Inputs.MembershipEndpointArgs
///         {
///             GkeCluster = new Gcp.GkeHub.Inputs.MembershipEndpointGkeClusterArgs
///             {
///                 ResourceLink = cluster.Id.Apply(id => $"//container.googleapis.com/{id}"),
///             },
///         },
///     });
///
///     var feature = new Gcp.GkeHub.Feature("feature", new()
///     {
///         Name = "multiclusteringress",
///         Location = "global",
///         Spec = new Gcp.GkeHub.Inputs.FeatureSpecArgs
///         {
///             Multiclusteringress = new Gcp.GkeHub.Inputs.FeatureSpecMulticlusteringressArgs
///             {
///                 ConfigMembership = membership.Id,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cluster, err := container.NewCluster(ctx, "cluster", &container.ClusterArgs{
/// 			Name:             pulumi.String("my-cluster"),
/// 			Location:         pulumi.String("us-central1-a"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		membership, err := gkehub.NewMembership(ctx, "membership", &gkehub.MembershipArgs{
/// 			MembershipId: pulumi.String("my-membership"),
/// 			Endpoint: &gkehub.MembershipEndpointArgs{
/// 				GkeCluster: &gkehub.MembershipEndpointGkeClusterArgs{
/// 					ResourceLink: cluster.ID().ApplyT(func(id pulumi.ID) (string, error) {
/// 						return fmt.Sprintf("//container.googleapis.com/%v", id), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("multiclusteringress"),
/// 			Location: pulumi.String("global"),
/// 			Spec: &gkehub.FeatureSpecArgs{
/// 				Multiclusteringress: &gkehub.FeatureSpecMulticlusteringressArgs{
/// 					ConfigMembership: membership.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_container_cluster" "cluster" {
///   name               = "my-cluster"
///   location           = "us-central1-a"
///   initial_node_count = 1
/// }
/// resource "gcp_gkehub_membership" "membership" {
///   membership_id = "my-membership"
///   endpoint = {
///     gke_cluster = {
///       resource_link ="//container.googleapis.com/${gcp_container_cluster.cluster.id}"
///     }
///   }
/// }
/// resource "gcp_gkehub_feature" "feature" {
///   name     = "multiclusteringress"
///   location = "global"
///   spec = {
///     multiclusteringress = {
///       config_membership = gcp_gkehub_membership.membership.id
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
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.gkehub.Membership;
/// import com.pulumi.gcp.gkehub.MembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointGkeClusterArgs;
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecMulticlusteringressArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .name("my-cluster")
///             .location("us-central1-a")
///             .initialNodeCount(1)
///             .build());
///
///         var membership = new Membership("membership", MembershipArgs.builder()
///             .membershipId("my-membership")
///             .endpoint(MembershipEndpointArgs.builder()
///                 .gkeCluster(MembershipEndpointGkeClusterArgs.builder()
///                     .resourceLink(cluster.id().applyValue(_id -> String.format("//container.googleapis.com/%s", _id)))
///                     .build())
///                 .build())
///             .build());
///
///         var feature = new Feature("feature", FeatureArgs.builder()
///             .name("multiclusteringress")
///             .location("global")
///             .spec(FeatureSpecArgs.builder()
///                 .multiclusteringress(FeatureSpecMulticlusteringressArgs.builder()
///                     .configMembership(membership.id())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster:
///     type: gcp:container:Cluster
///     properties:
///       name: my-cluster
///       location: us-central1-a
///       initialNodeCount: 1
///   membership:
///     type: gcp:gkehub:Membership
///     properties:
///       membershipId: my-membership
///       endpoint:
///         gkeCluster:
///           resourceLink: //container.googleapis.com/${cluster.id}
///   feature:
///     type: gcp:gkehub:Feature
///     properties:
///       name: multiclusteringress
///       location: global
///       spec:
///         multiclusteringress:
///           configMembership: ${membership.id}
/// ```
///
/// ### Gkehub Feature Multi Cluster Service Discovery
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const feature = new gcp.gkehub.Feature("feature", {
///     name: "multiclusterservicediscovery",
///     location: "global",
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// feature = gcp.gkehub.Feature("feature",
///     name="multiclusterservicediscovery",
///     location="global",
///     labels={
///         "foo": "bar",
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
///     var feature = new Gcp.GkeHub.Feature("feature", new()
///     {
///         Name = "multiclusterservicediscovery",
///         Location = "global",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("multiclusterservicediscovery"),
/// 			Location: pulumi.String("global"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// resource "gcp_gkehub_feature" "feature" {
///   name     = "multiclusterservicediscovery"
///   location = "global"
///   labels = {
///     "foo" = "bar"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
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
///         var feature = new Feature("feature", FeatureArgs.builder()
///             .name("multiclusterservicediscovery")
///             .location("global")
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   feature:
///     type: gcp:gkehub:Feature
///     properties:
///       name: multiclusterservicediscovery
///       location: global
///       labels:
///         foo: bar
/// ```
///
/// ### Gkehub Feature Anthos Service Mesh
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const feature = new gcp.gkehub.Feature("feature", {
///     name: "servicemesh",
///     location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// feature = gcp.gkehub.Feature("feature",
///     name="servicemesh",
///     location="global")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var feature = new Gcp.GkeHub.Feature("feature", new()
///     {
///         Name = "servicemesh",
///         Location = "global",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("servicemesh"),
/// 			Location: pulumi.String("global"),
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
/// resource "gcp_gkehub_feature" "feature" {
///   name     = "servicemesh"
///   location = "global"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
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
///         var feature = new Feature("feature", FeatureArgs.builder()
///             .name("servicemesh")
///             .location("global")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   feature:
///     type: gcp:gkehub:Feature
///     properties:
///       name: servicemesh
///       location: global
/// ```
///
/// ### Enable Fleet Observability For Default Logs With Copy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const feature = new gcp.gkehub.Feature("feature", {
///     name: "fleetobservability",
///     location: "global",
///     spec: {
///         fleetobservability: {
///             loggingConfig: {
///                 defaultConfig: {
///                     mode: "COPY",
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// feature = gcp.gkehub.Feature("feature",
///     name="fleetobservability",
///     location="global",
///     spec={
///         "fleetobservability": {
///             "logging_config": {
///                 "default_config": {
///                     "mode": "COPY",
///                 },
///             },
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
///     var feature = new Gcp.GkeHub.Feature("feature", new()
///     {
///         Name = "fleetobservability",
///         Location = "global",
///         Spec = new Gcp.GkeHub.Inputs.FeatureSpecArgs
///         {
///             Fleetobservability = new Gcp.GkeHub.Inputs.FeatureSpecFleetobservabilityArgs
///             {
///                 LoggingConfig = new Gcp.GkeHub.Inputs.FeatureSpecFleetobservabilityLoggingConfigArgs
///                 {
///                     DefaultConfig = new Gcp.GkeHub.Inputs.FeatureSpecFleetobservabilityLoggingConfigDefaultConfigArgs
///                     {
///                         Mode = "COPY",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("fleetobservability"),
/// 			Location: pulumi.String("global"),
/// 			Spec: &gkehub.FeatureSpecArgs{
/// 				Fleetobservability: &gkehub.FeatureSpecFleetobservabilityArgs{
/// 					LoggingConfig: &gkehub.FeatureSpecFleetobservabilityLoggingConfigArgs{
/// 						DefaultConfig: &gkehub.FeatureSpecFleetobservabilityLoggingConfigDefaultConfigArgs{
/// 							Mode: pulumi.String("COPY"),
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
/// resource "gcp_gkehub_feature" "feature" {
///   name     = "fleetobservability"
///   location = "global"
///   spec = {
///     fleetobservability = {
///       logging_config = {
///         default_config = {
///           mode = "COPY"
///         }
///       }
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
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecFleetobservabilityArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecFleetobservabilityLoggingConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecFleetobservabilityLoggingConfigDefaultConfigArgs;
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
///         var feature = new Feature("feature", FeatureArgs.builder()
///             .name("fleetobservability")
///             .location("global")
///             .spec(FeatureSpecArgs.builder()
///                 .fleetobservability(FeatureSpecFleetobservabilityArgs.builder()
///                     .loggingConfig(FeatureSpecFleetobservabilityLoggingConfigArgs.builder()
///                         .defaultConfig(FeatureSpecFleetobservabilityLoggingConfigDefaultConfigArgs.builder()
///                             .mode("COPY")
///                             .build())
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
///   feature:
///     type: gcp:gkehub:Feature
///     properties:
///       name: fleetobservability
///       location: global
///       spec:
///         fleetobservability:
///           loggingConfig:
///             defaultConfig:
///               mode: COPY
/// ```
///
/// ### Enable Fleet Observability For Scope Logs With Move
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const feature = new gcp.gkehub.Feature("feature", {
///     name: "fleetobservability",
///     location: "global",
///     spec: {
///         fleetobservability: {
///             loggingConfig: {
///                 fleetScopeLogsConfig: {
///                     mode: "MOVE",
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// feature = gcp.gkehub.Feature("feature",
///     name="fleetobservability",
///     location="global",
///     spec={
///         "fleetobservability": {
///             "logging_config": {
///                 "fleet_scope_logs_config": {
///                     "mode": "MOVE",
///                 },
///             },
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
///     var feature = new Gcp.GkeHub.Feature("feature", new()
///     {
///         Name = "fleetobservability",
///         Location = "global",
///         Spec = new Gcp.GkeHub.Inputs.FeatureSpecArgs
///         {
///             Fleetobservability = new Gcp.GkeHub.Inputs.FeatureSpecFleetobservabilityArgs
///             {
///                 LoggingConfig = new Gcp.GkeHub.Inputs.FeatureSpecFleetobservabilityLoggingConfigArgs
///                 {
///                     FleetScopeLogsConfig = new Gcp.GkeHub.Inputs.FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfigArgs
///                     {
///                         Mode = "MOVE",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("fleetobservability"),
/// 			Location: pulumi.String("global"),
/// 			Spec: &gkehub.FeatureSpecArgs{
/// 				Fleetobservability: &gkehub.FeatureSpecFleetobservabilityArgs{
/// 					LoggingConfig: &gkehub.FeatureSpecFleetobservabilityLoggingConfigArgs{
/// 						FleetScopeLogsConfig: &gkehub.FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfigArgs{
/// 							Mode: pulumi.String("MOVE"),
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
/// resource "gcp_gkehub_feature" "feature" {
///   name     = "fleetobservability"
///   location = "global"
///   spec = {
///     fleetobservability = {
///       logging_config = {
///         fleet_scope_logs_config = {
///           mode = "MOVE"
///         }
///       }
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
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecFleetobservabilityArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecFleetobservabilityLoggingConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfigArgs;
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
///         var feature = new Feature("feature", FeatureArgs.builder()
///             .name("fleetobservability")
///             .location("global")
///             .spec(FeatureSpecArgs.builder()
///                 .fleetobservability(FeatureSpecFleetobservabilityArgs.builder()
///                     .loggingConfig(FeatureSpecFleetobservabilityLoggingConfigArgs.builder()
///                         .fleetScopeLogsConfig(FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfigArgs.builder()
///                             .mode("MOVE")
///                             .build())
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
///   feature:
///     type: gcp:gkehub:Feature
///     properties:
///       name: fleetobservability
///       location: global
///       spec:
///         fleetobservability:
///           loggingConfig:
///             fleetScopeLogsConfig:
///               mode: MOVE
/// ```
///
/// ### Enable Fleet Observability For Both Default And Scope Logs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const feature = new gcp.gkehub.Feature("feature", {
///     name: "fleetobservability",
///     location: "global",
///     spec: {
///         fleetobservability: {
///             loggingConfig: {
///                 defaultConfig: {
///                     mode: "COPY",
///                 },
///                 fleetScopeLogsConfig: {
///                     mode: "MOVE",
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// feature = gcp.gkehub.Feature("feature",
///     name="fleetobservability",
///     location="global",
///     spec={
///         "fleetobservability": {
///             "logging_config": {
///                 "default_config": {
///                     "mode": "COPY",
///                 },
///                 "fleet_scope_logs_config": {
///                     "mode": "MOVE",
///                 },
///             },
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
///     var feature = new Gcp.GkeHub.Feature("feature", new()
///     {
///         Name = "fleetobservability",
///         Location = "global",
///         Spec = new Gcp.GkeHub.Inputs.FeatureSpecArgs
///         {
///             Fleetobservability = new Gcp.GkeHub.Inputs.FeatureSpecFleetobservabilityArgs
///             {
///                 LoggingConfig = new Gcp.GkeHub.Inputs.FeatureSpecFleetobservabilityLoggingConfigArgs
///                 {
///                     DefaultConfig = new Gcp.GkeHub.Inputs.FeatureSpecFleetobservabilityLoggingConfigDefaultConfigArgs
///                     {
///                         Mode = "COPY",
///                     },
///                     FleetScopeLogsConfig = new Gcp.GkeHub.Inputs.FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfigArgs
///                     {
///                         Mode = "MOVE",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("fleetobservability"),
/// 			Location: pulumi.String("global"),
/// 			Spec: &gkehub.FeatureSpecArgs{
/// 				Fleetobservability: &gkehub.FeatureSpecFleetobservabilityArgs{
/// 					LoggingConfig: &gkehub.FeatureSpecFleetobservabilityLoggingConfigArgs{
/// 						DefaultConfig: &gkehub.FeatureSpecFleetobservabilityLoggingConfigDefaultConfigArgs{
/// 							Mode: pulumi.String("COPY"),
/// 						},
/// 						FleetScopeLogsConfig: &gkehub.FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfigArgs{
/// 							Mode: pulumi.String("MOVE"),
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
/// resource "gcp_gkehub_feature" "feature" {
///   name     = "fleetobservability"
///   location = "global"
///   spec = {
///     fleetobservability = {
///       logging_config = {
///         default_config = {
///           mode = "COPY"
///         }
///         fleet_scope_logs_config = {
///           mode = "MOVE"
///         }
///       }
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
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecFleetobservabilityArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecFleetobservabilityLoggingConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecFleetobservabilityLoggingConfigDefaultConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfigArgs;
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
///         var feature = new Feature("feature", FeatureArgs.builder()
///             .name("fleetobservability")
///             .location("global")
///             .spec(FeatureSpecArgs.builder()
///                 .fleetobservability(FeatureSpecFleetobservabilityArgs.builder()
///                     .loggingConfig(FeatureSpecFleetobservabilityLoggingConfigArgs.builder()
///                         .defaultConfig(FeatureSpecFleetobservabilityLoggingConfigDefaultConfigArgs.builder()
///                             .mode("COPY")
///                             .build())
///                         .fleetScopeLogsConfig(FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfigArgs.builder()
///                             .mode("MOVE")
///                             .build())
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
///   feature:
///     type: gcp:gkehub:Feature
///     properties:
///       name: fleetobservability
///       location: global
///       spec:
///         fleetobservability:
///           loggingConfig:
///             defaultConfig:
///               mode: COPY
///             fleetScopeLogsConfig:
///               mode: MOVE
/// ```
///
/// ### Enable Fleet Default Member Config Service Mesh
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const feature = new gcp.gkehub.Feature("feature", {
///     name: "servicemesh",
///     location: "global",
///     fleetDefaultMemberConfig: {
///         mesh: {
///             management: "MANAGEMENT_AUTOMATIC",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// feature = gcp.gkehub.Feature("feature",
///     name="servicemesh",
///     location="global",
///     fleet_default_member_config={
///         "mesh": {
///             "management": "MANAGEMENT_AUTOMATIC",
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
///     var feature = new Gcp.GkeHub.Feature("feature", new()
///     {
///         Name = "servicemesh",
///         Location = "global",
///         FleetDefaultMemberConfig = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigArgs
///         {
///             Mesh = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigMeshArgs
///             {
///                 Management = "MANAGEMENT_AUTOMATIC",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("servicemesh"),
/// 			Location: pulumi.String("global"),
/// 			FleetDefaultMemberConfig: &gkehub.FeatureFleetDefaultMemberConfigArgs{
/// 				Mesh: &gkehub.FeatureFleetDefaultMemberConfigMeshArgs{
/// 					Management: pulumi.String("MANAGEMENT_AUTOMATIC"),
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
/// resource "gcp_gkehub_feature" "feature" {
///   name     = "servicemesh"
///   location = "global"
///   fleet_default_member_config = {
///     mesh = {
///       management = "MANAGEMENT_AUTOMATIC"
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
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigMeshArgs;
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
///         var feature = new Feature("feature", FeatureArgs.builder()
///             .name("servicemesh")
///             .location("global")
///             .fleetDefaultMemberConfig(FeatureFleetDefaultMemberConfigArgs.builder()
///                 .mesh(FeatureFleetDefaultMemberConfigMeshArgs.builder()
///                     .management("MANAGEMENT_AUTOMATIC")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   feature:
///     type: gcp:gkehub:Feature
///     properties:
///       name: servicemesh
///       location: global
///       fleetDefaultMemberConfig:
///         mesh:
///           management: MANAGEMENT_AUTOMATIC
/// ```
///
/// ### Enable Fleet Default Member Config Configmanagement
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const feature = new gcp.gkehub.Feature("feature", {
///     name: "configmanagement",
///     location: "global",
///     fleetDefaultMemberConfig: {
///         configmanagement: {
///             configSync: {
///                 git: {
///                     syncRepo: "https://github.com/hashicorp/terraform",
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// feature = gcp.gkehub.Feature("feature",
///     name="configmanagement",
///     location="global",
///     fleet_default_member_config={
///         "configmanagement": {
///             "config_sync": {
///                 "git": {
///                     "sync_repo": "https://github.com/hashicorp/terraform",
///                 },
///             },
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
///     var feature = new Gcp.GkeHub.Feature("feature", new()
///     {
///         Name = "configmanagement",
///         Location = "global",
///         FleetDefaultMemberConfig = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigArgs
///         {
///             Configmanagement = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigConfigmanagementArgs
///             {
///                 ConfigSync = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncArgs
///                 {
///                     Git = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGitArgs
///                     {
///                         SyncRepo = "https://github.com/hashicorp/terraform",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("configmanagement"),
/// 			Location: pulumi.String("global"),
/// 			FleetDefaultMemberConfig: &gkehub.FeatureFleetDefaultMemberConfigArgs{
/// 				Configmanagement: &gkehub.FeatureFleetDefaultMemberConfigConfigmanagementArgs{
/// 					ConfigSync: &gkehub.FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncArgs{
/// 						Git: &gkehub.FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGitArgs{
/// 							SyncRepo: pulumi.String("https://github.com/hashicorp/terraform"),
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
/// resource "gcp_gkehub_feature" "feature" {
///   name     = "configmanagement"
///   location = "global"
///   fleet_default_member_config = {
///     configmanagement = {
///       config_sync = {
///         git = {
///           sync_repo = "https://github.com/hashicorp/terraform"
///         }
///       }
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
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigConfigmanagementArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGitArgs;
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
///         var feature = new Feature("feature", FeatureArgs.builder()
///             .name("configmanagement")
///             .location("global")
///             .fleetDefaultMemberConfig(FeatureFleetDefaultMemberConfigArgs.builder()
///                 .configmanagement(FeatureFleetDefaultMemberConfigConfigmanagementArgs.builder()
///                     .configSync(FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncArgs.builder()
///                         .git(FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGitArgs.builder()
///                             .syncRepo("https://github.com/hashicorp/terraform")
///                             .build())
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
///   feature:
///     type: gcp:gkehub:Feature
///     properties:
///       name: configmanagement
///       location: global
///       fleetDefaultMemberConfig:
///         configmanagement:
///           configSync:
///             git:
///               syncRepo: https://github.com/hashicorp/terraform
/// ```
///
/// ### Enable Fleet Default Member Config Policycontroller
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const feature = new gcp.gkehub.Feature("feature", {
///     name: "policycontroller",
///     location: "global",
///     fleetDefaultMemberConfig: {
///         policycontroller: {
///             policyControllerHubConfig: {
///                 installSpec: "INSTALL_SPEC_ENABLED",
///                 exemptableNamespaces: ["foo"],
///                 policyContent: {
///                     bundles: [{
///                         bundle: "policy-essentials-v2022",
///                         exemptedNamespaces: [
///                             "foo",
///                             "bar",
///                         ],
///                     }],
///                     templateLibrary: {
///                         installation: "ALL",
///                     },
///                 },
///                 auditIntervalSeconds: 30,
///                 referentialRulesEnabled: true,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// feature = gcp.gkehub.Feature("feature",
///     name="policycontroller",
///     location="global",
///     fleet_default_member_config={
///         "policycontroller": {
///             "policy_controller_hub_config": {
///                 "install_spec": "INSTALL_SPEC_ENABLED",
///                 "exemptable_namespaces": ["foo"],
///                 "policy_content": {
///                     "bundles": [{
///                         "bundle": "policy-essentials-v2022",
///                         "exempted_namespaces": [
///                             "foo",
///                             "bar",
///                         ],
///                     }],
///                     "template_library": {
///                         "installation": "ALL",
///                     },
///                 },
///                 "audit_interval_seconds": 30,
///                 "referential_rules_enabled": True,
///             },
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
///     var feature = new Gcp.GkeHub.Feature("feature", new()
///     {
///         Name = "policycontroller",
///         Location = "global",
///         FleetDefaultMemberConfig = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigArgs
///         {
///             Policycontroller = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerArgs
///             {
///                 PolicyControllerHubConfig = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigArgs
///                 {
///                     InstallSpec = "INSTALL_SPEC_ENABLED",
///                     ExemptableNamespaces = new[]
///                     {
///                         "foo",
///                     },
///                     PolicyContent = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentArgs
///                     {
///                         Bundles = new[]
///                         {
///                             new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundleArgs
///                             {
///                                 Bundle = "policy-essentials-v2022",
///                                 ExemptedNamespaces = new[]
///                                 {
///                                     "foo",
///                                     "bar",
///                                 },
///                             },
///                         },
///                         TemplateLibrary = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryArgs
///                         {
///                             Installation = "ALL",
///                         },
///                     },
///                     AuditIntervalSeconds = 30,
///                     ReferentialRulesEnabled = true,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("policycontroller"),
/// 			Location: pulumi.String("global"),
/// 			FleetDefaultMemberConfig: &gkehub.FeatureFleetDefaultMemberConfigArgs{
/// 				Policycontroller: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerArgs{
/// 					PolicyControllerHubConfig: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigArgs{
/// 						InstallSpec: pulumi.String("INSTALL_SPEC_ENABLED"),
/// 						ExemptableNamespaces: pulumi.StringArray{
/// 							pulumi.String("foo"),
/// 						},
/// 						PolicyContent: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentArgs{
/// 							Bundles: gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundleArray{
/// 								&gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundleArgs{
/// 									Bundle: pulumi.String("policy-essentials-v2022"),
/// 									ExemptedNamespaces: pulumi.StringArray{
/// 										pulumi.String("foo"),
/// 										pulumi.String("bar"),
/// 									},
/// 								},
/// 							},
/// 							TemplateLibrary: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryArgs{
/// 								Installation: pulumi.String("ALL"),
/// 							},
/// 						},
/// 						AuditIntervalSeconds:    pulumi.Int(30),
/// 						ReferentialRulesEnabled: pulumi.Bool(true),
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
/// resource "gcp_gkehub_feature" "feature" {
///   name     = "policycontroller"
///   location = "global"
///   fleet_default_member_config = {
///     policycontroller = {
///       policy_controller_hub_config = {
///         install_spec          = "INSTALL_SPEC_ENABLED"
///         exemptable_namespaces = ["foo"]
///         policy_content = {
///           bundles = [{
///             "bundle"             = "policy-essentials-v2022"
///             "exemptedNamespaces" = ["foo", "bar"]
///           }]
///           template_library = {
///             installation = "ALL"
///           }
///         }
///         audit_interval_seconds    = 30
///         referential_rules_enabled = true
///       }
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
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundleArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryArgs;
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
///         var feature = new Feature("feature", FeatureArgs.builder()
///             .name("policycontroller")
///             .location("global")
///             .fleetDefaultMemberConfig(FeatureFleetDefaultMemberConfigArgs.builder()
///                 .policycontroller(FeatureFleetDefaultMemberConfigPolicycontrollerArgs.builder()
///                     .policyControllerHubConfig(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigArgs.builder()
///                         .installSpec("INSTALL_SPEC_ENABLED")
///                         .exemptableNamespaces("foo")
///                         .policyContent(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentArgs.builder()
///                             .bundles(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundleArgs.builder()
///                                 .bundle("policy-essentials-v2022")
///                                 .exemptedNamespaces(
///                                     "foo",
///                                     "bar")
///                                 .build())
///                             .templateLibrary(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryArgs.builder()
///                                 .installation("ALL")
///                                 .build())
///                             .build())
///                         .auditIntervalSeconds(30)
///                         .referentialRulesEnabled(true)
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
///   feature:
///     type: gcp:gkehub:Feature
///     properties:
///       name: policycontroller
///       location: global
///       fleetDefaultMemberConfig:
///         policycontroller:
///           policyControllerHubConfig:
///             installSpec: INSTALL_SPEC_ENABLED
///             exemptableNamespaces:
///               - foo
///             policyContent:
///               bundles:
///                 - bundle: policy-essentials-v2022
///                   exemptedNamespaces:
///                     - foo
///                     - bar
///               templateLibrary:
///                 installation: ALL
///             auditIntervalSeconds: 30
///             referentialRulesEnabled: true
/// ```
///
/// ### Enable Fleet Default Member Config Policycontroller Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const feature = new gcp.gkehub.Feature("feature", {
///     name: "policycontroller",
///     location: "global",
///     fleetDefaultMemberConfig: {
///         policycontroller: {
///             policyControllerHubConfig: {
///                 installSpec: "INSTALL_SPEC_SUSPENDED",
///                 policyContent: {
///                     bundles: [
///                         {
///                             bundle: "pci-dss-v3.2.1",
///                             exemptedNamespaces: [
///                                 "baz",
///                                 "bar",
///                             ],
///                         },
///                         {
///                             bundle: "nist-sp-800-190",
///                             exemptedNamespaces: [],
///                         },
///                     ],
///                     templateLibrary: {
///                         installation: "ALL",
///                     },
///                 },
///                 constraintViolationLimit: 50,
///                 referentialRulesEnabled: true,
///                 logDeniesEnabled: true,
///                 mutationEnabled: true,
///                 deploymentConfigs: [
///                     {
///                         component: "admission",
///                         replicaCount: 2,
///                         podAffinity: "ANTI_AFFINITY",
///                     },
///                     {
///                         component: "audit",
///                         containerResources: {
///                             limits: {
///                                 memory: "1Gi",
///                                 cpu: "1.5",
///                             },
///                             requests: {
///                                 memory: "500Mi",
///                                 cpu: "150m",
///                             },
///                         },
///                         podTolerations: [{
///                             key: "key1",
///                             operator: "Equal",
///                             value: "value1",
///                             effect: "NoSchedule",
///                         }],
///                     },
///                 ],
///                 monitoring: {
///                     backends: ["PROMETHEUS"],
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// feature = gcp.gkehub.Feature("feature",
///     name="policycontroller",
///     location="global",
///     fleet_default_member_config={
///         "policycontroller": {
///             "policy_controller_hub_config": {
///                 "install_spec": "INSTALL_SPEC_SUSPENDED",
///                 "policy_content": {
///                     "bundles": [
///                         {
///                             "bundle": "pci-dss-v3.2.1",
///                             "exempted_namespaces": [
///                                 "baz",
///                                 "bar",
///                             ],
///                         },
///                         {
///                             "bundle": "nist-sp-800-190",
///                             "exempted_namespaces": [],
///                         },
///                     ],
///                     "template_library": {
///                         "installation": "ALL",
///                     },
///                 },
///                 "constraint_violation_limit": 50,
///                 "referential_rules_enabled": True,
///                 "log_denies_enabled": True,
///                 "mutation_enabled": True,
///                 "deployment_configs": [
///                     {
///                         "component": "admission",
///                         "replica_count": 2,
///                         "pod_affinity": "ANTI_AFFINITY",
///                     },
///                     {
///                         "component": "audit",
///                         "container_resources": {
///                             "limits": {
///                                 "memory": "1Gi",
///                                 "cpu": "1.5",
///                             },
///                             "requests": {
///                                 "memory": "500Mi",
///                                 "cpu": "150m",
///                             },
///                         },
///                         "pod_tolerations": [{
///                             "key": "key1",
///                             "operator": "Equal",
///                             "value": "value1",
///                             "effect": "NoSchedule",
///                         }],
///                     },
///                 ],
///                 "monitoring": {
///                     "backends": ["PROMETHEUS"],
///                 },
///             },
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
///     var feature = new Gcp.GkeHub.Feature("feature", new()
///     {
///         Name = "policycontroller",
///         Location = "global",
///         FleetDefaultMemberConfig = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigArgs
///         {
///             Policycontroller = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerArgs
///             {
///                 PolicyControllerHubConfig = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigArgs
///                 {
///                     InstallSpec = "INSTALL_SPEC_SUSPENDED",
///                     PolicyContent = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentArgs
///                     {
///                         Bundles = new[]
///                         {
///                             new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundleArgs
///                             {
///                                 Bundle = "pci-dss-v3.2.1",
///                                 ExemptedNamespaces = new[]
///                                 {
///                                     "baz",
///                                     "bar",
///                                 },
///                             },
///                             new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundleArgs
///                             {
///                                 Bundle = "nist-sp-800-190",
///                                 ExemptedNamespaces = new() { },
///                             },
///                         },
///                         TemplateLibrary = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryArgs
///                         {
///                             Installation = "ALL",
///                         },
///                     },
///                     ConstraintViolationLimit = 50,
///                     ReferentialRulesEnabled = true,
///                     LogDeniesEnabled = true,
///                     MutationEnabled = true,
///                     DeploymentConfigs = new[]
///                     {
///                         new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigArgs
///                         {
///                             Component = "admission",
///                             ReplicaCount = 2,
///                             PodAffinity = "ANTI_AFFINITY",
///                         },
///                         new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigArgs
///                         {
///                             Component = "audit",
///                             ContainerResources = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesArgs
///                             {
///                                 Limits = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimitsArgs
///                                 {
///                                     Memory = "1Gi",
///                                     Cpu = "1.5",
///                                 },
///                                 Requests = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequestsArgs
///                                 {
///                                     Memory = "500Mi",
///                                     Cpu = "150m",
///                                 },
///                             },
///                             PodTolerations = new[]
///                             {
///                                 new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodTolerationArgs
///                                 {
///                                     Key = "key1",
///                                     Operator = "Equal",
///                                     Value = "value1",
///                                     Effect = "NoSchedule",
///                                 },
///                             },
///                         },
///                     },
///                     Monitoring = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoringArgs
///                     {
///                         Backends = new[]
///                         {
///                             "PROMETHEUS",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("policycontroller"),
/// 			Location: pulumi.String("global"),
/// 			FleetDefaultMemberConfig: &gkehub.FeatureFleetDefaultMemberConfigArgs{
/// 				Policycontroller: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerArgs{
/// 					PolicyControllerHubConfig: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigArgs{
/// 						InstallSpec: pulumi.String("INSTALL_SPEC_SUSPENDED"),
/// 						PolicyContent: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentArgs{
/// 							Bundles: gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundleArray{
/// 								&gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundleArgs{
/// 									Bundle: pulumi.String("pci-dss-v3.2.1"),
/// 									ExemptedNamespaces: pulumi.StringArray{
/// 										pulumi.String("baz"),
/// 										pulumi.String("bar"),
/// 									},
/// 								},
/// 								&gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundleArgs{
/// 									Bundle:             pulumi.String("nist-sp-800-190"),
/// 									ExemptedNamespaces: pulumi.StringArray{},
/// 								},
/// 							},
/// 							TemplateLibrary: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryArgs{
/// 								Installation: pulumi.String("ALL"),
/// 							},
/// 						},
/// 						ConstraintViolationLimit: pulumi.Int(50),
/// 						ReferentialRulesEnabled:  pulumi.Bool(true),
/// 						LogDeniesEnabled:         pulumi.Bool(true),
/// 						MutationEnabled:          pulumi.Bool(true),
/// 						DeploymentConfigs: gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigArray{
/// 							&gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigArgs{
/// 								Component:    pulumi.String("admission"),
/// 								ReplicaCount: pulumi.Int(2),
/// 								PodAffinity:  pulumi.String("ANTI_AFFINITY"),
/// 							},
/// 							&gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigArgs{
/// 								Component: pulumi.String("audit"),
/// 								ContainerResources: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesArgs{
/// 									Limits: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimitsArgs{
/// 										Memory: pulumi.String("1Gi"),
/// 										Cpu:    pulumi.String("1.5"),
/// 									},
/// 									Requests: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequestsArgs{
/// 										Memory: pulumi.String("500Mi"),
/// 										Cpu:    pulumi.String("150m"),
/// 									},
/// 								},
/// 								PodTolerations: gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodTolerationArray{
/// 									&gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodTolerationArgs{
/// 										Key:      pulumi.String("key1"),
/// 										Operator: pulumi.String("Equal"),
/// 										Value:    pulumi.String("value1"),
/// 										Effect:   pulumi.String("NoSchedule"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						Monitoring: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoringArgs{
/// 							Backends: pulumi.StringArray{
/// 								pulumi.String("PROMETHEUS"),
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
/// resource "gcp_gkehub_feature" "feature" {
///   name     = "policycontroller"
///   location = "global"
///   fleet_default_member_config = {
///     policycontroller = {
///       policy_controller_hub_config = {
///         install_spec = "INSTALL_SPEC_SUSPENDED"
///         policy_content = {
///           bundles = [{
///             "bundle"             = "pci-dss-v3.2.1"
///             "exemptedNamespaces" = ["baz", "bar"]
///             }, {
///             "bundle"             = "nist-sp-800-190"
///             "exemptedNamespaces" = []
///           }]
///           template_library = {
///             installation = "ALL"
///           }
///         }
///         constraint_violation_limit = 50
///         referential_rules_enabled  = true
///         log_denies_enabled         = true
///         mutation_enabled           = true
///         deployment_configs = [{
///           "component"    = "admission"
///           "replicaCount" = 2
///           "podAffinity"  = "ANTI_AFFINITY"
///           }, {
///           "component" = "audit"
///           "containerResources" = {
///             "limits" = {
///               "memory" = "1Gi"
///               "cpu"    = "1.5"
///             }
///             "requests" = {
///               "memory" = "500Mi"
///               "cpu"    = "150m"
///             }
///           }
///           "podTolerations" = [{
///             "key"      = "key1"
///             "operator" = "Equal"
///             "value"    = "value1"
///             "effect"   = "NoSchedule"
///           }]
///         }]
///         monitoring = {
///           backends = ["PROMETHEUS"]
///         }
///       }
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
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundleArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimitsArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequestsArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodTolerationArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoringArgs;
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
///         var feature = new Feature("feature", FeatureArgs.builder()
///             .name("policycontroller")
///             .location("global")
///             .fleetDefaultMemberConfig(FeatureFleetDefaultMemberConfigArgs.builder()
///                 .policycontroller(FeatureFleetDefaultMemberConfigPolicycontrollerArgs.builder()
///                     .policyControllerHubConfig(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigArgs.builder()
///                         .installSpec("INSTALL_SPEC_SUSPENDED")
///                         .policyContent(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentArgs.builder()
///                             .bundles(
///                                 FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundleArgs.builder()
///                                     .bundle("pci-dss-v3.2.1")
///                                     .exemptedNamespaces(
///                                         "baz",
///                                         "bar")
///                                     .build(),
///                                 FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundleArgs.builder()
///                                     .bundle("nist-sp-800-190")
///                                     .exemptedNamespaces()
///                                     .build())
///                             .templateLibrary(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryArgs.builder()
///                                 .installation("ALL")
///                                 .build())
///                             .build())
///                         .constraintViolationLimit(50)
///                         .referentialRulesEnabled(true)
///                         .logDeniesEnabled(true)
///                         .mutationEnabled(true)
///                         .deploymentConfigs(
///                             FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigArgs.builder()
///                                 .component("admission")
///                                 .replicaCount(2)
///                                 .podAffinity("ANTI_AFFINITY")
///                                 .build(),
///                             FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigArgs.builder()
///                                 .component("audit")
///                                 .containerResources(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesArgs.builder()
///                                     .limits(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimitsArgs.builder()
///                                         .memory("1Gi")
///                                         .cpu("1.5")
///                                         .build())
///                                     .requests(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequestsArgs.builder()
///                                         .memory("500Mi")
///                                         .cpu("150m")
///                                         .build())
///                                     .build())
///                                 .podTolerations(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodTolerationArgs.builder()
///                                     .key("key1")
///                                     .operator("Equal")
///                                     .value("value1")
///                                     .effect("NoSchedule")
///                                     .build())
///                                 .build())
///                         .monitoring(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoringArgs.builder()
///                             .backends("PROMETHEUS")
///                             .build())
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
///   feature:
///     type: gcp:gkehub:Feature
///     properties:
///       name: policycontroller
///       location: global
///       fleetDefaultMemberConfig:
///         policycontroller:
///           policyControllerHubConfig:
///             installSpec: INSTALL_SPEC_SUSPENDED
///             policyContent:
///               bundles:
///                 - bundle: pci-dss-v3.2.1
///                   exemptedNamespaces:
///                     - baz
///                     - bar
///                 - bundle: nist-sp-800-190
///                   exemptedNamespaces: []
///               templateLibrary:
///                 installation: ALL
///             constraintViolationLimit: 50
///             referentialRulesEnabled: true
///             logDeniesEnabled: true
///             mutationEnabled: true
///             deploymentConfigs:
///               - component: admission
///                 replicaCount: 2
///                 podAffinity: ANTI_AFFINITY
///               - component: audit
///                 containerResources:
///                   limits:
///                     memory: 1Gi
///                     cpu: '1.5'
///                   requests:
///                     memory: 500Mi
///                     cpu: 150m
///                 podTolerations:
///                   - key: key1
///                     operator: Equal
///                     value: value1
///                     effect: NoSchedule
///             monitoring:
///               backends:
///                 - PROMETHEUS
/// ```
///
/// ### Enable Fleet Default Member Config Policycontroller Minimal
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const feature = new gcp.gkehub.Feature("feature", {
///     name: "policycontroller",
///     location: "global",
///     fleetDefaultMemberConfig: {
///         policycontroller: {
///             policyControllerHubConfig: {
///                 installSpec: "INSTALL_SPEC_ENABLED",
///                 policyContent: {},
///                 constraintViolationLimit: 50,
///                 referentialRulesEnabled: true,
///                 logDeniesEnabled: true,
///                 mutationEnabled: true,
///                 deploymentConfigs: [{
///                     component: "admission",
///                 }],
///                 monitoring: {},
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// feature = gcp.gkehub.Feature("feature",
///     name="policycontroller",
///     location="global",
///     fleet_default_member_config={
///         "policycontroller": {
///             "policy_controller_hub_config": {
///                 "install_spec": "INSTALL_SPEC_ENABLED",
///                 "policy_content": {},
///                 "constraint_violation_limit": 50,
///                 "referential_rules_enabled": True,
///                 "log_denies_enabled": True,
///                 "mutation_enabled": True,
///                 "deployment_configs": [{
///                     "component": "admission",
///                 }],
///                 "monitoring": {},
///             },
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
///     var feature = new Gcp.GkeHub.Feature("feature", new()
///     {
///         Name = "policycontroller",
///         Location = "global",
///         FleetDefaultMemberConfig = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigArgs
///         {
///             Policycontroller = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerArgs
///             {
///                 PolicyControllerHubConfig = new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigArgs
///                 {
///                     InstallSpec = "INSTALL_SPEC_ENABLED",
///                     PolicyContent = null,
///                     ConstraintViolationLimit = 50,
///                     ReferentialRulesEnabled = true,
///                     LogDeniesEnabled = true,
///                     MutationEnabled = true,
///                     DeploymentConfigs = new[]
///                     {
///                         new Gcp.GkeHub.Inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigArgs
///                         {
///                             Component = "admission",
///                         },
///                     },
///                     Monitoring = null,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("policycontroller"),
/// 			Location: pulumi.String("global"),
/// 			FleetDefaultMemberConfig: &gkehub.FeatureFleetDefaultMemberConfigArgs{
/// 				Policycontroller: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerArgs{
/// 					PolicyControllerHubConfig: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigArgs{
/// 						InstallSpec:              pulumi.String("INSTALL_SPEC_ENABLED"),
/// 						PolicyContent:            &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentArgs{},
/// 						ConstraintViolationLimit: pulumi.Int(50),
/// 						ReferentialRulesEnabled:  pulumi.Bool(true),
/// 						LogDeniesEnabled:         pulumi.Bool(true),
/// 						MutationEnabled:          pulumi.Bool(true),
/// 						DeploymentConfigs: gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigArray{
/// 							&gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigArgs{
/// 								Component: pulumi.String("admission"),
/// 							},
/// 						},
/// 						Monitoring: &gkehub.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoringArgs{},
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
/// resource "gcp_gkehub_feature" "feature" {
///   name     = "policycontroller"
///   location = "global"
///   fleet_default_member_config = {
///     policycontroller = {
///       policy_controller_hub_config = {
///         install_spec               = "INSTALL_SPEC_ENABLED"
///         policy_content             = {}
///         constraint_violation_limit = 50
///         referential_rules_enabled  = true
///         log_denies_enabled         = true
///         mutation_enabled           = true
///         deployment_configs = [{
///           "component" = "admission"
///         }]
///         monitoring = {}
///       }
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
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoringArgs;
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
///         var feature = new Feature("feature", FeatureArgs.builder()
///             .name("policycontroller")
///             .location("global")
///             .fleetDefaultMemberConfig(FeatureFleetDefaultMemberConfigArgs.builder()
///                 .policycontroller(FeatureFleetDefaultMemberConfigPolicycontrollerArgs.builder()
///                     .policyControllerHubConfig(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigArgs.builder()
///                         .installSpec("INSTALL_SPEC_ENABLED")
///                         .policyContent(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentArgs.builder()
///                             .build())
///                         .constraintViolationLimit(50)
///                         .referentialRulesEnabled(true)
///                         .logDeniesEnabled(true)
///                         .mutationEnabled(true)
///                         .deploymentConfigs(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigArgs.builder()
///                             .component("admission")
///                             .build())
///                         .monitoring(FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoringArgs.builder()
///                             .build())
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
///   feature:
///     type: gcp:gkehub:Feature
///     properties:
///       name: policycontroller
///       location: global
///       fleetDefaultMemberConfig:
///         policycontroller:
///           policyControllerHubConfig:
///             installSpec: INSTALL_SPEC_ENABLED
///             policyContent: {}
///             constraintViolationLimit: 50
///             referentialRulesEnabled: true
///             logDeniesEnabled: true
///             mutationEnabled: true
///             deploymentConfigs:
///               - component: admission
///             monitoring: {}
/// ```
///
/// ### Gkehub Feature Clusterupgrade
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const feature = new gcp.gkehub.Feature("feature", {
///     name: "clusterupgrade",
///     location: "global",
///     spec: {
///         clusterupgrade: {
///             upstreamFleets: [],
///             postConditions: {
///                 soaking: "60s",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// feature = gcp.gkehub.Feature("feature",
///     name="clusterupgrade",
///     location="global",
///     spec={
///         "clusterupgrade": {
///             "upstream_fleets": [],
///             "post_conditions": {
///                 "soaking": "60s",
///             },
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
///     var feature = new Gcp.GkeHub.Feature("feature", new()
///     {
///         Name = "clusterupgrade",
///         Location = "global",
///         Spec = new Gcp.GkeHub.Inputs.FeatureSpecArgs
///         {
///             Clusterupgrade = new Gcp.GkeHub.Inputs.FeatureSpecClusterupgradeArgs
///             {
///                 UpstreamFleets = new() { },
///                 PostConditions = new Gcp.GkeHub.Inputs.FeatureSpecClusterupgradePostConditionsArgs
///                 {
///                     Soaking = "60s",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("clusterupgrade"),
/// 			Location: pulumi.String("global"),
/// 			Spec: &gkehub.FeatureSpecArgs{
/// 				Clusterupgrade: &gkehub.FeatureSpecClusterupgradeArgs{
/// 					UpstreamFleets: pulumi.StringArray{},
/// 					PostConditions: &gkehub.FeatureSpecClusterupgradePostConditionsArgs{
/// 						Soaking: pulumi.String("60s"),
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
/// resource "gcp_gkehub_feature" "feature" {
///   name     = "clusterupgrade"
///   location = "global"
///   spec = {
///     clusterupgrade = {
///       upstream_fleets = []
///       post_conditions = {
///         soaking = "60s"
///       }
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
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecClusterupgradeArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecClusterupgradePostConditionsArgs;
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
///         var feature = new Feature("feature", FeatureArgs.builder()
///             .name("clusterupgrade")
///             .location("global")
///             .spec(FeatureSpecArgs.builder()
///                 .clusterupgrade(FeatureSpecClusterupgradeArgs.builder()
///                     .upstreamFleets()
///                     .postConditions(FeatureSpecClusterupgradePostConditionsArgs.builder()
///                         .soaking("60s")
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
///   feature:
///     type: gcp:gkehub:Feature
///     properties:
///       name: clusterupgrade
///       location: global
///       spec:
///         clusterupgrade:
///           upstreamFleets: []
///           postConditions:
///             soaking: 60s
/// ```
///
/// ### Gkehub Feature Rbacrolebinding Actuation
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const feature = new gcp.gkehub.Feature("feature", {
///     name: "rbacrolebindingactuation",
///     location: "global",
///     spec: {
///         rbacrolebindingactuation: {
///             allowedCustomRoles: [
///                 "custom-role1",
///                 "custom-role2",
///                 "custom-role3",
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// feature = gcp.gkehub.Feature("feature",
///     name="rbacrolebindingactuation",
///     location="global",
///     spec={
///         "rbacrolebindingactuation": {
///             "allowed_custom_roles": [
///                 "custom-role1",
///                 "custom-role2",
///                 "custom-role3",
///             ],
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
///     var feature = new Gcp.GkeHub.Feature("feature", new()
///     {
///         Name = "rbacrolebindingactuation",
///         Location = "global",
///         Spec = new Gcp.GkeHub.Inputs.FeatureSpecArgs
///         {
///             Rbacrolebindingactuation = new Gcp.GkeHub.Inputs.FeatureSpecRbacrolebindingactuationArgs
///             {
///                 AllowedCustomRoles = new[]
///                 {
///                     "custom-role1",
///                     "custom-role2",
///                     "custom-role3",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("rbacrolebindingactuation"),
/// 			Location: pulumi.String("global"),
/// 			Spec: &gkehub.FeatureSpecArgs{
/// 				Rbacrolebindingactuation: &gkehub.FeatureSpecRbacrolebindingactuationArgs{
/// 					AllowedCustomRoles: pulumi.StringArray{
/// 						pulumi.String("custom-role1"),
/// 						pulumi.String("custom-role2"),
/// 						pulumi.String("custom-role3"),
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
/// resource "gcp_gkehub_feature" "feature" {
///   name     = "rbacrolebindingactuation"
///   location = "global"
///   spec = {
///     rbacrolebindingactuation = {
///       allowed_custom_roles = ["custom-role1", "custom-role2", "custom-role3"]
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
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecRbacrolebindingactuationArgs;
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
///         var feature = new Feature("feature", FeatureArgs.builder()
///             .name("rbacrolebindingactuation")
///             .location("global")
///             .spec(FeatureSpecArgs.builder()
///                 .rbacrolebindingactuation(FeatureSpecRbacrolebindingactuationArgs.builder()
///                     .allowedCustomRoles(
///                         "custom-role1",
///                         "custom-role2",
///                         "custom-role3")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   feature:
///     type: gcp:gkehub:Feature
///     properties:
///       name: rbacrolebindingactuation
///       location: global
///       spec:
///         rbacrolebindingactuation:
///           allowedCustomRoles:
///             - custom-role1
///             - custom-role2
///             - custom-role3
/// ```
///
/// ### Gkehub Feature Workload Identity
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pool = new gcp.iam.WorkloadIdentityPool("pool", {
///     workloadIdentityPoolId: "example-pool",
///     mode: "TRUST_DOMAIN",
/// });
/// const feature = new gcp.gkehub.Feature("feature", {
///     name: "workloadidentity",
///     location: "global",
///     spec: {
///         workloadidentity: {
///             scopeTenancyPool: pool.name,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkloadIdentityPool("pool",
///     workload_identity_pool_id="example-pool",
///     mode="TRUST_DOMAIN")
/// feature = gcp.gkehub.Feature("feature",
///     name="workloadidentity",
///     location="global",
///     spec={
///         "workloadidentity": {
///             "scope_tenancy_pool": pool.name,
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
///     var pool = new Gcp.Iam.WorkloadIdentityPool("pool", new()
///     {
///         WorkloadIdentityPoolId = "example-pool",
///         Mode = "TRUST_DOMAIN",
///     });
///
///     var feature = new Gcp.GkeHub.Feature("feature", new()
///     {
///         Name = "workloadidentity",
///         Location = "global",
///         Spec = new Gcp.GkeHub.Inputs.FeatureSpecArgs
///         {
///             Workloadidentity = new Gcp.GkeHub.Inputs.FeatureSpecWorkloadidentityArgs
///             {
///                 ScopeTenancyPool = pool.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pool, err := iam.NewWorkloadIdentityPool(ctx, "pool", &iam.WorkloadIdentityPoolArgs{
/// 			WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// 			Mode:                   pulumi.String("TRUST_DOMAIN"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// 			Name:     pulumi.String("workloadidentity"),
/// 			Location: pulumi.String("global"),
/// 			Spec: &gkehub.FeatureSpecArgs{
/// 				Workloadidentity: &gkehub.FeatureSpecWorkloadidentityArgs{
/// 					ScopeTenancyPool: pool.Name,
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
/// resource "gcp_iam_workloadidentitypool" "pool" {
///   workload_identity_pool_id = "example-pool"
///   mode                      = "TRUST_DOMAIN"
/// }
/// resource "gcp_gkehub_feature" "feature" {
///   name     = "workloadidentity"
///   location = "global"
///   spec = {
///     workloadidentity = {
///       scope_tenancy_pool = gcp_iam_workloadidentitypool.pool.name
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureSpecWorkloadidentityArgs;
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
///         var pool = new WorkloadIdentityPool("pool", WorkloadIdentityPoolArgs.builder()
///             .workloadIdentityPoolId("example-pool")
///             .mode("TRUST_DOMAIN")
///             .build());
///
///         var feature = new Feature("feature", FeatureArgs.builder()
///             .name("workloadidentity")
///             .location("global")
///             .spec(FeatureSpecArgs.builder()
///                 .workloadidentity(FeatureSpecWorkloadidentityArgs.builder()
///                     .scopeTenancyPool(pool.name())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pool:
///     type: gcp:iam:WorkloadIdentityPool
///     properties:
///       workloadIdentityPoolId: example-pool
///       mode: TRUST_DOMAIN
///   feature:
///     type: gcp:gkehub:Feature
///     properties:
///       name: workloadidentity
///       location: global
///       spec:
///         workloadidentity:
///           scopeTenancyPool: ${pool.name}
/// ```
///
///
/// ## Import
///
/// Feature can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/features/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Feature can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/feature:Feature default projects/{{project}}/locations/{{location}}/features/{{name}}
/// $ pulumi import gcp:gkehub/feature:Feature default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:gkehub/feature:Feature default {{location}}/{{name}}
/// ```
class Feature extends pulumi.CustomResource {
  /// Output only. When the Feature resource was created.
  late final pulumi.Output<String> createTime;
  /// Output only. When the Feature resource was deleted.
  late final pulumi.Output<String> deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. Fleet Default Membership Configuration.
  /// Structure is documented below.
  late final pulumi.Output<FeatureFleetDefaultMemberConfig?> fleetDefaultMemberConfig;
  /// GCP labels for this Feature.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// The full, unique name of this Feature resource
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// State of the Feature resource itself.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> resourceStates;
  /// Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  /// Structure is documented below.
  late final pulumi.Output<FeatureSpec?> spec;
  /// (Output)
  /// Output only. The "running state" of the Feature in this Hub.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> states;
  /// (Output)
  /// The time this status and any related Feature-specific details were updated. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Feature].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Feature]. {@macro pulumi_gkehub_feature_feature_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Feature(
    String name, {
    FeatureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/feature:Feature',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    fleetDefaultMemberConfig = registerOutput<FeatureFleetDefaultMemberConfig?>('fleetDefaultMemberConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FeatureFleetDefaultMemberConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    resourceStates = registerOutput<List<Map<String, dynamic>>>('resourceStates');
    spec = registerOutput<FeatureSpec?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FeatureSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    states = registerOutput<List<Map<String, dynamic>>>('states');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Feature] resource's state with the given [name] and [id].
  static Feature get(
    String name,
    pulumi.Input<String> id, {
    FeatureGkehubState? state,
  }) {
    return Feature._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Feature._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/feature:Feature',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    fleetDefaultMemberConfig = registerOutput<FeatureFleetDefaultMemberConfig?>('fleetDefaultMemberConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FeatureFleetDefaultMemberConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    resourceStates = registerOutput<List<Map<String, dynamic>>>('resourceStates');
    spec = registerOutput<FeatureSpec?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FeatureSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    states = registerOutput<List<Map<String, dynamic>>>('states');
    updateTime = registerOutput<String>('updateTime');
  }
}
