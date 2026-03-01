import 'package:pulumi/pulumi.dart' as pulumi;
import 'azurerm_portal_dashboard_args.dart';
import 'azurerm_portal_dashboard_result.dart';

/// Use this data source to access information about an existing shared dashboard in the Azure Portal. This is the data source of the `azurerm_dashboard` resource.
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
/// 		ctx.Export("id", exampleAzurermDashboard.Id)
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
/// import com.pulumi.azure.portal.PortalFunctions;
/// import com.pulumi.azure.portal.inputs.Azurerm_portal_dashboardArgs;
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
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Portal` - 2019-01-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_portal_azurerm_portal_dashboard_azurerm_portal_dashboard_args_doc}
/// [options] Invoke options controlling this call.
Future<AzurermPortalDashboardResult> azurermPortalDashboard(
  AzurermPortalDashboardArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:portal/azurerm_portal_dashboard:azurerm_portal_dashboard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return AzurermPortalDashboardResult.fromMap(result);
}
