import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_principal_assignment_args.dart';
import 'cluster_principal_assignment_state.dart';

/// Manages a Kusto Cluster Principal Assignment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "KustoRG",
///     location: "West Europe",
/// });
/// const exampleCluster = new azure.kusto.Cluster("example", {
///     name: "kustocluster",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         name: "Standard_D13_v2",
///         capacity: 2,
///     },
/// });
/// const exampleClusterPrincipalAssignment = new azure.kusto.ClusterPrincipalAssignment("example", {
///     name: "KustoPrincipalAssignment",
///     resourceGroupName: example.name,
///     clusterName: exampleCluster.name,
///     tenantId: current.then(current => current.tenantId),
///     principalId: current.then(current => current.principalId),
///     principalType: "App",
///     role: "AllDatabasesAdmin",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="KustoRG",
///     location="West Europe")
/// example_cluster = azure.kusto.Cluster("example",
///     name="kustocluster",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Standard_D13_v2",
///         "capacity": 2,
///     })
/// example_cluster_principal_assignment = azure.kusto.ClusterPrincipalAssignment("example",
///     name="KustoPrincipalAssignment",
///     resource_group_name=example.name,
///     cluster_name=example_cluster.name,
///     tenant_id=current.tenant_id,
///     principal_id=current.principal_id,
///     principal_type="App",
///     role="AllDatabasesAdmin")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "KustoRG",
///         Location = "West Europe",
///     });
///
///     var exampleCluster = new Azure.Kusto.Cluster("example", new()
///     {
///         Name = "kustocluster",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.Kusto.Inputs.ClusterSkuArgs
///         {
///             Name = "Standard_D13_v2",
///             Capacity = 2,
///         },
///     });
///
///     var exampleClusterPrincipalAssignment = new Azure.Kusto.ClusterPrincipalAssignment("example", new()
///     {
///         Name = "KustoPrincipalAssignment",
///         ResourceGroupName = example.Name,
///         ClusterName = exampleCluster.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         PrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.PrincipalId),
///         PrincipalType = "App",
///         Role = "AllDatabasesAdmin",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("KustoRG"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCluster, err := kusto.NewCluster(ctx, "example", &kusto.ClusterArgs{
/// 			Name:              pulumi.String("kustocluster"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &kusto.ClusterSkuArgs{
/// 				Name:     pulumi.String("Standard_D13_v2"),
/// 				Capacity: pulumi.Int(2),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewClusterPrincipalAssignment(ctx, "example", &kusto.ClusterPrincipalAssignmentArgs{
/// 			Name:              pulumi.String("KustoPrincipalAssignment"),
/// 			ResourceGroupName: example.Name,
/// 			ClusterName:       exampleCluster.Name,
/// 			TenantId:          pulumi.String(current.TenantId),
/// 			PrincipalId:       pulumi.Any(current.PrincipalId),
/// 			PrincipalType:     pulumi.String("App"),
/// 			Role:              pulumi.String("AllDatabasesAdmin"),
/// 		})
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
/// import com.pulumi.azure.kusto.ClusterPrincipalAssignment;
/// import com.pulumi.azure.kusto.ClusterPrincipalAssignmentArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("KustoRG")
///             .location("West Europe")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("kustocluster")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(ClusterSkuArgs.builder()
///                 .name("Standard_D13_v2")
///                 .capacity(2)
///                 .build())
///             .build());
///
///         var exampleClusterPrincipalAssignment = new ClusterPrincipalAssignment("exampleClusterPrincipalAssignment", ClusterPrincipalAssignmentArgs.builder()
///             .name("KustoPrincipalAssignment")
///             .resourceGroupName(example.name())
///             .clusterName(exampleCluster.name())
///             .tenantId(current.tenantId())
///             .principalId(current.principalId())
///             .principalType("App")
///             .role("AllDatabasesAdmin")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: KustoRG
///       location: West Europe
///   exampleCluster:
///     type: azure:kusto:Cluster
///     name: example
///     properties:
///       name: kustocluster
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         name: Standard_D13_v2
///         capacity: 2
///   exampleClusterPrincipalAssignment:
///     type: azure:kusto:ClusterPrincipalAssignment
///     name: example
///     properties:
///       name: KustoPrincipalAssignment
///       resourceGroupName: ${example.name}
///       clusterName: ${exampleCluster.name}
///       tenantId: ${current.tenantId}
///       principalId: ${current.principalId}
///       principalType: App
///       role: AllDatabasesAdmin
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Kusto` - 2024-04-13
///
/// ## Import
///
/// Data Explorer Cluster Principal Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:kusto/clusterPrincipalAssignment:ClusterPrincipalAssignment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Kusto/clusters/cluster1/principalAssignments/assignment1
/// ```
class ClusterPrincipalAssignment extends pulumi.CustomResource {
  /// The name of the cluster in which to create the resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterName;
  /// The name of the Kusto cluster principal assignment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The object id of the principal. Changing this forces a new resource to be created.
  late final pulumi.Output<String> principalId;
  /// The name of the principal.
  late final pulumi.Output<String> principalName;
  /// The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> principalType;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The cluster role assigned to the principal. Valid values include `AllDatabasesAdmin`, `AllDatabasesViewer`, and `AllDatabasesMonitor`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> role;
  /// The tenant id in which the principal resides. Changing this forces a new resource to be created.
  late final pulumi.Output<String> tenantId;
  /// The name of the tenant.
  late final pulumi.Output<String> tenantName;

  /// Creates a new [ClusterPrincipalAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterPrincipalAssignment]. {@macro pulumi_kusto_cluster_principal_assignment_cluster_principal_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterPrincipalAssignment(
    String name, {
    ClusterPrincipalAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/clusterPrincipalAssignment:ClusterPrincipalAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterName = registerOutput<String>('clusterName');
    this.name = registerOutput<String>('name');
    this.principalId = registerOutput<String>('principalId');
    this.principalName = registerOutput<String>('principalName');
    this.principalType = registerOutput<String>('principalType');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.role = registerOutput<String>('role');
    this.tenantId = registerOutput<String>('tenantId');
    this.tenantName = registerOutput<String>('tenantName');
  }

  /// Gets an existing [ClusterPrincipalAssignment] resource's state with the given [name] and [id].
  static ClusterPrincipalAssignment get(
    String name,
    pulumi.Input<String> id, {
    ClusterPrincipalAssignmentState? state,
  }) {
    return ClusterPrincipalAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClusterPrincipalAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/clusterPrincipalAssignment:ClusterPrincipalAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterName = registerOutput<String>('clusterName');
    this.name = registerOutput<String>('name');
    this.principalId = registerOutput<String>('principalId');
    this.principalName = registerOutput<String>('principalName');
    this.principalType = registerOutput<String>('principalType');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.role = registerOutput<String>('role');
    this.tenantId = registerOutput<String>('tenantId');
    this.tenantName = registerOutput<String>('tenantName');
  }
}
