import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_kusto_args.dart';
import 'linked_service_kusto_state.dart';

/// Manages a Linked Service (connection) between a Kusto Cluster and Azure Data Factory.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     identity: {
///         type: "SystemAssigned",
///     },
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
/// const exampleDatabase = new azure.kusto.Database("example", {
///     name: "my-kusto-database",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterName: exampleCluster.name,
/// });
/// const exampleLinkedServiceKusto = new azure.datafactory.LinkedServiceKusto("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     kustoEndpoint: exampleCluster.uri,
///     kustoDatabaseName: exampleDatabase.name,
///     useManagedIdentity: true,
/// });
/// const exampleDatabasePrincipalAssignment = new azure.kusto.DatabasePrincipalAssignment("example", {
///     name: "KustoPrincipalAssignment",
///     resourceGroupName: example.name,
///     clusterName: exampleCluster.name,
///     databaseName: exampleDatabase.name,
///     tenantId: exampleFactory.identity.apply(identity => identity?.tenantId),
///     principalId: exampleFactory.identity.apply(identity => identity?.principalId),
///     principalType: "App",
///     role: "Viewer",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_cluster = azure.kusto.Cluster("example",
///     name="kustocluster",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Standard_D13_v2",
///         "capacity": 2,
///     })
/// example_database = azure.kusto.Database("example",
///     name="my-kusto-database",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_name=example_cluster.name)
/// example_linked_service_kusto = azure.datafactory.LinkedServiceKusto("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     kusto_endpoint=example_cluster.uri,
///     kusto_database_name=example_database.name,
///     use_managed_identity=True)
/// example_database_principal_assignment = azure.kusto.DatabasePrincipalAssignment("example",
///     name="KustoPrincipalAssignment",
///     resource_group_name=example.name,
///     cluster_name=example_cluster.name,
///     database_name=example_database.name,
///     tenant_id=example_factory.identity.tenant_id,
///     principal_id=example_factory.identity.principal_id,
///     principal_type="App",
///     role="Viewer")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Identity = new Azure.DataFactory.Inputs.FactoryIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
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
///     var exampleDatabase = new Azure.Kusto.Database("example", new()
///     {
///         Name = "my-kusto-database",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterName = exampleCluster.Name,
///     });
///
///     var exampleLinkedServiceKusto = new Azure.DataFactory.LinkedServiceKusto("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         KustoEndpoint = exampleCluster.Uri,
///         KustoDatabaseName = exampleDatabase.Name,
///         UseManagedIdentity = true,
///     });
///
///     var exampleDatabasePrincipalAssignment = new Azure.Kusto.DatabasePrincipalAssignment("example", new()
///     {
///         Name = "KustoPrincipalAssignment",
///         ResourceGroupName = example.Name,
///         ClusterName = exampleCluster.Name,
///         DatabaseName = exampleDatabase.Name,
///         TenantId = exampleFactory.Identity.Apply(identity => identity?.TenantId),
///         PrincipalId = exampleFactory.Identity.Apply(identity => identity?.PrincipalId),
///         PrincipalType = "App",
///         Role = "Viewer",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Identity: &datafactory.FactoryIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
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
/// 		exampleDatabase, err := kusto.NewDatabase(ctx, "example", &kusto.DatabaseArgs{
/// 			Name:              pulumi.String("my-kusto-database"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			ClusterName:       exampleCluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewLinkedServiceKusto(ctx, "example", &datafactory.LinkedServiceKustoArgs{
/// 			Name:               pulumi.String("example"),
/// 			DataFactoryId:      exampleFactory.ID(),
/// 			KustoEndpoint:      exampleCluster.Uri,
/// 			KustoDatabaseName:  exampleDatabase.Name,
/// 			UseManagedIdentity: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewDatabasePrincipalAssignment(ctx, "example", &kusto.DatabasePrincipalAssignmentArgs{
/// 			Name:              pulumi.String("KustoPrincipalAssignment"),
/// 			ResourceGroupName: example.Name,
/// 			ClusterName:       exampleCluster.Name,
/// 			DatabaseName:      exampleDatabase.Name,
/// 			TenantId: pulumi.String(exampleFactory.Identity.ApplyT(func(identity datafactory.FactoryIdentity) (*string, error) {
/// 				return identity.TenantId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			PrincipalId: pulumi.String(exampleFactory.Identity.ApplyT(func(identity datafactory.FactoryIdentity) (*string, error) {
/// 				return identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			PrincipalType: pulumi.String("App"),
/// 			Role:          pulumi.String("Viewer"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_datafactory_factory" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_kusto_cluster" "example" {
///   name                = "kustocluster"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku = {
///     name     = "Standard_D13_v2"
///     capacity = 2
///   }
/// }
/// resource "azure_kusto_database" "example" {
///   name                = "my-kusto-database"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   cluster_name        = azure_kusto_cluster.example.name
/// }
/// resource "azure_datafactory_linkedservicekusto" "example" {
///   name                 = "example"
///   data_factory_id      = azure_datafactory_factory.example.id
///   kusto_endpoint       = azure_kusto_cluster.example.uri
///   kusto_database_name  = azure_kusto_database.example.name
///   use_managed_identity = true
/// }
/// resource "azure_kusto_databaseprincipalassignment" "example" {
///   name                = "KustoPrincipalAssignment"
///   resource_group_name = azure_core_resourcegroup.example.name
///   cluster_name        = azure_kusto_cluster.example.name
///   database_name       = azure_kusto_database.example.name
///   tenant_id           = azure_datafactory_factory.example.identity.tenant_id
///   principal_id        = azure_datafactory_factory.example.identity.principal_id
///   principal_type      = "App"
///   role                = "Viewer"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.inputs.FactoryIdentityArgs;
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
/// import com.pulumi.azure.kusto.Database;
/// import com.pulumi.azure.kusto.DatabaseArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceKusto;
/// import com.pulumi.azure.datafactory.LinkedServiceKustoArgs;
/// import com.pulumi.azure.kusto.DatabasePrincipalAssignment;
/// import com.pulumi.azure.kusto.DatabasePrincipalAssignmentArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .identity(FactoryIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
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
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("my-kusto-database")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterName(exampleCluster.name())
///             .build());
///
///         var exampleLinkedServiceKusto = new LinkedServiceKusto("exampleLinkedServiceKusto", LinkedServiceKustoArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .kustoEndpoint(exampleCluster.uri())
///             .kustoDatabaseName(exampleDatabase.name())
///             .useManagedIdentity(true)
///             .build());
///
///         var exampleDatabasePrincipalAssignment = new DatabasePrincipalAssignment("exampleDatabasePrincipalAssignment", DatabasePrincipalAssignmentArgs.builder()
///             .name("KustoPrincipalAssignment")
///             .resourceGroupName(example.name())
///             .clusterName(exampleCluster.name())
///             .databaseName(exampleDatabase.name())
///             .tenantId(exampleFactory.identity().applyValue(_identity -> _identity.tenantId()))
///             .principalId(exampleFactory.identity().applyValue(_identity -> _identity.principalId()))
///             .principalType("App")
///             .role("Viewer")
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
///       name: example-resources
///       location: West Europe
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       identity:
///         type: SystemAssigned
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
///   exampleDatabase:
///     type: azure:kusto:Database
///     name: example
///     properties:
///       name: my-kusto-database
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterName: ${exampleCluster.name}
///   exampleLinkedServiceKusto:
///     type: azure:datafactory:LinkedServiceKusto
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       kustoEndpoint: ${exampleCluster.uri}
///       kustoDatabaseName: ${exampleDatabase.name}
///       useManagedIdentity: true
///   exampleDatabasePrincipalAssignment:
///     type: azure:kusto:DatabasePrincipalAssignment
///     name: example
///     properties:
///       name: KustoPrincipalAssignment
///       resourceGroupName: ${example.name}
///       clusterName: ${exampleCluster.name}
///       databaseName: ${exampleDatabase.name}
///       tenantId: ${exampleFactory.identity.tenantId}
///       principalId: ${exampleFactory.identity.principalId}
///       principalType: App
///       role: Viewer
/// ```
///
///
/// ## Import
///
/// Data Factory Linked Service's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceKusto:LinkedServiceKusto example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceKusto extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Azure Kusto Linked Service:
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  late final pulumi.Output<String?> description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  late final pulumi.Output<String?> integrationRuntimeName;
  /// The Kusto Database Name.
  late final pulumi.Output<String> kustoDatabaseName;
  /// The URI of the Kusto Cluster endpoint.
  late final pulumi.Output<String> kustoEndpoint;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The service principal id in which to authenticate against the Kusto Database.
  late final pulumi.Output<String?> servicePrincipalId;
  /// The service principal key in which to authenticate against the Kusto Database.
  late final pulumi.Output<String?> servicePrincipalKey;
  /// The service principal tenant id or name in which to authenticate against the Kusto Database.
  ///
  /// &gt; **Note:** If `servicePrincipalId` is used, `servicePrincipalKey` and `tenant` is also required.
  ///
  /// &gt; **Note:** One of Managed Identity authentication and Service Principal authentication must be set.
  late final pulumi.Output<String?> tenant;
  /// Whether to use the Data Factory's managed identity to authenticate against the Kusto Database.
  late final pulumi.Output<bool?> useManagedIdentity;

  /// Creates a new [LinkedServiceKusto].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceKusto]. {@macro pulumi_datafactory_linked_service_kusto_linked_service_kusto_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceKusto(
    String name, {
    LinkedServiceKustoArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceKusto:LinkedServiceKusto',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    kustoDatabaseName = registerOutput<String>('kustoDatabaseName');
    kustoEndpoint = registerOutput<String>('kustoEndpoint');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    servicePrincipalId = registerOutput<String?>('servicePrincipalId');
    servicePrincipalKey = registerOutput<String?>('servicePrincipalKey');
    tenant = registerOutput<String?>('tenant');
    useManagedIdentity = registerOutput<bool?>('useManagedIdentity');
  }

  /// Gets an existing [LinkedServiceKusto] resource's state with the given [name] and [id].
  static LinkedServiceKusto get(
    String name,
    pulumi.Input<String> id, {
    LinkedServiceKustoState? state,
  }) {
    return LinkedServiceKusto._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkedServiceKusto._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceKusto:LinkedServiceKusto',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    kustoDatabaseName = registerOutput<String>('kustoDatabaseName');
    kustoEndpoint = registerOutput<String>('kustoEndpoint');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    servicePrincipalId = registerOutput<String?>('servicePrincipalId');
    servicePrincipalKey = registerOutput<String?>('servicePrincipalKey');
    tenant = registerOutput<String?>('tenant');
    useManagedIdentity = registerOutput<bool?>('useManagedIdentity');
  }
}
