import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_args.dart';
import 'get_project_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';

/// Use this data source to access information about an existing Database Migration Project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.databasemigration.getProject({
///     name: "example-dbms-project",
///     resourceGroupName: "example-rg",
///     serviceName: "example-dbms",
/// });
/// export const name = example.then(example => example.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.databasemigration.get_project(name="example-dbms-project",
///     resource_group_name="example-rg",
///     service_name="example-dbms")
/// pulumi.export("name", example.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DatabaseMigration.GetProject.Invoke(new()
///     {
///         Name = "example-dbms-project",
///         ResourceGroupName = "example-rg",
///         ServiceName = "example-dbms",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["name"] = example.Apply(getProjectResult => getProjectResult.Name),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databasemigration"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := databasemigration.LookupProject(ctx, &databasemigration.LookupProjectArgs{
/// 			Name:              "example-dbms-project",
/// 			ResourceGroupName: "example-rg",
/// 			ServiceName:       "example-dbms",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("name", example.Name)
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
/// data "azure_databasemigration_getproject" "example" {
///   name                = "example-dbms-project"
///   resource_group_name = "example-rg"
///   service_name        = "example-dbms"
/// }
///
/// output "name" {
///   value = data.azure_databasemigration_getproject.example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.databasemigration.DatabasemigrationFunctions;
/// import com.pulumi.azure.databasemigration.inputs.GetProjectArgs;
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
///         final var example = DatabasemigrationFunctions.getProject(GetProjectArgs.builder()
///             .name("example-dbms-project")
///             .resourceGroupName("example-rg")
///             .serviceName("example-dbms")
///             .build());
///
///         ctx.export("name", example.name());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:databasemigration:getProject
///       arguments:
///         name: example-dbms-project
///         resourceGroupName: example-rg
///         serviceName: example-dbms
/// outputs:
///   name: ${example.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.DataMigration` - 2021-06-30
/// [args] Arguments passed to this invoke. {@macro pulumi_databasemigration_get_project_get_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:databasemigration/getProject:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}

pulumi.Output<GetProjectResult> getProjectOutput(
  GetProjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:databasemigration/getProject:getProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectResult.fromMap);
}

/// Use this data source to access information about an existing Database Migration Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.databasemigration.getService({
///     name: "example-dms",
///     resourceGroupName: "example-rg",
/// });
/// export const azurermDmsId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.databasemigration.get_service(name="example-dms",
///     resource_group_name="example-rg")
/// pulumi.export("azurermDmsId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DatabaseMigration.GetService.Invoke(new()
///     {
///         Name = "example-dms",
///         ResourceGroupName = "example-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["azurermDmsId"] = example.Apply(getServiceResult => getServiceResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databasemigration"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := databasemigration.LookupService(ctx, &databasemigration.LookupServiceArgs{
/// 			Name:              "example-dms",
/// 			ResourceGroupName: "example-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("azurermDmsId", example.Id)
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
/// data "azure_databasemigration_getservice" "example" {
///   name                = "example-dms"
///   resource_group_name = "example-rg"
/// }
///
/// output "azurermDmsId" {
///   value = data.azure_databasemigration_getservice.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.databasemigration.DatabasemigrationFunctions;
/// import com.pulumi.azure.databasemigration.inputs.GetServiceArgs;
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
///         final var example = DatabasemigrationFunctions.getService(GetServiceArgs.builder()
///             .name("example-dms")
///             .resourceGroupName("example-rg")
///             .build());
///
///         ctx.export("azurermDmsId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:databasemigration:getService
///       arguments:
///         name: example-dms
///         resourceGroupName: example-rg
/// outputs:
///   azurermDmsId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.DataMigration` - 2021-06-30
/// [args] Arguments passed to this invoke. {@macro pulumi_databasemigration_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:databasemigration/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

pulumi.Output<GetServiceResult> getServiceOutput(
  GetServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:databasemigration/getService:getService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceResult.fromMap);
}
