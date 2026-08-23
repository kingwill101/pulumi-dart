import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_args.dart';
import 'get_cluster_node_pool_result.dart';
import 'get_fleet_manager_args.dart';
import 'get_fleet_manager_result.dart';
import 'get_group_args.dart';
import 'get_group_result.dart';
import 'get_kubernetes_cluster_args.dart';
import 'get_kubernetes_cluster_result.dart';
import 'get_kubernetes_node_pool_snapshot_args.dart';
import 'get_kubernetes_node_pool_snapshot_result.dart';
import 'get_kubernetes_service_versions_args.dart';
import 'get_kubernetes_service_versions_result.dart';
import 'get_registry_args.dart';
import 'get_registry_cache_rule_args.dart';
import 'get_registry_cache_rule_result.dart';
import 'get_registry_result.dart';
import 'get_registry_scope_map_args.dart';
import 'get_registry_scope_map_result.dart';
import 'get_registry_token_args.dart';
import 'get_registry_token_result.dart';

/// Use this data source to access information about an existing Kubernetes Cluster Node Pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.containerservice.getClusterNodePool({
///     name: "existing",
///     kubernetesClusterName: "existing-cluster",
///     resourceGroupName: "existing-resource-group",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.containerservice.get_cluster_node_pool(name="existing",
///     kubernetes_cluster_name="existing-cluster",
///     resource_group_name="existing-resource-group")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ContainerService.GetClusterNodePool.Invoke(new()
///     {
///         Name = "existing",
///         KubernetesClusterName = "existing-cluster",
///         ResourceGroupName = "existing-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getClusterNodePoolResult => getClusterNodePoolResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := containerservice.GetClusterNodePool(ctx, &containerservice.GetClusterNodePoolArgs{
/// 			Name:                  "existing",
/// 			KubernetesClusterName: "existing-cluster",
/// 			ResourceGroupName:     "existing-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// data "azure_containerservice_getclusternodepool" "example" {
///   name                    = "existing"
///   kubernetes_cluster_name = "existing-cluster"
///   resource_group_name     = "existing-resource-group"
/// }
///
/// output "id" {
///   value = data.azure_containerservice_getclusternodepool.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.containerservice.ContainerserviceFunctions;
/// import com.pulumi.azure.containerservice.inputs.GetClusterNodePoolArgs;
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
///         final var example = ContainerserviceFunctions.getClusterNodePool(GetClusterNodePoolArgs.builder()
///             .name("existing")
///             .kubernetesClusterName("existing-cluster")
///             .resourceGroupName("existing-resource-group")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:containerservice:getClusterNodePool
///       arguments:
///         name: existing
///         kubernetesClusterName: existing-cluster
///         resourceGroupName: existing-resource-group
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ContainerService` - 2025-10-01
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_cluster_node_pool_get_cluster_node_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterNodePoolResult> getClusterNodePool(
  GetClusterNodePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:containerservice/getClusterNodePool:getClusterNodePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterNodePoolResult.fromMap(result);
}

/// Use this data source to access information about an existing Kubernetes Fleet Manager.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.containerservice.getFleetManager({
///     name: "example",
///     resourceGroupName: "example-resource-group",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.containerservice.get_fleet_manager(name="example",
///     resource_group_name="example-resource-group")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ContainerService.GetFleetManager.Invoke(new()
///     {
///         Name = "example",
///         ResourceGroupName = "example-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getFleetManagerResult => getFleetManagerResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := containerservice.GetFleetManager(ctx, &containerservice.GetFleetManagerArgs{
/// 			Name:              "example",
/// 			ResourceGroupName: "example-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// data "azure_containerservice_getfleetmanager" "example" {
///   name                = "example"
///   resource_group_name = "example-resource-group"
/// }
///
/// output "id" {
///   value = data.azure_containerservice_getfleetmanager.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.containerservice.ContainerserviceFunctions;
/// import com.pulumi.azure.containerservice.inputs.GetFleetManagerArgs;
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
///         final var example = ContainerserviceFunctions.getFleetManager(GetFleetManagerArgs.builder()
///             .name("example")
///             .resourceGroupName("example-resource-group")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:containerservice:getFleetManager
///       arguments:
///         name: example
///         resourceGroupName: example-resource-group
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ContainerService` - 2024-04-01
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_fleet_manager_get_fleet_manager_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetManagerResult> getFleetManager(
  GetFleetManagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:containerservice/getFleetManager:getFleetManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetManagerResult.fromMap(result);
}

