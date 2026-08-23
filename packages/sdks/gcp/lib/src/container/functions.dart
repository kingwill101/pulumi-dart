import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attached_install_manifest_args.dart';
import 'get_attached_install_manifest_result.dart';
import 'get_attached_versions_args.dart';
import 'get_attached_versions_result.dart';
import 'get_aws_versions_args.dart';
import 'get_aws_versions_result.dart';
import 'get_azure_versions_args.dart';
import 'get_azure_versions_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_engine_versions_args.dart';
import 'get_engine_versions_result.dart';
import 'get_registry_image_args.dart';
import 'get_registry_image_result.dart';
import 'get_registry_repository_args.dart';
import 'get_registry_repository_result.dart';

/// Provides access to available platform versions in a location for a given project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const manifest = gcp.container.getAttachedInstallManifest({
///     location: "us-west1",
///     project: "my-project",
///     clusterId: "test-cluster-1",
///     platformVersion: "1.25.0-gke.1",
/// });
/// export const installManifest = manifest;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// manifest = gcp.container.get_attached_install_manifest(location="us-west1",
///     project="my-project",
///     cluster_id="test-cluster-1",
///     platform_version="1.25.0-gke.1")
/// pulumi.export("installManifest", manifest)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var manifest = Gcp.Container.GetAttachedInstallManifest.Invoke(new()
///     {
///         Location = "us-west1",
///         Project = "my-project",
///         ClusterId = "test-cluster-1",
///         PlatformVersion = "1.25.0-gke.1",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["installManifest"] = manifest,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		manifest, err := container.GetAttachedInstallManifest(ctx, &container.GetAttachedInstallManifestArgs{
/// 			Location:        "us-west1",
/// 			Project:         "my-project",
/// 			ClusterId:       "test-cluster-1",
/// 			PlatformVersion: "1.25.0-gke.1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("installManifest", manifest)
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
/// data "gcp_container_getattachedinstallmanifest" "manifest" {
///   location         = "us-west1"
///   project          = "my-project"
///   cluster_id       = "test-cluster-1"
///   platform_version = "1.25.0-gke.1"
/// }
///
/// output "installManifest" {
///   value = data.gcp_container_getattachedinstallmanifest.manifest
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetAttachedInstallManifestArgs;
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
///         final var manifest = ContainerFunctions.getAttachedInstallManifest(GetAttachedInstallManifestArgs.builder()
///             .location("us-west1")
///             .project("my-project")
///             .clusterId("test-cluster-1")
///             .platformVersion("1.25.0-gke.1")
///             .build());
///
///         ctx.export("installManifest", manifest);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   manifest:
///     fn::invoke:
///       function: gcp:container:getAttachedInstallManifest
///       arguments:
///         location: us-west1
///         project: my-project
///         clusterId: test-cluster-1
///         platformVersion: 1.25.0-gke.1
/// outputs:
///   installManifest: ${manifest}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_container_get_attached_install_manifest_get_attached_install_manifest_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttachedInstallManifestResult> getAttachedInstallManifest(
  GetAttachedInstallManifestArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getAttachedInstallManifest:getAttachedInstallManifest',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttachedInstallManifestResult.fromMap(result);
}

/// Provides access to available platform versions in a location for a given project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const uswest = gcp.container.getAttachedVersions({
///     location: "us-west1",
///     project: "my-project",
/// });
/// export const firstAvailableVersion = uswest.then(uswest => uswest.validVersions?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// uswest = gcp.container.get_attached_versions(location="us-west1",
///     project="my-project")
/// pulumi.export("firstAvailableVersion", uswest.valid_versions[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var uswest = Gcp.Container.GetAttachedVersions.Invoke(new()
///     {
///         Location = "us-west1",
///         Project = "my-project",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstAvailableVersion"] = uswest.Apply(getAttachedVersionsResult => getAttachedVersionsResult.ValidVersions[0]),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		uswest, err := container.GetAttachedVersions(ctx, &container.GetAttachedVersionsArgs{
/// 			Location: "us-west1",
/// 			Project:  "my-project",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstAvailableVersion", uswest.ValidVersions[0])
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
/// data "gcp_container_getattachedversions" "uswest" {
///   location = "us-west1"
///   project  = "my-project"
/// }
///
/// output "firstAvailableVersion" {
///   value = data.gcp_container_getattachedversions.uswest.valid_versions[0]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetAttachedVersionsArgs;
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
///         final var uswest = ContainerFunctions.getAttachedVersions(GetAttachedVersionsArgs.builder()
///             .location("us-west1")
///             .project("my-project")
///             .build());
///
///         ctx.export("firstAvailableVersion", uswest.validVersions()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   uswest:
///     fn::invoke:
///       function: gcp:container:getAttachedVersions
///       arguments:
///         location: us-west1
///         project: my-project
/// outputs:
///   firstAvailableVersion: ${uswest.validVersions[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_container_get_attached_versions_get_attached_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttachedVersionsResult> getAttachedVersions(
  GetAttachedVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getAttachedVersions:getAttachedVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttachedVersionsResult.fromMap(result);
}

