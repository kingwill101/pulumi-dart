import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_args.dart';
import 'get_database_result.dart';
import 'get_elastic_pool_args.dart';
import 'get_elastic_pool_result.dart';
import 'get_failover_group_args.dart';
import 'get_failover_group_result.dart';
import 'get_managed_database_args.dart';
import 'get_managed_database_result.dart';
import 'get_managed_instance_args.dart';
import 'get_managed_instance_result.dart';
import 'get_server_args.dart';
import 'get_server_result.dart';

/// Use this data source to access information about an existing SQL database.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleServer = new azure.mssql.Server("example", {
///     name: "example",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     version: "12.0",
///     administratorLogin: "4dm1n157r470r",
///     administratorLoginPassword: "4-v3ry-53cr37-p455w0rd",
/// });
/// const example = azure.mssql.getDatabaseOutput({
///     name: "example-mssql-db",
///     serverId: exampleServer.id,
/// });
/// export const databaseId = example.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_server = azure.mssql.Server("example",
///     name="example",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     version="12.0",
///     administrator_login="4dm1n157r470r",
///     administrator_login_password="4-v3ry-53cr37-p455w0rd")
/// example = azure.mssql.get_database_output(name="example-mssql-db",
///     server_id=example_server.id)
/// pulumi.export("databaseId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleServer = new Azure.MSSql.Server("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         Version = "12.0",
///         AdministratorLogin = "4dm1n157r470r",
///         AdministratorLoginPassword = "4-v3ry-53cr37-p455w0rd",
///     });
///
///     var example = Azure.MSSql.GetDatabase.Invoke(new()
///     {
///         Name = "example-mssql-db",
///         ServerId = exampleServer.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["databaseId"] = example.Apply(getDatabaseResult => getDatabaseResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := mssql.NewServer(ctx, "example", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("example"),
/// 			ResourceGroupName:          exampleResourceGroup.Name,
/// 			Location:                   exampleResourceGroup.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("4dm1n157r470r"),
/// 			AdministratorLoginPassword: pulumi.String("4-v3ry-53cr37-p455w0rd"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := mssql.LookupDatabaseOutput(ctx, mssql.GetDatabaseOutputArgs{
/// 			Name:     pulumi.String("example-mssql-db"),
/// 			ServerId: exampleServer.ID().ToIDOutput().ToStringOutput(),
/// 		}, nil)
/// 		ctx.Export("databaseId", example.Id())
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
/// data "azure_mssql_getdatabase" "example" {
///   name      = "example-mssql-db"
///   server_id = azure_mssql_server.example.id
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_mssql_server" "example" {
///   name                         = "example"
///   resource_group_name          = azure_core_resourcegroup.example.name
///   location                     = azure_core_resourcegroup.example.location
///   version                      = "12.0"
///   administrator_login          = "4dm1n157r470r"
///   administrator_login_password = "4-v3ry-53cr37-p455w0rd"
/// }
/// output "databaseId" {
///   value = data.azure_mssql_getdatabase.example.id
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
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.mssql.MssqlFunctions;
/// import com.pulumi.azure.mssql.inputs.GetDatabaseArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .version("12.0")
///             .administratorLogin("4dm1n157r470r")
///             .administratorLoginPassword("4-v3ry-53cr37-p455w0rd")
///             .build());
///
///         final var example = MssqlFunctions.getDatabase(GetDatabaseArgs.builder()
///             .name("example-mssql-db")
///             .serverId(exampleServer.id())
///             .build());
///
///         ctx.export("databaseId", example.applyValue(_example -> _example.id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       version: '12.0'
///       administratorLogin: 4dm1n157r470r
///       administratorLoginPassword: 4-v3ry-53cr37-p455w0rd
/// variables:
///   example:
///     fn::invoke:
///       function: azure:mssql:getDatabase
///       arguments:
///         name: example-mssql-db
///         serverId: ${exampleServer.id}
/// outputs:
///   databaseId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_mssql_get_database_get_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:mssql/getDatabase:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}

pulumi.Output<GetDatabaseResult> getDatabaseOutput(
  GetDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:mssql/getDatabase:getDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseResult.fromMap);
}

