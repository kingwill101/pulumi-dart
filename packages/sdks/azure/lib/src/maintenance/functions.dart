import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_args.dart';
import 'get_configuration_result.dart';
import 'get_public_configurations_args.dart';
import 'get_public_configurations_result.dart';

/// Use this data source to access information about an existing Maintenance Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const existing = azure.maintenance.getConfiguration({
///     name: "example-mc",
///     resourceGroupName: "example-resources",
/// });
/// export const id = existingAzurermMaintenanceConfiguration.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// existing = azure.maintenance.get_configuration(name="example-mc",
///     resource_group_name="example-resources")
/// pulumi.export("id", existing_azurerm_maintenance_configuration["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var existing = Azure.Maintenance.GetConfiguration.Invoke(new()
///     {
///         Name = "example-mc",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = existingAzurermMaintenanceConfiguration.Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/maintenance"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := maintenance.LookupConfiguration(ctx, &maintenance.LookupConfigurationArgs{
/// 			Name:              "example-mc",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", existingAzurermMaintenanceConfiguration.Id)
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
/// import com.pulumi.azure.maintenance.MaintenanceFunctions;
/// import com.pulumi.azure.maintenance.inputs.GetConfigurationArgs;
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
///         final var existing = MaintenanceFunctions.getConfiguration(GetConfigurationArgs.builder()
///             .name("example-mc")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("id", existingAzurermMaintenanceConfiguration.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   existing:
///     fn::invoke:
///       function: azure:maintenance:getConfiguration
///       arguments:
///         name: example-mc
///         resourceGroupName: example-resources
/// outputs:
///   id: ${existingAzurermMaintenanceConfiguration.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Maintenance` - 2023-04-01
/// [args] Arguments passed to this invoke. {@macro pulumi_maintenance_get_configuration_get_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationResult> getConfiguration(
  GetConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:maintenance/getConfiguration:getConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationResult.fromMap(result);
}

/// Use this data source to access information about existing Public Maintenance Configurations.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const existing = azure.maintenance.getPublicConfigurations({
///     location: "West Europe",
///     scope: "SQLManagedInstance",
///     recurEvery: "Monday-Thursday",
/// });
/// export const name = existing.then(existing => existing.configs?.[0]?.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// existing = azure.maintenance.get_public_configurations(location="West Europe",
///     scope="SQLManagedInstance",
///     recur_every="Monday-Thursday")
/// pulumi.export("name", existing.configs[0].name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var existing = Azure.Maintenance.GetPublicConfigurations.Invoke(new()
///     {
///         Location = "West Europe",
///         Scope = "SQLManagedInstance",
///         RecurEvery = "Monday-Thursday",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["name"] = existing.Apply(getPublicConfigurationsResult => getPublicConfigurationsResult.Configs[0]?.Name),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/maintenance"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		existing, err := maintenance.GetPublicConfigurations(ctx, &maintenance.GetPublicConfigurationsArgs{
/// 			Location:   pulumi.StringRef("West Europe"),
/// 			Scope:      pulumi.StringRef("SQLManagedInstance"),
/// 			RecurEvery: pulumi.StringRef("Monday-Thursday"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("name", existing.Configs[0].Name)
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
/// import com.pulumi.azure.maintenance.MaintenanceFunctions;
/// import com.pulumi.azure.maintenance.inputs.GetPublicConfigurationsArgs;
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
///         final var existing = MaintenanceFunctions.getPublicConfigurations(GetPublicConfigurationsArgs.builder()
///             .location("West Europe")
///             .scope("SQLManagedInstance")
///             .recurEvery("Monday-Thursday")
///             .build());
///
///         ctx.export("name", existing.configs()[0].name());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   existing:
///     fn::invoke:
///       function: azure:maintenance:getPublicConfigurations
///       arguments:
///         location: West Europe
///         scope: SQLManagedInstance
///         recurEvery: Monday-Thursday
/// outputs:
///   name: ${existing.configs[0].name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Maintenance` - 2023-04-01
/// [args] Arguments passed to this invoke. {@macro pulumi_maintenance_get_public_configurations_get_public_configurations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicConfigurationsResult> getPublicConfigurations(
  GetPublicConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:maintenance/getPublicConfigurations:getPublicConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicConfigurationsResult.fromMap(result);
}
