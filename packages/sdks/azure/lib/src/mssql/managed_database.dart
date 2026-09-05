import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_database_args.dart';
import 'managed_database_long_term_retention_policy.dart';
import 'managed_database_point_in_time_restore.dart';
import 'managed_database_state.dart';

/// Manages an Azure SQL Azure Managed Database for a SQL Managed Instance.
///
/// &gt; **Note:** To mitigate the possibility of accidental data loss it is highly recommended that you use the `preventDestroy` lifecycle argument in your configuration file for this resource. For more information on the `preventDestroy` lifecycle argument please see the terraform documentation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleManagedInstance = new azure.mssql.ManagedInstance("example", {
///     name: "managedsqlinstance",
///     resourceGroupName: example.name,
///     location: example.location,
///     licenseType: "BasePrice",
///     skuName: "GP_Gen5",
///     storageSizeInGb: 32,
///     subnetId: exampleSubnet.id,
///     vcores: 4,
///     administratorLogin: "msadministrator",
///     administratorLoginPassword: "thisIsDog11",
/// });
/// const exampleManagedDatabase = new azure.mssql.ManagedDatabase("example", {
///     name: "example",
///     managedInstanceId: exampleManagedInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="example",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_managed_instance = azure.mssql.ManagedInstance("example",
///     name="managedsqlinstance",
///     resource_group_name=example.name,
///     location=example.location,
///     license_type="BasePrice",
///     sku_name="GP_Gen5",
///     storage_size_in_gb=32,
///     subnet_id=example_subnet.id,
///     vcores=4,
///     administrator_login="msadministrator",
///     administrator_login_password="thisIsDog11")
/// example_managed_database = azure.mssql.ManagedDatabase("example",
///     name="example",
///     managed_instance_id=example_managed_instance.id)
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
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleManagedInstance = new Azure.MSSql.ManagedInstance("example", new()
///     {
///         Name = "managedsqlinstance",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         LicenseType = "BasePrice",
///         SkuName = "GP_Gen5",
///         StorageSizeInGb = 32,
///         SubnetId = exampleSubnet.Id,
///         Vcores = 4,
///         AdministratorLogin = "msadministrator",
///         AdministratorLoginPassword = "thisIsDog11",
///     });
///
///     var exampleManagedDatabase = new Azure.MSSql.ManagedDatabase("example", new()
///     {
///         Name = "example",
///         ManagedInstanceId = exampleManagedInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleManagedInstance, err := mssql.NewManagedInstance(ctx, "example", &mssql.ManagedInstanceArgs{
/// 			Name:                       pulumi.String("managedsqlinstance"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			LicenseType:                pulumi.String("BasePrice"),
/// 			SkuName:                    pulumi.String("GP_Gen5"),
/// 			StorageSizeInGb:            pulumi.Int(32),
/// 			SubnetId:                   exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 			Vcores:                     pulumi.Int(4),
/// 			AdministratorLogin:         pulumi.String("msadministrator"),
/// 			AdministratorLoginPassword: pulumi.String("thisIsDog11"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewManagedDatabase(ctx, "example", &mssql.ManagedDatabaseArgs{
/// 			Name:              pulumi.String("example"),
/// 			ManagedInstanceId: exampleManagedInstance.ID().ToIDOutput().ToStringOutput(),
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
///   name     = "example"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   address_spaces      = ["10.0.0.0/16"]
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "example"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
/// }
/// resource "azure_mssql_managedinstance" "example" {
///   name                         = "managedsqlinstance"
///   resource_group_name          = azure_core_resourcegroup.example.name
///   location                     = azure_core_resourcegroup.example.location
///   license_type                 = "BasePrice"
///   sku_name                     = "GP_Gen5"
///   storage_size_in_gb           = 32
///   subnet_id                    = azure_network_subnet.example.id
///   vcores                       = 4
///   administrator_login          = "msadministrator"
///   administrator_login_password = "thisIsDog11"
/// }
/// resource "azure_mssql_manageddatabase" "example" {
///   name                = "example"
///   managed_instance_id = azure_mssql_managedinstance.example.id
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
/// import com.pulumi.azure.mssql.ManagedInstance;
/// import com.pulumi.azure.mssql.ManagedInstanceArgs;
/// import com.pulumi.azure.mssql.ManagedDatabase;
/// import com.pulumi.azure.mssql.ManagedDatabaseArgs;
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
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleManagedInstance = new ManagedInstance("exampleManagedInstance", ManagedInstanceArgs.builder()
///             .name("managedsqlinstance")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .licenseType("BasePrice")
///             .skuName("GP_Gen5")
///             .storageSizeInGb(32)
///             .subnetId(exampleSubnet.id())
///             .vcores(4)
///             .administratorLogin("msadministrator")
///             .administratorLoginPassword("thisIsDog11")
///             .build());
///
///         var exampleManagedDatabase = new ManagedDatabase("exampleManagedDatabase", ManagedDatabaseArgs.builder()
///             .name("example")
///             .managedInstanceId(exampleManagedInstance.id())
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
///       name: example
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleManagedInstance:
///     type: azure:mssql:ManagedInstance
///     name: example
///     properties:
///       name: managedsqlinstance
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       licenseType: BasePrice
///       skuName: GP_Gen5
///       storageSizeInGb: 32
///       subnetId: ${exampleSubnet.id}
///       vcores: 4
///       administratorLogin: msadministrator
///       administratorLoginPassword: thisIsDog11
///   exampleManagedDatabase:
///     type: azure:mssql:ManagedDatabase
///     name: example
///     properties:
///       name: example
///       managedInstanceId: ${exampleManagedInstance.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
///
/// ## Import
///
/// SQL Managed Databases can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/managedDatabase:ManagedDatabase example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Sql/managedInstances/myserver/databases/mydatabase
/// ```
class ManagedDatabase extends pulumi.CustomResource {
  /// A `longTermRetentionPolicy` block as defined below.
  late final pulumi.Output<ManagedDatabaseLongTermRetentionPolicy> longTermRetentionPolicy;
  /// The ID of the Azure SQL Managed Instance on which to create this Managed Database. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managedInstanceId;
  /// The name of the Managed Database to create. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `pointInTimeRestore` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<ManagedDatabasePointInTimeRestore?> pointInTimeRestore;
  /// The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  late final pulumi.Output<int?> shortTermRetentionDays;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ManagedDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedDatabase]. {@macro pulumi_mssql_managed_database_managed_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedDatabase(
    String name, {
    ManagedDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/managedDatabase:ManagedDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    longTermRetentionPolicy = registerOutput<ManagedDatabaseLongTermRetentionPolicy>('longTermRetentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDatabaseLongTermRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedInstanceId = registerOutput<String>('managedInstanceId');
    this.name = registerOutput<String>('name');
    pointInTimeRestore = registerOutput<ManagedDatabasePointInTimeRestore?>('pointInTimeRestore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDatabasePointInTimeRestore.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shortTermRetentionDays = registerOutput<int?>('shortTermRetentionDays');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ManagedDatabase] resource's state with the given [name] and [id].
  static ManagedDatabase get(
    String name,
    pulumi.Input<String> id, {
    ManagedDatabaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ManagedDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ManagedDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/managedDatabase:ManagedDatabase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    longTermRetentionPolicy = registerOutput<ManagedDatabaseLongTermRetentionPolicy>('longTermRetentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDatabaseLongTermRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedInstanceId = registerOutput<String>('managedInstanceId');
    this.name = registerOutput<String>('name');
    pointInTimeRestore = registerOutput<ManagedDatabasePointInTimeRestore?>('pointInTimeRestore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDatabasePointInTimeRestore.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shortTermRetentionDays = registerOutput<int?>('shortTermRetentionDays');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ManagedDatabase] resource.
  ManagedDatabase.reference(String urn)
    : super(
        'azure:mssql/managedDatabase:ManagedDatabase',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    longTermRetentionPolicy = registerOutput<ManagedDatabaseLongTermRetentionPolicy>('longTermRetentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDatabaseLongTermRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedInstanceId = registerOutput<String>('managedInstanceId');
    this.name = registerOutput<String>('name');
    pointInTimeRestore = registerOutput<ManagedDatabasePointInTimeRestore?>('pointInTimeRestore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDatabasePointInTimeRestore.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shortTermRetentionDays = registerOutput<int?>('shortTermRetentionDays');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
