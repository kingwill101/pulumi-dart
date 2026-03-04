import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_state.dart';

/// Manage a Azure Database Migration Project.
///
/// &gt; **NOTE:** Destroying a Database Migration Project will leave any outstanding tasks untouched. This is to avoid unexpectedly deleting any tasks managed outside of this provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
/// });
/// const exampleService = new azure.databasemigration.Service("example", {
///     name: "example-dbms",
///     location: example.location,
///     resourceGroupName: example.name,
///     subnetId: exampleSubnet.id,
///     skuName: "Standard_1vCores",
/// });
/// const exampleProject = new azure.databasemigration.Project("example", {
///     name: "example-dbms-project",
///     serviceName: exampleService.name,
///     resourceGroupName: example.name,
///     location: example.location,
///     sourcePlatform: "SQL",
///     targetPlatform: "SQLDB",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"])
/// example_service = azure.databasemigration.Service("example",
///     name="example-dbms",
///     location=example.location,
///     resource_group_name=example.name,
///     subnet_id=example_subnet.id,
///     sku_name="Standard_1vCores")
/// example_project = azure.databasemigration.Project("example",
///     name="example-dbms-project",
///     service_name=example_service.name,
///     resource_group_name=example.name,
///     location=example.location,
///     source_platform="SQL",
///     target_platform="SQLDB")
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///     });
///
///     var exampleService = new Azure.DatabaseMigration.Service("example", new()
///     {
///         Name = "example-dbms",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SubnetId = exampleSubnet.Id,
///         SkuName = "Standard_1vCores",
///     });
///
///     var exampleProject = new Azure.DatabaseMigration.Project("example", new()
///     {
///         Name = "example-dbms-project",
///         ServiceName = exampleService.Name,
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SourcePlatform = "SQL",
///         TargetPlatform = "SQLDB",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databasemigration"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := databasemigration.NewService(ctx, "example", &databasemigration.ServiceArgs{
/// 			Name:              pulumi.String("example-dbms"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SubnetId:          exampleSubnet.ID(),
/// 			SkuName:           pulumi.String("Standard_1vCores"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = databasemigration.NewProject(ctx, "example", &databasemigration.ProjectArgs{
/// 			Name:              pulumi.String("example-dbms-project"),
/// 			ServiceName:       exampleService.Name,
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SourcePlatform:    pulumi.String("SQL"),
/// 			TargetPlatform:    pulumi.String("SQLDB"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.databasemigration.Service;
/// import com.pulumi.azure.databasemigration.ServiceArgs;
/// import com.pulumi.azure.databasemigration.Project;
/// import com.pulumi.azure.databasemigration.ProjectArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-dbms")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .subnetId(exampleSubnet.id())
///             .skuName("Standard_1vCores")
///             .build());
///
///         var exampleProject = new Project("exampleProject", ProjectArgs.builder()
///             .name("example-dbms-project")
///             .serviceName(exampleService.name())
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sourcePlatform("SQL")
///             .targetPlatform("SQLDB")
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
///       name: example-rg
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///   exampleService:
///     type: azure:databasemigration:Service
///     name: example
///     properties:
///       name: example-dbms
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       subnetId: ${exampleSubnet.id}
///       skuName: Standard_1vCores
///   exampleProject:
///     type: azure:databasemigration:Project
///     name: example
///     properties:
///       name: example-dbms-project
///       serviceName: ${exampleService.name}
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sourcePlatform: SQL
///       targetPlatform: SQLDB
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataMigration` - 2021-06-30
///
/// ## Import
///
/// Database Migration Projects can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:databasemigration/project:Project example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.DataMigration/services/example-dms/projects/project1
/// ```
class Project extends pulumi.CustomResource {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specify the name of the database migration project. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Name of the resource group in which to create the database migration project. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Name of the database migration service where resource belongs to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serviceName;

  /// The platform type of the migration source. Possible values are `MongoDb`, `MySQL`, `PostgreSql`, `SQL` and `Unknown`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sourcePlatform;

  /// A mapping of tags to assigned to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The platform type of the migration target. Possible values are `AzureDbForMySql`, `AzureDbForPostgreSql`, `MongoDb`, `SQLDB`, `SQLMI` and `Unknown`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetPlatform;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_databasemigration_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:databasemigration/project:Project',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceName = registerOutput<String>('serviceName');
    sourcePlatform = registerOutput<String>('sourcePlatform');
    tags = registerOutput<Map<String, String>?>('tags');
    targetPlatform = registerOutput<String>('targetPlatform');
  }

  /// Gets an existing [Project] resource's state with the given [name] and [id].
  static Project get(
    String name,
    pulumi.Input<String> id, {
    ProjectState? state,
  }) {
    return Project._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Project._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:databasemigration/project:Project',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceName = registerOutput<String>('serviceName');
    sourcePlatform = registerOutput<String>('sourcePlatform');
    tags = registerOutput<Map<String, String>?>('tags');
    targetPlatform = registerOutput<String>('targetPlatform');
  }
}