/// Use this data source to access information about an existing Container Group instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.containerservice.getGroup({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// export const ipAddress = example.then(example => example.ipAddress);
/// export const fqdn = example.then(example => example.fqdn);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.containerservice.get_group(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// pulumi.export("ipAddress", example.ip_address)
/// pulumi.export("fqdn", example.fqdn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ContainerService.GetGroup.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getGroupResult => getGroupResult.Id),
///         ["ipAddress"] = example.Apply(getGroupResult => getGroupResult.IpAddress),
///         ["fqdn"] = example.Apply(getGroupResult => getGroupResult.Fqdn),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := containerservice.LookupGroup(ctx, &containerservice.LookupGroupArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		ctx.Export("ipAddress", example.IpAddress)
/// 		ctx.Export("fqdn", example.Fqdn)
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
/// data "azure_containerservice_getgroup" "example" {
///   name                = "existing"
///   resource_group_name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_containerservice_getgroup.example.id
/// }
/// output "ipAddress" {
///   value = data.azure_containerservice_getgroup.example.ip_address
/// }
/// output "fqdn" {
///   value = data.azure_containerservice_getgroup.example.fqdn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.containerservice.ContainerserviceFunctions;
/// import com.pulumi.azure.containerservice.inputs.GetGroupArgs;
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
///         final var example = ContainerserviceFunctions.getGroup(GetGroupArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///         ctx.export("ipAddress", example.ipAddress());
///         ctx.export("fqdn", example.fqdn());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:containerservice:getGroup
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
///   ipAddress: ${example.ipAddress}
///   fqdn: ${example.fqdn}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ContainerInstance` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_group_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:containerservice/getGroup:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}

/// Use this data source to access information about an existing Managed Kubernetes Cluster (AKS).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.containerservice.getKubernetesCluster({
///     name: "myakscluster",
///     resourceGroupName: "my-example-resource-group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.containerservice.get_kubernetes_cluster(name="myakscluster",
///     resource_group_name="my-example-resource-group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ContainerService.GetKubernetesCluster.Invoke(new()
///     {
///         Name = "myakscluster",
///         ResourceGroupName = "my-example-resource-group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.LookupKubernetesCluster(ctx, &containerservice.LookupKubernetesClusterArgs{
/// 			Name:              "myakscluster",
/// 			ResourceGroupName: "my-example-resource-group",
/// 		}, nil)
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
/// data "azure_containerservice_getkubernetescluster" "example" {
///   name                = "myakscluster"
///   resource_group_name = "my-example-resource-group"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.containerservice.ContainerserviceFunctions;
/// import com.pulumi.azure.containerservice.inputs.GetKubernetesClusterArgs;
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
///         final var example = ContainerserviceFunctions.getKubernetesCluster(GetKubernetesClusterArgs.builder()
///             .name("myakscluster")
///             .resourceGroupName("my-example-resource-group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:containerservice:getKubernetesCluster
///       arguments:
///         name: myakscluster
///         resourceGroupName: my-example-resource-group
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ContainerService` - 2025-10-01
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_kubernetes_cluster_get_kubernetes_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesClusterResult> getKubernetesCluster(
  GetKubernetesClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:containerservice/getKubernetesCluster:getKubernetesCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesClusterResult.fromMap(result);
}

/// Use this data source to access information about an existing Kubernetes Node Pool Snapshot.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.containerservice.getKubernetesNodePoolSnapshot({
///     name: "example",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.containerservice.get_kubernetes_node_pool_snapshot(name="example",
///     resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ContainerService.GetKubernetesNodePoolSnapshot.Invoke(new()
///     {
///         Name = "example",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.GetKubernetesNodePoolSnapshot(ctx, &containerservice.GetKubernetesNodePoolSnapshotArgs{
/// 			Name:              "example",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
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
/// data "azure_containerservice_getkubernetesnodepoolsnapshot" "example" {
///   name                = "example"
///   resource_group_name = "example-resources"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.containerservice.ContainerserviceFunctions;
/// import com.pulumi.azure.containerservice.inputs.GetKubernetesNodePoolSnapshotArgs;
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
///         final var example = ContainerserviceFunctions.getKubernetesNodePoolSnapshot(GetKubernetesNodePoolSnapshotArgs.builder()
///             .name("example")
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:containerservice:getKubernetesNodePoolSnapshot
///       arguments:
///         name: example
///         resourceGroupName: example-resources
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ContainerService` - 2025-10-01
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_kubernetes_node_pool_snapshot_get_kubernetes_node_pool_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesNodePoolSnapshotResult> getKubernetesNodePoolSnapshot(
  GetKubernetesNodePoolSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:containerservice/getKubernetesNodePoolSnapshot:getKubernetesNodePoolSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesNodePoolSnapshotResult.fromMap(result);
}

