import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flexible_server_args.dart';
import 'get_flexible_server_result.dart';
import 'get_server_args.dart';
import 'get_server_result.dart';

/// Use this data source to access information about an existing PostgreSQL Flexible Server.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.postgresql.getFlexibleServer({
///     name: "existing-postgresql-fs",
///     resourceGroupName: "existing-postgresql-resgroup",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.postgresql.get_flexible_server(name="existing-postgresql-fs",
///     resource_group_name="existing-postgresql-resgroup")
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
///     var example = Azure.PostgreSql.GetFlexibleServer.Invoke(new()
///     {
///         Name = "existing-postgresql-fs",
///         ResourceGroupName = "existing-postgresql-resgroup",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getFlexibleServerResult => getFlexibleServerResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/postgresql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := postgresql.LookupFlexibleServer(ctx, &postgresql.LookupFlexibleServerArgs{
/// 			Name:              "existing-postgresql-fs",
/// 			ResourceGroupName: "existing-postgresql-resgroup",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.postgresql.PostgresqlFunctions;
/// import com.pulumi.azure.postgresql.inputs.GetFlexibleServerArgs;
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
///         final var example = PostgresqlFunctions.getFlexibleServer(GetFlexibleServerArgs.builder()
///             .name("existing-postgresql-fs")
///             .resourceGroupName("existing-postgresql-resgroup")
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
///       function: azure:postgresql:getFlexibleServer
///       arguments:
///         name: existing-postgresql-fs
///         resourceGroupName: existing-postgresql-resgroup
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
/// * `Microsoft.DBforPostgreSQL` - 2025-08-01
/// [args] Arguments passed to this invoke. {@macro pulumi_postgresql_get_flexible_server_get_flexible_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlexibleServerResult> getFlexibleServer(
  GetFlexibleServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:postgresql/getFlexibleServer:getFlexibleServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlexibleServerResult.fromMap(result);
}

/// Use this data source to access information about an existing PostgreSQL Azure Database Server.
///
/// &gt; **Note:** The `azure.postgresql.Server` data source is deprecated and will be removed in v5.0 of the AzureRM Provider. Azure Database for PostgreSQL Single Server and its sub resources have been retired as of 2025-03-28, please use the `azure.postgresql.FlexibleServer` data source instead. For more information, see https://techcommunity.microsoft.com/blog/adforpostgresql/retiring-azure-database-for-postgresql-single-server-in-2025/3783783.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.postgresql.getServer({
///     name: "postgresql-server-1",
///     resourceGroupName: "api-rg-pro",
/// });
/// export const postgresqlServerId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.postgresql.get_server(name="postgresql-server-1",
///     resource_group_name="api-rg-pro")
/// pulumi.export("postgresqlServerId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.PostgreSql.GetServer.Invoke(new()
///     {
///         Name = "postgresql-server-1",
///         ResourceGroupName = "api-rg-pro",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["postgresqlServerId"] = example.Apply(getServerResult => getServerResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/postgresql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := postgresql.LookupServer(ctx, &postgresql.LookupServerArgs{
/// 			Name:              "postgresql-server-1",
/// 			ResourceGroupName: "api-rg-pro",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("postgresqlServerId", example.Id)
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
/// import com.pulumi.azure.postgresql.PostgresqlFunctions;
/// import com.pulumi.azure.postgresql.inputs.GetServerArgs;
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
///         final var example = PostgresqlFunctions.getServer(GetServerArgs.builder()
///             .name("postgresql-server-1")
///             .resourceGroupName("api-rg-pro")
///             .build());
///
///         ctx.export("postgresqlServerId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:postgresql:getServer
///       arguments:
///         name: postgresql-server-1
///         resourceGroupName: api-rg-pro
/// outputs:
///   postgresqlServerId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2017-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_postgresql_get_server_get_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerResult> getServer(
  GetServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:postgresql/getServer:getServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerResult.fromMap(result);
}
