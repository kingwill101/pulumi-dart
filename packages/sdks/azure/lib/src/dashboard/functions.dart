import 'package:pulumi/pulumi.dart' as pulumi;
import 'azurerm_portal_dashboard_args.dart';
import 'azurerm_portal_dashboard_result.dart';
import 'get_grafana_args.dart';
import 'get_grafana_result.dart';

/// Use this data source to access information about an existing shared dashboard in the Azure Portal. This is the data source of the `azurermDashboard` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.portal.azurerm_portal_dashboard({
///     name: "existing-dashboard",
///     resourceGroupName: "dashboard-rg",
/// });
/// export const id = exampleAzurermDashboard.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.portal.azurerm_portal_dashboard(name="existing-dashboard",
///     resource_group_name="dashboard-rg")
/// pulumi.export("id", example_azurerm_dashboard["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Portal.Azurerm_portal_dashboard.Invoke(new()
///     {
///         Name = "existing-dashboard",
///         ResourceGroupName = "dashboard-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = exampleAzurermDashboard.Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/portal"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := portal.Azurerm_portal_dashboard(ctx, &portal.Azurerm_portal_dashboardArgs{
/// 			Name:              pulumi.StringRef("existing-dashboard"),
/// 			ResourceGroupName: "dashboard-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", pulumi.Any(exampleAzurermDashboard.Id))
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
/// data "azure_portal_azurerm_portal_dashboard" "example" {
///   name                = "existing-dashboard"
///   resource_group_name = "dashboard-rg"
/// }
///
/// output "id" {
///   value = exampleAzurermDashboard.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.portal.PortalFunctions;
/// import com.pulumi.azure.portal.inputs.Azurerm_portal_dashboardArgs;
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
///         final var example = PortalFunctions.azurerm_portal_dashboard(Azurerm_portal_dashboardArgs.builder()
///             .name("existing-dashboard")
///             .resourceGroupName("dashboard-rg")
///             .build());
///
///         ctx.export("id", exampleAzurermDashboard.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:portal:azurerm_portal_dashboard
///       arguments:
///         name: existing-dashboard
///         resourceGroupName: dashboard-rg
/// outputs:
///   id: ${exampleAzurermDashboard.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Portal` - 2019-01-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_dashboard_azurerm_portal_dashboard_azurerm_portal_dashboard_args_doc}
/// [options] Invoke options controlling this call.
Future<AzurermPortalDashboardResult> azurermPortalDashboard(
  AzurermPortalDashboardArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dashboard/azurerm_portal_dashboard:azurerm_portal_dashboard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return AzurermPortalDashboardResult.fromMap(result);
}

pulumi.Output<AzurermPortalDashboardResult> azurermPortalDashboardOutput(
  AzurermPortalDashboardArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:dashboard/azurerm_portal_dashboard:azurerm_portal_dashboard',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(AzurermPortalDashboardResult.fromMap);
}

/// Use this data source to access information about an existing Grafana Dashboard.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.dashboard.getGrafana({
///     name: "example-grafana-dashboard",
///     resourceGroupName: "example-rg",
/// });
/// export const name = example.then(example => example.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dashboard.get_grafana(name="example-grafana-dashboard",
///     resource_group_name="example-rg")
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
///     var example = Azure.Dashboard.GetGrafana.Invoke(new()
///     {
///         Name = "example-grafana-dashboard",
///         ResourceGroupName = "example-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["name"] = example.Apply(getGrafanaResult => getGrafanaResult.Name),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dashboard"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dashboard.LookupGrafana(ctx, &dashboard.LookupGrafanaArgs{
/// 			Name:              "example-grafana-dashboard",
/// 			ResourceGroupName: "example-rg",
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
/// data "azure_dashboard_getgrafana" "example" {
///   name                = "example-grafana-dashboard"
///   resource_group_name = "example-rg"
/// }
///
/// output "name" {
///   value = data.azure_dashboard_getgrafana.example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dashboard.DashboardFunctions;
/// import com.pulumi.azure.dashboard.inputs.GetGrafanaArgs;
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
///         final var example = DashboardFunctions.getGrafana(GetGrafanaArgs.builder()
///             .name("example-grafana-dashboard")
///             .resourceGroupName("example-rg")
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
///       function: azure:dashboard:getGrafana
///       arguments:
///         name: example-grafana-dashboard
///         resourceGroupName: example-rg
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
/// * `Microsoft.Dashboard` - 2025-08-01
/// [args] Arguments passed to this invoke. {@macro pulumi_dashboard_get_grafana_get_grafana_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGrafanaResult> getGrafana(
  GetGrafanaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dashboard/getGrafana:getGrafana',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGrafanaResult.fromMap(result);
}

pulumi.Output<GetGrafanaResult> getGrafanaOutput(
  GetGrafanaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:dashboard/getGrafana:getGrafana',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGrafanaResult.fromMap);
}
