import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_mongo_database_args.dart';
import 'get_mongo_database_result.dart';
import 'get_restorable_database_accounts_args.dart';
import 'get_restorable_database_accounts_result.dart';
import 'get_sql_database_args.dart';
import 'get_sql_database_result.dart';
import 'get_sql_role_definition_args.dart';
import 'get_sql_role_definition_result.dart';

/// Use this data source to access information about an existing CosmosDB (formally DocumentDB) Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cosmosdb.getAccount({
///     name: "tfex-cosmosdb-account",
///     resourceGroupName: "tfex-cosmosdb-account-rg",
/// });
/// export const cosmosdbAccountEndpoint = example.then(example => example.endpoint);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cosmosdb.get_account(name="tfex-cosmosdb-account",
///     resource_group_name="tfex-cosmosdb-account-rg")
/// pulumi.export("cosmosdbAccountEndpoint", example.endpoint)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.CosmosDB.GetAccount.Invoke(new()
///     {
///         Name = "tfex-cosmosdb-account",
///         ResourceGroupName = "tfex-cosmosdb-account-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cosmosdbAccountEndpoint"] = example.Apply(getAccountResult => getAccountResult.Endpoint),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cosmosdb.LookupAccount(ctx, &cosmosdb.LookupAccountArgs{
/// 			Name:              "tfex-cosmosdb-account",
/// 			ResourceGroupName: "tfex-cosmosdb-account-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cosmosdbAccountEndpoint", example.Endpoint)
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
/// data "azure_cosmosdb_getaccount" "example" {
///   name                = "tfex-cosmosdb-account"
///   resource_group_name = "tfex-cosmosdb-account-rg"
/// }
///
/// output "cosmosdbAccountEndpoint" {
///   value = data.azure_cosmosdb_getaccount.example.endpoint
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cosmosdb.CosmosdbFunctions;
/// import com.pulumi.azure.cosmosdb.inputs.GetAccountArgs;
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
///         final var example = CosmosdbFunctions.getAccount(GetAccountArgs.builder()
///             .name("tfex-cosmosdb-account")
///             .resourceGroupName("tfex-cosmosdb-account-rg")
///             .build());
///
///         ctx.export("cosmosdbAccountEndpoint", example.endpoint());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cosmosdb:getAccount
///       arguments:
///         name: tfex-cosmosdb-account
///         resourceGroupName: tfex-cosmosdb-account-rg
/// outputs:
///   cosmosdbAccountEndpoint: ${example.endpoint}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.DocumentDB` - 2024-08-15
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_account_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cosmosdb/getAccount:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Use this data source to access information about an existing Cosmos DB Mongo Database.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cosmosdb.getMongoDatabase({
///     name: "test-cosmosdb-mongo-db",
///     resourceGroupName: "test-cosmosdb-account-rg",
///     accountName: "test-cosmosdb-account",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cosmosdb.get_mongo_database(name="test-cosmosdb-mongo-db",
///     resource_group_name="test-cosmosdb-account-rg",
///     account_name="test-cosmosdb-account")
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
///     var example = Azure.CosmosDB.GetMongoDatabase.Invoke(new()
///     {
///         Name = "test-cosmosdb-mongo-db",
///         ResourceGroupName = "test-cosmosdb-account-rg",
///         AccountName = "test-cosmosdb-account",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getMongoDatabaseResult => getMongoDatabaseResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cosmosdb.LookupMongoDatabase(ctx, &cosmosdb.LookupMongoDatabaseArgs{
/// 			Name:              "test-cosmosdb-mongo-db",
/// 			ResourceGroupName: "test-cosmosdb-account-rg",
/// 			AccountName:       "test-cosmosdb-account",
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
/// data "azure_cosmosdb_getmongodatabase" "example" {
///   name                = "test-cosmosdb-mongo-db"
///   resource_group_name = "test-cosmosdb-account-rg"
///   account_name        = "test-cosmosdb-account"
/// }
///
/// output "id" {
///   value = data.azure_cosmosdb_getmongodatabase.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cosmosdb.CosmosdbFunctions;
/// import com.pulumi.azure.cosmosdb.inputs.GetMongoDatabaseArgs;
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
///         final var example = CosmosdbFunctions.getMongoDatabase(GetMongoDatabaseArgs.builder()
///             .name("test-cosmosdb-mongo-db")
///             .resourceGroupName("test-cosmosdb-account-rg")
///             .accountName("test-cosmosdb-account")
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
///       function: azure:cosmosdb:getMongoDatabase
///       arguments:
///         name: test-cosmosdb-mongo-db
///         resourceGroupName: test-cosmosdb-account-rg
///         accountName: test-cosmosdb-account
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
/// * `Microsoft.DocumentDB` - 2024-08-15
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_mongo_database_get_mongo_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMongoDatabaseResult> getMongoDatabase(
  GetMongoDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cosmosdb/getMongoDatabase:getMongoDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMongoDatabaseResult.fromMap(result);
}

/// Use this data source to access information about Cosmos DB Restorable Database Accounts.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cosmosdb.getRestorableDatabaseAccounts({
///     name: "example-ca",
///     location: "West Europe",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cosmosdb.get_restorable_database_accounts(name="example-ca",
///     location="West Europe")
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
///     var example = Azure.CosmosDB.GetRestorableDatabaseAccounts.Invoke(new()
///     {
///         Name = "example-ca",
///         Location = "West Europe",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getRestorableDatabaseAccountsResult => getRestorableDatabaseAccountsResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cosmosdb.GetRestorableDatabaseAccounts(ctx, &cosmosdb.GetRestorableDatabaseAccountsArgs{
/// 			Name:     "example-ca",
/// 			Location: "West Europe",
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
/// data "azure_cosmosdb_getrestorabledatabaseaccounts" "example" {
///   name     = "example-ca"
///   location = "West Europe"
/// }
///
/// output "id" {
///   value = data.azure_cosmosdb_getrestorabledatabaseaccounts.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cosmosdb.CosmosdbFunctions;
/// import com.pulumi.azure.cosmosdb.inputs.GetRestorableDatabaseAccountsArgs;
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
///         final var example = CosmosdbFunctions.getRestorableDatabaseAccounts(GetRestorableDatabaseAccountsArgs.builder()
///             .name("example-ca")
///             .location("West Europe")
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
///       function: azure:cosmosdb:getRestorableDatabaseAccounts
///       arguments:
///         name: example-ca
///         location: West Europe
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
/// * `Microsoft.DocumentDB` - 2024-08-15
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_restorable_database_accounts_get_restorable_database_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRestorableDatabaseAccountsResult> getRestorableDatabaseAccounts(
  GetRestorableDatabaseAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cosmosdb/getRestorableDatabaseAccounts:getRestorableDatabaseAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestorableDatabaseAccountsResult.fromMap(result);
}

/// Use this data source to access information about an existing CosmosDB SQL Database.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cosmosdb.getSqlDatabase({
///     name: "tfex-cosmosdb-sql-database",
///     resourceGroupName: "tfex-cosmosdb-sql-database-rg",
///     accountName: "tfex-cosmosdb-sql-database-account-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cosmosdb.get_sql_database(name="tfex-cosmosdb-sql-database",
///     resource_group_name="tfex-cosmosdb-sql-database-rg",
///     account_name="tfex-cosmosdb-sql-database-account-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.CosmosDB.GetSqlDatabase.Invoke(new()
///     {
///         Name = "tfex-cosmosdb-sql-database",
///         ResourceGroupName = "tfex-cosmosdb-sql-database-rg",
///         AccountName = "tfex-cosmosdb-sql-database-account-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.LookupSqlDatabase(ctx, &cosmosdb.LookupSqlDatabaseArgs{
/// 			Name:              "tfex-cosmosdb-sql-database",
/// 			ResourceGroupName: "tfex-cosmosdb-sql-database-rg",
/// 			AccountName:       "tfex-cosmosdb-sql-database-account-name",
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
/// data "azure_cosmosdb_getsqldatabase" "example" {
///   name                = "tfex-cosmosdb-sql-database"
///   resource_group_name = "tfex-cosmosdb-sql-database-rg"
///   account_name        = "tfex-cosmosdb-sql-database-account-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cosmosdb.CosmosdbFunctions;
/// import com.pulumi.azure.cosmosdb.inputs.GetSqlDatabaseArgs;
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
///         final var example = CosmosdbFunctions.getSqlDatabase(GetSqlDatabaseArgs.builder()
///             .name("tfex-cosmosdb-sql-database")
///             .resourceGroupName("tfex-cosmosdb-sql-database-rg")
///             .accountName("tfex-cosmosdb-sql-database-account-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cosmosdb:getSqlDatabase
///       arguments:
///         name: tfex-cosmosdb-sql-database
///         resourceGroupName: tfex-cosmosdb-sql-database-rg
///         accountName: tfex-cosmosdb-sql-database-account-name
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.DocumentDB` - 2024-08-15
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_sql_database_get_sql_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlDatabaseResult> getSqlDatabase(
  GetSqlDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cosmosdb/getSqlDatabase:getSqlDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlDatabaseResult.fromMap(result);
}

/// Use this data source to access information about an existing Cosmos DB SQL Role Definition.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cosmosdb.getSqlRoleDefinition({
///     resourceGroupName: "tfex-cosmosdb-sql-role-definition-rg",
///     accountName: "tfex-cosmosdb-sql-role-definition-account-name",
///     roleDefinitionId: "00000000-0000-0000-0000-000000000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cosmosdb.get_sql_role_definition(resource_group_name="tfex-cosmosdb-sql-role-definition-rg",
///     account_name="tfex-cosmosdb-sql-role-definition-account-name",
///     role_definition_id="00000000-0000-0000-0000-000000000000")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.CosmosDB.GetSqlRoleDefinition.Invoke(new()
///     {
///         ResourceGroupName = "tfex-cosmosdb-sql-role-definition-rg",
///         AccountName = "tfex-cosmosdb-sql-role-definition-account-name",
///         RoleDefinitionId = "00000000-0000-0000-0000-000000000000",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.LookupSqlRoleDefinition(ctx, &cosmosdb.LookupSqlRoleDefinitionArgs{
/// 			ResourceGroupName: "tfex-cosmosdb-sql-role-definition-rg",
/// 			AccountName:       "tfex-cosmosdb-sql-role-definition-account-name",
/// 			RoleDefinitionId:  "00000000-0000-0000-0000-000000000000",
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
/// data "azure_cosmosdb_getsqlroledefinition" "example" {
///   resource_group_name = "tfex-cosmosdb-sql-role-definition-rg"
///   account_name        = "tfex-cosmosdb-sql-role-definition-account-name"
///   role_definition_id  = "00000000-0000-0000-0000-000000000000"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cosmosdb.CosmosdbFunctions;
/// import com.pulumi.azure.cosmosdb.inputs.GetSqlRoleDefinitionArgs;
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
///         final var example = CosmosdbFunctions.getSqlRoleDefinition(GetSqlRoleDefinitionArgs.builder()
///             .resourceGroupName("tfex-cosmosdb-sql-role-definition-rg")
///             .accountName("tfex-cosmosdb-sql-role-definition-account-name")
///             .roleDefinitionId("00000000-0000-0000-0000-000000000000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cosmosdb:getSqlRoleDefinition
///       arguments:
///         resourceGroupName: tfex-cosmosdb-sql-role-definition-rg
///         accountName: tfex-cosmosdb-sql-role-definition-account-name
///         roleDefinitionId: 00000000-0000-0000-0000-000000000000
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.DocumentDB` - 2024-08-15
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_sql_role_definition_get_sql_role_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlRoleDefinitionResult> getSqlRoleDefinition(
  GetSqlRoleDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cosmosdb/getSqlRoleDefinition:getSqlRoleDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlRoleDefinitionResult.fromMap(result);
}
