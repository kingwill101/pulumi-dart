import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flexible_server_args.dart';
import 'get_flexible_server_result.dart';

/// Use this data source to access information about an existing MySQL Flexible Server.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.mysql.getFlexibleServer({
///     name: "existingMySqlFlexibleServer",
///     resourceGroupName: "existingResGroup",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.mysql.get_flexible_server(name="existingMySqlFlexibleServer",
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
///     var example = Azure.MySql.GetFlexibleServer.Invoke(new()
///     {
///         Name = "existingMySqlFlexibleServer",
///         ResourceGroupName = "existingResGroup",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mysql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := mysql.LookupFlexibleServer(ctx, &mysql.LookupFlexibleServerArgs{
/// 			Name:              "existingMySqlFlexibleServer",
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
/// data "azure_mysql_getflexibleserver" "example" {
///   name                = "existingMySqlFlexibleServer"
///   resource_group_name = "existingResGroup"
/// }
///
/// output "id" {
///   value = data.azure_mysql_getflexibleserver.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.mysql.MysqlFunctions;
/// import com.pulumi.azure.mysql.inputs.GetFlexibleServerArgs;
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
///         final var example = MysqlFunctions.getFlexibleServer(GetFlexibleServerArgs.builder()
///             .name("existingMySqlFlexibleServer")
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
///       function: azure:mysql:getFlexibleServer
///       arguments:
///         name: existingMySqlFlexibleServer
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
/// * `Microsoft.DBforMySQL` - 2023-12-30
/// [args] Arguments passed to this invoke. {@macro pulumi_mysql_get_flexible_server_get_flexible_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlexibleServerResult> getFlexibleServer(
  GetFlexibleServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:mysql/getFlexibleServer:getFlexibleServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlexibleServerResult.fromMap(result);
}