/// Provides access to available Kubernetes versions in a location for a given project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const central1b = gcp.container.getAwsVersions({
///     location: "us-west1",
///     project: "my-project",
/// });
/// export const firstAvailableVersion = versions.validVersions[0];
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// central1b = gcp.container.get_aws_versions(location="us-west1",
///     project="my-project")
/// pulumi.export("firstAvailableVersion", versions["validVersions"][0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var central1b = Gcp.Container.GetAwsVersions.Invoke(new()
///     {
///         Location = "us-west1",
///         Project = "my-project",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstAvailableVersion"] = versions.ValidVersions[0],
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := container.GetAwsVersions(ctx, &container.GetAwsVersionsArgs{
/// 			Location: pulumi.StringRef("us-west1"),
/// 			Project:  pulumi.StringRef("my-project"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstAvailableVersion", pulumi.Any(versions.ValidVersions[0]))
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
/// data "gcp_container_getawsversions" "central1b" {
///   location = "us-west1"
///   project  = "my-project"
/// }
///
/// output "firstAvailableVersion" {
///   value = versions.validVersions[0]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetAwsVersionsArgs;
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
///         final var central1b = ContainerFunctions.getAwsVersions(GetAwsVersionsArgs.builder()
///             .location("us-west1")
///             .project("my-project")
///             .build());
///
///         ctx.export("firstAvailableVersion", versions.get("validVersions")[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   central1b:
///     fn::invoke:
///       function: gcp:container:getAwsVersions
///       arguments:
///         location: us-west1
///         project: my-project
/// outputs:
///   firstAvailableVersion: ${versions.validVersions[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_container_get_aws_versions_get_aws_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAwsVersionsResult> getAwsVersions(
  GetAwsVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getAwsVersions:getAwsVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAwsVersionsResult.fromMap(result);
}

/// Provides access to available Kubernetes versions in a location for a given project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const central1b = gcp.container.getAzureVersions({
///     location: "us-west1",
///     project: "my-project",
/// });
/// export const firstAvailableVersion = versions.validVersions[0];
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// central1b = gcp.container.get_azure_versions(location="us-west1",
///     project="my-project")
/// pulumi.export("firstAvailableVersion", versions["validVersions"][0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var central1b = Gcp.Container.GetAzureVersions.Invoke(new()
///     {
///         Location = "us-west1",
///         Project = "my-project",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstAvailableVersion"] = versions.ValidVersions[0],
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := container.GetAzureVersions(ctx, &container.GetAzureVersionsArgs{
/// 			Location: pulumi.StringRef("us-west1"),
/// 			Project:  pulumi.StringRef("my-project"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstAvailableVersion", pulumi.Any(versions.ValidVersions[0]))
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
/// data "gcp_container_getazureversions" "central1b" {
///   location = "us-west1"
///   project  = "my-project"
/// }
///
/// output "firstAvailableVersion" {
///   value = versions.validVersions[0]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetAzureVersionsArgs;
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
///         final var central1b = ContainerFunctions.getAzureVersions(GetAzureVersionsArgs.builder()
///             .location("us-west1")
///             .project("my-project")
///             .build());
///
///         ctx.export("firstAvailableVersion", versions.get("validVersions")[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   central1b:
///     fn::invoke:
///       function: gcp:container:getAzureVersions
///       arguments:
///         location: us-west1
///         project: my-project
/// outputs:
///   firstAvailableVersion: ${versions.validVersions[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_container_get_azure_versions_get_azure_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzureVersionsResult> getAzureVersions(
  GetAzureVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getAzureVersions:getAzureVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzureVersionsResult.fromMap(result);
}

/// Get info about a GKE cluster from its name and location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myCluster = gcp.container.getCluster({
///     name: "my-cluster",
///     location: "us-east1-a",
/// });
/// export const endpoint = myCluster.then(myCluster => myCluster.endpoint);
/// export const instanceGroupUrls = myCluster.then(myCluster => myCluster.nodePools?.[0]?.instanceGroupUrls);
/// export const nodeConfig = myCluster.then(myCluster => myCluster.nodeConfigs);
/// export const nodePools = myCluster.then(myCluster => myCluster.nodePools);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_cluster = gcp.container.get_cluster(name="my-cluster",
///     location="us-east1-a")
/// pulumi.export("endpoint", my_cluster.endpoint)
/// pulumi.export("instanceGroupUrls", my_cluster.node_pools[0].instance_group_urls)
/// pulumi.export("nodeConfig", my_cluster.node_configs)
/// pulumi.export("nodePools", my_cluster.node_pools)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myCluster = Gcp.Container.GetCluster.Invoke(new()
///     {
///         Name = "my-cluster",
///         Location = "us-east1-a",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["endpoint"] = myCluster.Apply(getClusterResult => getClusterResult.Endpoint),
///         ["instanceGroupUrls"] = myCluster.Apply(getClusterResult => getClusterResult.NodePools[0]?.InstanceGroupUrls),
///         ["nodeConfig"] = myCluster.Apply(getClusterResult => getClusterResult.NodeConfigs),
///         ["nodePools"] = myCluster.Apply(getClusterResult => getClusterResult.NodePools),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myCluster, err := container.LookupCluster(ctx, &container.LookupClusterArgs{
/// 			Name:     "my-cluster",
/// 			Location: pulumi.StringRef("us-east1-a"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("endpoint", myCluster.Endpoint)
/// 		ctx.Export("instanceGroupUrls", myCluster.NodePools[0].InstanceGroupUrls)
/// 		ctx.Export("nodeConfig", myCluster.NodeConfigs)
/// 		ctx.Export("nodePools", myCluster.NodePools)
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
/// data "gcp_container_getcluster" "myCluster" {
///   name     = "my-cluster"
///   location = "us-east1-a"
/// }
///
/// output "endpoint" {
///   value = data.gcp_container_getcluster.myCluster.endpoint
/// }
/// output "instanceGroupUrls" {
///   value = data.gcp_container_getcluster.myCluster.node_pools[0].instance_group_urls
/// }
/// output "nodeConfig" {
///   value = data.gcp_container_getcluster.myCluster.node_configs
/// }
/// output "nodePools" {
///   value = data.gcp_container_getcluster.myCluster.node_pools
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetClusterArgs;
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
///         final var myCluster = ContainerFunctions.getCluster(GetClusterArgs.builder()
///             .name("my-cluster")
///             .location("us-east1-a")
///             .build());
///
///         ctx.export("endpoint", myCluster.endpoint());
///         ctx.export("instanceGroupUrls", myCluster.nodePools()[0].instanceGroupUrls());
///         ctx.export("nodeConfig", myCluster.nodeConfigs());
///         ctx.export("nodePools", myCluster.nodePools());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myCluster:
///     fn::invoke:
///       function: gcp:container:getCluster
///       arguments:
///         name: my-cluster
///         location: us-east1-a
/// outputs:
///   endpoint: ${myCluster.endpoint}
///   instanceGroupUrls: ${myCluster.nodePools[0].instanceGroupUrls}
///   nodeConfig: ${myCluster.nodeConfigs}
///   nodePools: ${myCluster.nodePools}
/// ```
///
///
/// ### Autopilot
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.serviceaccount.Account("default", {
///     accountId: "service-account-id",
///     displayName: "Service Account",
/// });
/// const primary = new gcp.container.Cluster("primary", {
///     name: "marcellus-wallace",
///     location: "us-central1-a",
///     enableAutopilot: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.serviceaccount.Account("default",
///     account_id="service-account-id",
///     display_name="Service Account")
/// primary = gcp.container.Cluster("primary",
///     name="marcellus-wallace",
///     location="us-central1-a",
///     enable_autopilot=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.ServiceAccount.Account("default", new()
///     {
///         AccountId = "service-account-id",
///         DisplayName = "Service Account",
///     });
///
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "marcellus-wallace",
///         Location = "us-central1-a",
///         EnableAutopilot = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := serviceaccount.NewAccount(ctx, "default", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("service-account-id"),
/// 			DisplayName: pulumi.String("Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:            pulumi.String("marcellus-wallace"),
/// 			Location:        pulumi.String("us-central1-a"),
/// 			EnableAutopilot: pulumi.Bool(true),
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
/// resource "gcp_serviceaccount_account" "default" {
///   account_id   = "service-account-id"
///   display_name = "Service Account"
/// }
/// resource "gcp_container_cluster" "primary" {
///   name             = "marcellus-wallace"
///   location         = "us-central1-a"
///   enable_autopilot = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
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
///         var default_ = new Account("default", AccountArgs.builder()
///             .accountId("service-account-id")
///             .displayName("Service Account")
///             .build());
///
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("marcellus-wallace")
///             .location("us-central1-a")
///             .enableAutopilot(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: service-account-id
///       displayName: Service Account
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: marcellus-wallace
///       location: us-central1-a
///       enableAutopilot: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_container_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Provides access to available Google Kubernetes Engine versions in a zone or region for a given project.
///
/// To get more information about GKE versions, see:
/// * [The API reference](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations/getServerConfig)
///
/// &gt; If you are using the `gcp.container.getEngineVersions` datasource with a
/// regional cluster, ensure that you have provided a region as the `location` to
/// the datasource. A region can have a different set of supported versions than
/// its component zones, and not all zones in a region are guaranteed to
/// support the same version.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const central1b = gcp.container.getEngineVersions({
///     location: "us-central1-b",
///     versionPrefix: "1.12.",
/// });
/// const foo = new gcp.container.Cluster("foo", {
///     name: "test-cluster",
///     location: "us-central1-b",
///     nodeVersion: central1b.then(central1b => central1b.latestNodeVersion),
///     initialNodeCount: 1,
/// });
/// export const stableChannelDefaultVersion = central1b.then(central1b => central1b.releaseChannelDefaultVersion?.STABLE);
/// export const stableChannelLatestVersion = central1b.then(central1b => central1b.releaseChannelLatestVersion?.STABLE);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// central1b = gcp.container.get_engine_versions(location="us-central1-b",
///     version_prefix="1.12.")
/// foo = gcp.container.Cluster("foo",
///     name="test-cluster",
///     location="us-central1-b",
///     node_version=central1b.latest_node_version,
///     initial_node_count=1)
/// pulumi.export("stableChannelDefaultVersion", central1b.release_channel_default_version["STABLE"])
/// pulumi.export("stableChannelLatestVersion", central1b.release_channel_latest_version["STABLE"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var central1b = Gcp.Container.GetEngineVersions.Invoke(new()
///     {
///         Location = "us-central1-b",
///         VersionPrefix = "1.12.",
///     });
///
///     var foo = new Gcp.Container.Cluster("foo", new()
///     {
///         Name = "test-cluster",
///         Location = "us-central1-b",
///         NodeVersion = central1b.Apply(getEngineVersionsResult => getEngineVersionsResult.LatestNodeVersion),
///         InitialNodeCount = 1,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["stableChannelDefaultVersion"] = central1b.Apply(getEngineVersionsResult => getEngineVersionsResult.ReleaseChannelDefaultVersion?.STABLE),
///         ["stableChannelLatestVersion"] = central1b.Apply(getEngineVersionsResult => getEngineVersionsResult.ReleaseChannelLatestVersion?.STABLE),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		central1b, err := container.GetEngineVersions(ctx, &container.GetEngineVersionsArgs{
/// 			Location:      pulumi.StringRef("us-central1-b"),
/// 			VersionPrefix: pulumi.StringRef("1.12."),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = container.NewCluster(ctx, "foo", &container.ClusterArgs{
/// 			Name:             pulumi.String("test-cluster"),
/// 			Location:         pulumi.String("us-central1-b"),
/// 			NodeVersion:      pulumi.String(central1b.LatestNodeVersion),
/// 			InitialNodeCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("stableChannelDefaultVersion", central1b.ReleaseChannelDefaultVersion.STABLE)
/// 		ctx.Export("stableChannelLatestVersion", central1b.ReleaseChannelLatestVersion.STABLE)
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
/// data "gcp_container_getengineversions" "central1b" {
///   location       = "us-central1-b"
///   version_prefix = "1.12."
/// }
///
/// resource "gcp_container_cluster" "foo" {
///   name               = "test-cluster"
///   location           = "us-central1-b"
///   node_version       = data.gcp_container_getengineversions.central1b.latest_node_version
///   initial_node_count = 1
/// }
/// output "stableChannelDefaultVersion" {
///   value = data.gcp_container_getengineversions.central1b.release_channel_default_version["STABLE"]
/// }
/// output "stableChannelLatestVersion" {
///   value = data.gcp_container_getengineversions.central1b.release_channel_latest_version["STABLE"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetEngineVersionsArgs;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
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
///         final var central1b = ContainerFunctions.getEngineVersions(GetEngineVersionsArgs.builder()
///             .location("us-central1-b")
///             .versionPrefix("1.12.")
///             .build());
///
///         var foo = new Cluster("foo", ClusterArgs.builder()
///             .name("test-cluster")
///             .location("us-central1-b")
///             .nodeVersion(central1b.latestNodeVersion())
///             .initialNodeCount(1)
///             .build());
///
///         ctx.export("stableChannelDefaultVersion", central1b.releaseChannelDefaultVersion().STABLE());
///         ctx.export("stableChannelLatestVersion", central1b.releaseChannelLatestVersion().STABLE());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: gcp:container:Cluster
///     properties:
///       name: test-cluster
///       location: us-central1-b
///       nodeVersion: ${central1b.latestNodeVersion}
///       initialNodeCount: 1
/// variables:
///   central1b:
///     fn::invoke:
///       function: gcp:container:getEngineVersions
///       arguments:
///         location: us-central1-b
///         versionPrefix: 1.12.
/// outputs:
///   stableChannelDefaultVersion: ${central1b.releaseChannelDefaultVersion.STABLE}
///   stableChannelLatestVersion: ${central1b.releaseChannelLatestVersion.STABLE}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_container_get_engine_versions_get_engine_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEngineVersionsResult> getEngineVersions(
  GetEngineVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getEngineVersions:getEngineVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionsResult.fromMap(result);
}

/// &gt; **Warning**: Container Registry is deprecated. Effective March 18, 2025, Container Registry is shut down and writing images to Container Registry is unavailable. Resource will be removed in future major release.
///
/// This data source fetches the project name, and provides the appropriate URLs to use for container registry for this project.
///
/// The URLs are computed entirely offline - as long as the project exists, they will be valid, but this data source does not contact Google Container Registry (GCR) at any point.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian = gcp.container.getRegistryImage({
///     name: "debian",
/// });
/// export const gcrLocation = debian.then(debian => debian.imageUrl);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian = gcp.container.get_registry_image(name="debian")
/// pulumi.export("gcrLocation", debian.image_url)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var debian = Gcp.Container.GetRegistryImage.Invoke(new()
///     {
///         Name = "debian",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gcrLocation"] = debian.Apply(getRegistryImageResult => getRegistryImageResult.ImageUrl),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		debian, err := container.GetRegistryImage(ctx, &container.GetRegistryImageArgs{
/// 			Name: "debian",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gcrLocation", debian.ImageUrl)
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
/// data "gcp_container_getregistryimage" "debian" {
///   name = "debian"
/// }
///
/// output "gcrLocation" {
///   value = data.gcp_container_getregistryimage.debian.image_url
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetRegistryImageArgs;
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
///         final var debian = ContainerFunctions.getRegistryImage(GetRegistryImageArgs.builder()
///             .name("debian")
///             .build());
///
///         ctx.export("gcrLocation", debian.imageUrl());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   debian:
///     fn::invoke:
///       function: gcp:container:getRegistryImage
///       arguments:
///         name: debian
/// outputs:
///   gcrLocation: ${debian.imageUrl}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_container_get_registry_image_get_registry_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryImageResult> getRegistryImage(
  GetRegistryImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getRegistryImage:getRegistryImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryImageResult.fromMap(result);
}

/// &gt; **Warning**: Container Registry is deprecated. Effective March 18, 2025, Container Registry is shut down and writing images to Container Registry is unavailable. Resource will be removed in future major release.
///
/// This data source fetches the project name, and provides the appropriate URLs to use for container registry for this project.
///
/// The URLs are computed entirely offline - as long as the project exists, they will be valid, but this data source does not contact Google Container Registry (GCR) at any point.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.container.getRegistryRepository({});
/// export const gcrLocation = foo.then(foo => foo.repositoryUrl);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.container.get_registry_repository()
/// pulumi.export("gcrLocation", foo.repository_url)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.Container.GetRegistryRepository.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["gcrLocation"] = foo.Apply(getRegistryRepositoryResult => getRegistryRepositoryResult.RepositoryUrl),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := container.GetRegistryRepository(ctx, &container.GetRegistryRepositoryArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gcrLocation", foo.RepositoryUrl)
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
/// data "gcp_container_getregistryrepository" "foo" {
/// }
///
/// output "gcrLocation" {
///   value = data.gcp_container_getregistryrepository.foo.repository_url
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetRegistryRepositoryArgs;
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
///         final var foo = ContainerFunctions.getRegistryRepository(GetRegistryRepositoryArgs.builder()
///             .build());
///
///         ctx.export("gcrLocation", foo.repositoryUrl());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:container:getRegistryRepository
///       arguments: {}
/// outputs:
///   gcrLocation: ${foo.repositoryUrl}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_container_get_registry_repository_get_registry_repository_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryRepositoryResult> getRegistryRepository(
  GetRegistryRepositoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getRegistryRepository:getRegistryRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryRepositoryResult.fromMap(result);
}