/// Use this data source to retrieve the version of Kubernetes supported by Azure Kubernetes Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.containerservice.getKubernetesServiceVersions({
///     location: "West Europe",
/// });
/// export const versions = current.then(current => current.versions);
/// export const latestVersion = current.then(current => current.latestVersion);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.containerservice.get_kubernetes_service_versions(location="West Europe")
/// pulumi.export("versions", current.versions)
/// pulumi.export("latestVersion", current.latest_version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.ContainerService.GetKubernetesServiceVersions.Invoke(new()
///     {
///         Location = "West Europe",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["versions"] = current.Apply(getKubernetesServiceVersionsResult => getKubernetesServiceVersionsResult.Versions),
///         ["latestVersion"] = current.Apply(getKubernetesServiceVersionsResult => getKubernetesServiceVersionsResult.LatestVersion),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := containerservice.GetKubernetesServiceVersions(ctx, &containerservice.GetKubernetesServiceVersionsArgs{
/// 			Location: "West Europe",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("versions", current.Versions)
/// 		ctx.Export("latestVersion", current.LatestVersion)
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
/// data "azure_containerservice_getkubernetesserviceversions" "current" {
///   location = "West Europe"
/// }
///
/// output "versions" {
///   value = data.azure_containerservice_getkubernetesserviceversions.current.versions
/// }
/// output "latestVersion" {
///   value = data.azure_containerservice_getkubernetesserviceversions.current.latest_version
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.containerservice.ContainerserviceFunctions;
/// import com.pulumi.azure.containerservice.inputs.GetKubernetesServiceVersionsArgs;
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
///         final var current = ContainerserviceFunctions.getKubernetesServiceVersions(GetKubernetesServiceVersionsArgs.builder()
///             .location("West Europe")
///             .build());
///
///         ctx.export("versions", current.versions());
///         ctx.export("latestVersion", current.latestVersion());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: azure:containerservice:getKubernetesServiceVersions
///       arguments:
///         location: West Europe
/// outputs:
///   versions: ${current.versions}
///   latestVersion: ${current.latestVersion}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ContainerService` - 2019-08-01
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_kubernetes_service_versions_get_kubernetes_service_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesServiceVersionsResult> getKubernetesServiceVersions(
  GetKubernetesServiceVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:containerservice/getKubernetesServiceVersions:getKubernetesServiceVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesServiceVersionsResult.fromMap(result);
}

/// Use this data source to access information about an existing Container Registry.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.containerservice.getRegistry({
///     name: "testacr",
///     resourceGroupName: "test",
/// });
/// export const loginServer = example.then(example => example.loginServer);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.containerservice.get_registry(name="testacr",
///     resource_group_name="test")
/// pulumi.export("loginServer", example.login_server)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ContainerService.GetRegistry.Invoke(new()
///     {
///         Name = "testacr",
///         ResourceGroupName = "test",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["loginServer"] = example.Apply(getRegistryResult => getRegistryResult.LoginServer),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := containerservice.LookupRegistry(ctx, &containerservice.LookupRegistryArgs{
/// 			Name:              "testacr",
/// 			ResourceGroupName: "test",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("loginServer", example.LoginServer)
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
/// data "azure_containerservice_getregistry" "example" {
///   name                = "testacr"
///   resource_group_name = "test"
/// }
///
/// output "loginServer" {
///   value = data.azure_containerservice_getregistry.example.login_server
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.containerservice.ContainerserviceFunctions;
/// import com.pulumi.azure.containerservice.inputs.GetRegistryArgs;
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
///         final var example = ContainerserviceFunctions.getRegistry(GetRegistryArgs.builder()
///             .name("testacr")
///             .resourceGroupName("test")
///             .build());
///
///         ctx.export("loginServer", example.loginServer());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:containerservice:getRegistry
///       arguments:
///         name: testacr
///         resourceGroupName: test
/// outputs:
///   loginServer: ${example.loginServer}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ContainerRegistry` - 2025-11-01
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_registry_get_registry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryResult> getRegistry(
  GetRegistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:containerservice/getRegistry:getRegistry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryResult.fromMap(result);
}

/// Use this data source to access information about an existing Container Registry Cache Rule.
///
/// ## Example Usage
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_containerservice_getregistry" "example" {
///   name                  = "testacr"
///   container_registry_id = "test"
/// }
///
/// output "cacheRuleSourceRepo" {
///   value = exampleAzurermContainerRegistryCacheRule.sourceRepo
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:containerservice:getRegistry
///       arguments:
///         name: testacr
///         containerRegistryId: test
/// outputs:
///   cacheRuleSourceRepo: ${exampleAzurermContainerRegistryCacheRule.sourceRepo}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ContainerRegistry` - 2023-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_registry_cache_rule_get_registry_cache_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryCacheRuleResult> getRegistryCacheRule(
  GetRegistryCacheRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:containerservice/getRegistryCacheRule:getRegistryCacheRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryCacheRuleResult.fromMap(result);
}