/// Use this data source to access information about an existing SQL elastic pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.mssql.getElasticPool({
///     name: "mssqlelasticpoolname",
///     resourceGroupName: "example-resources",
///     serverName: "example-sql-server",
/// });
/// export const elasticpoolId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.mssql.get_elastic_pool(name="mssqlelasticpoolname",
///     resource_group_name="example-resources",
///     server_name="example-sql-server")
/// pulumi.export("elasticpoolId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.MSSql.GetElasticPool.Invoke(new()
///     {
///         Name = "mssqlelasticpoolname",
///         ResourceGroupName = "example-resources",
///         ServerName = "example-sql-server",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["elasticpoolId"] = example.Apply(getElasticPoolResult => getElasticPoolResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := mssql.LookupElasticPool(ctx, &mssql.LookupElasticPoolArgs{
/// 			Name:              "mssqlelasticpoolname",
/// 			ResourceGroupName: "example-resources",
/// 			ServerName:        "example-sql-server",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("elasticpoolId", example.Id)
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
/// data "azure_mssql_getelasticpool" "example" {
///   name                = "mssqlelasticpoolname"
///   resource_group_name = "example-resources"
///   server_name         = "example-sql-server"
/// }
///
/// output "elasticpoolId" {
///   value = data.azure_mssql_getelasticpool.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.mssql.MssqlFunctions;
/// import com.pulumi.azure.mssql.inputs.GetElasticPoolArgs;
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
///         final var example = MssqlFunctions.getElasticPool(GetElasticPoolArgs.builder()
///             .name("mssqlelasticpoolname")
///             .resourceGroupName("example-resources")
///             .serverName("example-sql-server")
///             .build());
///
///         ctx.export("elasticpoolId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:mssql:getElasticPool
///       arguments:
///         name: mssqlelasticpoolname
///         resourceGroupName: example-resources
///         serverName: example-sql-server
/// outputs:
///   elasticpoolId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_mssql_get_elastic_pool_get_elastic_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticPoolResult> getElasticPool(
  GetElasticPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:mssql/getElasticPool:getElasticPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticPoolResult.fromMap(result);
}

pulumi.Output<GetElasticPoolResult> getElasticPoolOutput(
  GetElasticPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:mssql/getElasticPool:getElasticPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetElasticPoolResult.fromMap);
}

/// Use this data source to access information about an existing Microsoft Azure SQL Failover Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.mssql.getFailoverGroup({
///     name: "example",
///     serverId: "example-sql-server",
/// });
/// export const mssqlFailoverGroupId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.mssql.get_failover_group(name="example",
///     server_id="example-sql-server")
/// pulumi.export("mssqlFailoverGroupId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.MSSql.GetFailoverGroup.Invoke(new()
///     {
///         Name = "example",
///         ServerId = "example-sql-server",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mssqlFailoverGroupId"] = example.Apply(getFailoverGroupResult => getFailoverGroupResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := mssql.LookupFailoverGroup(ctx, &mssql.LookupFailoverGroupArgs{
/// 			Name:     "example",
/// 			ServerId: "example-sql-server",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mssqlFailoverGroupId", example.Id)
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
/// data "azure_mssql_getfailovergroup" "example" {
///   name      = "example"
///   server_id = "example-sql-server"
/// }
///
/// output "mssqlFailoverGroupId" {
///   value = data.azure_mssql_getfailovergroup.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.mssql.MssqlFunctions;
/// import com.pulumi.azure.mssql.inputs.GetFailoverGroupArgs;
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
///         final var example = MssqlFunctions.getFailoverGroup(GetFailoverGroupArgs.builder()
///             .name("example")
///             .serverId("example-sql-server")
///             .build());
///
///         ctx.export("mssqlFailoverGroupId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:mssql:getFailoverGroup
///       arguments:
///         name: example
///         serverId: example-sql-server
/// outputs:
///   mssqlFailoverGroupId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_mssql_get_failover_group_get_failover_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFailoverGroupResult> getFailoverGroup(
  GetFailoverGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:mssql/getFailoverGroup:getFailoverGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFailoverGroupResult.fromMap(result);
}

