import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_cluster_template_args.dart';
import 'get_cluster_template_result.dart';
import 'get_node_group_args.dart';
import 'get_node_group_result.dart';

/// Use this data source to get the ID of an available OpenStack Magnum cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const cluster1 = openstack.containerinfra.getCluster({
///     name: "cluster_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// cluster1 = openstack.containerinfra.get_cluster(name="cluster_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster1 = OpenStack.ContainerInfra.GetCluster.Invoke(new()
///     {
///         Name = "cluster_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/containerinfra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerinfra.LookupCluster(ctx, &containerinfra.LookupClusterArgs{
/// 			Name: "cluster_1",
/// 		}, nil)
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
/// import com.pulumi.openstack.containerinfra.ContainerinfraFunctions;
/// import com.pulumi.openstack.containerinfra.inputs.GetClusterArgs;
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
///         final var cluster1 = ContainerinfraFunctions.getCluster(GetClusterArgs.builder()
///             .name("cluster_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   cluster1:
///     fn::invoke:
///       function: openstack:containerinfra:getCluster
///       arguments:
///         name: cluster_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_containerinfra_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:containerinfra/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack Magnum cluster
/// template.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const clustertemplate1 = openstack.containerinfra.getClusterTemplate({
///     name: "clustertemplate_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// clustertemplate1 = openstack.containerinfra.get_cluster_template(name="clustertemplate_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var clustertemplate1 = OpenStack.ContainerInfra.GetClusterTemplate.Invoke(new()
///     {
///         Name = "clustertemplate_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/containerinfra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerinfra.LookupClusterTemplate(ctx, &containerinfra.LookupClusterTemplateArgs{
/// 			Name: "clustertemplate_1",
/// 		}, nil)
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
/// import com.pulumi.openstack.containerinfra.ContainerinfraFunctions;
/// import com.pulumi.openstack.containerinfra.inputs.GetClusterTemplateArgs;
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
///         final var clustertemplate1 = ContainerinfraFunctions.getClusterTemplate(GetClusterTemplateArgs.builder()
///             .name("clustertemplate_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   clustertemplate1:
///     fn::invoke:
///       function: openstack:containerinfra:getClusterTemplate
///       arguments:
///         name: clustertemplate_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_containerinfra_get_cluster_template_get_cluster_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterTemplateResult> getClusterTemplate(
  GetClusterTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:containerinfra/getClusterTemplate:getClusterTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterTemplateResult.fromMap(result);
}

/// Use this data source to get information of an available OpenStack Magnum node group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const nodegroup1 = openstack.containerinfra.getNodeGroup({
///     clusterId: "cluster_1",
///     name: "nodegroup_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// nodegroup1 = openstack.containerinfra.get_node_group(cluster_id="cluster_1",
///     name="nodegroup_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nodegroup1 = OpenStack.ContainerInfra.GetNodeGroup.Invoke(new()
///     {
///         ClusterId = "cluster_1",
///         Name = "nodegroup_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/containerinfra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerinfra.LookupNodeGroup(ctx, &containerinfra.LookupNodeGroupArgs{
/// 			ClusterId: "cluster_1",
/// 			Name:      pulumi.StringRef("nodegroup_1"),
/// 		}, nil)
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
/// import com.pulumi.openstack.containerinfra.ContainerinfraFunctions;
/// import com.pulumi.openstack.containerinfra.inputs.GetNodeGroupArgs;
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
///         final var nodegroup1 = ContainerinfraFunctions.getNodeGroup(GetNodeGroupArgs.builder()
///             .clusterId("cluster_1")
///             .name("nodegroup_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   nodegroup1:
///     fn::invoke:
///       function: openstack:containerinfra:getNodeGroup
///       arguments:
///         clusterId: cluster_1
///         name: nodegroup_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_containerinfra_get_node_group_get_node_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeGroupResult> getNodeGroup(
  GetNodeGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:containerinfra/getNodeGroup:getNodeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupResult.fromMap(result);
}