/// Use this data source to access information about an existing Container Registry scope map.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.containerservice.getRegistryScopeMap({
///     name: "example-scope-map",
///     resourceGroupName: "example-resource-group",
///     containerRegistryName: "example-registry",
/// });
/// export const actions = example.then(example => example.actions);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.containerservice.get_registry_scope_map(name="example-scope-map",
///     resource_group_name="example-resource-group",
///     container_registry_name="example-registry")
/// pulumi.export("actions", example.actions)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ContainerService.GetRegistryScopeMap.Invoke(new()
///     {
///         Name = "example-scope-map",
///         ResourceGroupName = "example-resource-group",
///         ContainerRegistryName = "example-registry",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["actions"] = example.Apply(getRegistryScopeMapResult => getRegistryScopeMapResult.Actions),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := containerservice.LookupRegistryScopeMap(ctx, &containerservice.LookupRegistryScopeMapArgs{
/// 			Name:                  "example-scope-map",
/// 			ResourceGroupName:     "example-resource-group",
/// 			ContainerRegistryName: "example-registry",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("actions", example.Actions)
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
/// data "azure_containerservice_getregistryscopemap" "example" {
///   name                    = "example-scope-map"
///   resource_group_name     = "example-resource-group"
///   container_registry_name = "example-registry"
/// }
///
/// output "actions" {
///   value = data.azure_containerservice_getregistryscopemap.example.actions
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.containerservice.ContainerserviceFunctions;
/// import com.pulumi.azure.containerservice.inputs.GetRegistryScopeMapArgs;
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
///         final var example = ContainerserviceFunctions.getRegistryScopeMap(GetRegistryScopeMapArgs.builder()
///             .name("example-scope-map")
///             .resourceGroupName("example-resource-group")
///             .containerRegistryName("example-registry")
///             .build());
///
///         ctx.export("actions", example.actions());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:containerservice:getRegistryScopeMap
///       arguments:
///         name: example-scope-map
///         resourceGroupName: example-resource-group
///         containerRegistryName: example-registry
/// outputs:
///   actions: ${example.actions}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ContainerRegistry` - 2025-11-01
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_registry_scope_map_get_registry_scope_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryScopeMapResult> getRegistryScopeMap(
  GetRegistryScopeMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:containerservice/getRegistryScopeMap:getRegistryScopeMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryScopeMapResult.fromMap(result);
}

/// Use this data source to access information about an existing Container Registry token.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.containerservice.getRegistryToken({
///     name: "exampletoken",
///     resourceGroupName: "example-resource-group",
///     containerRegistryName: "example-registry",
/// });
/// export const scopeMapId = example.then(example => example.scopeMapId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.containerservice.get_registry_token(name="exampletoken",
///     resource_group_name="example-resource-group",
///     container_registry_name="example-registry")
/// pulumi.export("scopeMapId", example.scope_map_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ContainerService.GetRegistryToken.Invoke(new()
///     {
///         Name = "exampletoken",
///         ResourceGroupName = "example-resource-group",
///         ContainerRegistryName = "example-registry",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["scopeMapId"] = example.Apply(getRegistryTokenResult => getRegistryTokenResult.ScopeMapId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := containerservice.LookupRegistryToken(ctx, &containerservice.LookupRegistryTokenArgs{
/// 			Name:                  "exampletoken",
/// 			ResourceGroupName:     "example-resource-group",
/// 			ContainerRegistryName: "example-registry",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("scopeMapId", example.ScopeMapId)
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
/// data "azure_containerservice_getregistrytoken" "example" {
///   name                    = "exampletoken"
///   resource_group_name     = "example-resource-group"
///   container_registry_name = "example-registry"
/// }
///
/// output "scopeMapId" {
///   value = data.azure_containerservice_getregistrytoken.example.scope_map_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.containerservice.ContainerserviceFunctions;
/// import com.pulumi.azure.containerservice.inputs.GetRegistryTokenArgs;
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
///         final var example = ContainerserviceFunctions.getRegistryToken(GetRegistryTokenArgs.builder()
///             .name("exampletoken")
///             .resourceGroupName("example-resource-group")
///             .containerRegistryName("example-registry")
///             .build());
///
///         ctx.export("scopeMapId", example.scopeMapId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:containerservice:getRegistryToken
///       arguments:
///         name: exampletoken
///         resourceGroupName: example-resource-group
///         containerRegistryName: example-registry
/// outputs:
///   scopeMapId: ${example.scopeMapId}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ContainerRegistry` - 2025-11-01
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_registry_token_get_registry_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryTokenResult> getRegistryToken(
  GetRegistryTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:containerservice/getRegistryToken:getRegistryToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryTokenResult.fromMap(result);
}