pulumi.Output<GetFailoverGroupResult> getFailoverGroupOutput(
  GetFailoverGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:mssql/getFailoverGroup:getFailoverGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFailoverGroupResult.fromMap);
}

/// Use this data source to access information about an existing Azure SQL Azure Managed Database.
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
/// data "azure_mssql_getmanageddatabase" "example" {
///   name                  = "example"
///   resource_group_name   = exampleAzurermResourceGroup.name
///   managed_instance_name = exampleAzurermMssqlManagedInstance.name
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:mssql:getManagedDatabase
///       arguments:
///         name: example
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
///         managedInstanceName: ${exampleAzurermMssqlManagedInstance.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_mssql_get_managed_database_get_managed_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedDatabaseResult> getManagedDatabase(
  GetManagedDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:mssql/getManagedDatabase:getManagedDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedDatabaseResult.fromMap(result);
}

pulumi.Output<GetManagedDatabaseResult> getManagedDatabaseOutput(
  GetManagedDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:mssql/getManagedDatabase:getManagedDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedDatabaseResult.fromMap);
}

/// Use this data source to access information about an existing Microsoft SQL Azure Managed Instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.mssql.getManagedInstance({
///     name: "managedsqlinstance",
///     resourceGroupName: exampleAzurermResourceGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.mssql.get_managed_instance(name="managedsqlinstance",
///     resource_group_name=example_azurerm_resource_group["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.MSSql.GetManagedInstance.Invoke(new()
///     {
///         Name = "managedsqlinstance",
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mssql.LookupManagedInstance(ctx, &mssql.LookupManagedInstanceArgs{
/// 			Name:              "managedsqlinstance",
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
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
/// data "azure_mssql_getmanagedinstance" "example" {
///   name                = "managedsqlinstance"
///   resource_group_name = exampleAzurermResourceGroup.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.mssql.MssqlFunctions;
/// import com.pulumi.azure.mssql.inputs.GetManagedInstanceArgs;
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
///         final var example = MssqlFunctions.getManagedInstance(GetManagedInstanceArgs.builder()
///             .name("managedsqlinstance")
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:mssql:getManagedInstance
///       arguments:
///         name: managedsqlinstance
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_mssql_get_managed_instance_get_managed_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedInstanceResult> getManagedInstance(
  GetManagedInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:mssql/getManagedInstance:getManagedInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedInstanceResult.fromMap(result);
}

pulumi.Output<GetManagedInstanceResult> getManagedInstanceOutput(
  GetManagedInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:mssql/getManagedInstance:getManagedInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedInstanceResult.fromMap);
}

/// Use this data source to access information about an existing Microsoft SQL Server.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.mssql.getServer({
///     name: "existingMsSqlServer",
///     resourceGroupName: "existingResGroup",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.mssql.get_server(name="existingMsSqlServer",
///     resource_group_name="existingResGroup")
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
///     var example = Azure.MSSql.GetServer.Invoke(new()
///     {
///         Name = "existingMsSqlServer",
///         ResourceGroupName = "existingResGroup",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getServerResult => getServerResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := mssql.LookupServer(ctx, &mssql.LookupServerArgs{
/// 			Name:              "existingMsSqlServer",
/// 			ResourceGroupName: "existingResGroup",
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
/// data "azure_mssql_getserver" "example" {
///   name                = "existingMsSqlServer"
///   resource_group_name = "existingResGroup"
/// }
///
/// output "id" {
///   value = data.azure_mssql_getserver.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.mssql.MssqlFunctions;
/// import com.pulumi.azure.mssql.inputs.GetServerArgs;
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
///         final var example = MssqlFunctions.getServer(GetServerArgs.builder()
///             .name("existingMsSqlServer")
///             .resourceGroupName("existingResGroup")
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
///       function: azure:mssql:getServer
///       arguments:
///         name: existingMsSqlServer
///         resourceGroupName: existingResGroup
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
/// * `Microsoft.Sql` - 2023-08-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_mssql_get_server_get_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerResult> getServer(
  GetServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:mssql/getServer:getServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerResult.fromMap(result);
}

pulumi.Output<GetServerResult> getServerOutput(
  GetServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:mssql/getServer:getServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerResult.fromMap);
}
