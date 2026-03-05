import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_connector_args.dart';
import 'get_access_connector_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_private_endpoint_connection_args.dart';
import 'get_workspace_private_endpoint_connection_result.dart';
import 'get_workspace_result.dart';

/// Use this data source to access information about an existing Databricks Access Connector.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.databricks.getAccessConnector({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.databricks.get_access_connector(name="existing",
///     resource_group_name="existing")
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
///     var example = Azure.DataBricks.GetAccessConnector.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getAccessConnectorResult => getAccessConnectorResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databricks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := databricks.LookupAccessConnector(ctx, &databricks.LookupAccessConnectorArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
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
/// import com.pulumi.azure.databricks.DatabricksFunctions;
/// import com.pulumi.azure.databricks.inputs.GetAccessConnectorArgs;
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
///         final var example = DatabricksFunctions.getAccessConnector(GetAccessConnectorArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
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
///       function: azure:databricks:getAccessConnector
///       arguments:
///         name: existing
///         resourceGroupName: existing
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
/// * `Microsoft.Databricks` - 2022-10-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_databricks_get_access_connector_get_access_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessConnectorResult> getAccessConnector(
  GetAccessConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:databricks/getAccessConnector:getAccessConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessConnectorResult.fromMap(result);
}

/// Use this data source to access information about an existing Databricks workspace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.databricks.getWorkspace({
///     name: "example-workspace",
///     resourceGroupName: "example-rg",
/// });
/// export const databricksWorkspaceId = example.then(example => example.workspaceId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.databricks.get_workspace(name="example-workspace",
///     resource_group_name="example-rg")
/// pulumi.export("databricksWorkspaceId", example.workspace_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DataBricks.GetWorkspace.Invoke(new()
///     {
///         Name = "example-workspace",
///         ResourceGroupName = "example-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["databricksWorkspaceId"] = example.Apply(getWorkspaceResult => getWorkspaceResult.WorkspaceId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databricks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := databricks.LookupWorkspace(ctx, &databricks.LookupWorkspaceArgs{
/// 			Name:              "example-workspace",
/// 			ResourceGroupName: "example-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("databricksWorkspaceId", example.WorkspaceId)
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
/// import com.pulumi.azure.databricks.DatabricksFunctions;
/// import com.pulumi.azure.databricks.inputs.GetWorkspaceArgs;
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
///         final var example = DatabricksFunctions.getWorkspace(GetWorkspaceArgs.builder()
///             .name("example-workspace")
///             .resourceGroupName("example-rg")
///             .build());
///
///         ctx.export("databricksWorkspaceId", example.workspaceId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:databricks:getWorkspace
///       arguments:
///         name: example-workspace
///         resourceGroupName: example-rg
/// outputs:
///   databricksWorkspaceId: ${example.workspaceId}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Databricks` - 2024-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_databricks_get_workspace_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:databricks/getWorkspace:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}

/// Use this data source to access information on an existing Databricks Workspace private endpoint connection state.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.databricks.getWorkspacePrivateEndpointConnection({
///     workspaceId: exampleAzurermDatabricksWorkspace.id,
///     privateEndpointId: exampleAzurermPrivateEndpoint.id,
/// });
/// export const databricksWorkspacePrivateEndpointConnectionStatus = example.then(example => example.connections?.[0]?.status);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.databricks.get_workspace_private_endpoint_connection(workspace_id=example_azurerm_databricks_workspace["id"],
///     private_endpoint_id=example_azurerm_private_endpoint["id"])
/// pulumi.export("databricksWorkspacePrivateEndpointConnectionStatus", example.connections[0].status)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DataBricks.GetWorkspacePrivateEndpointConnection.Invoke(new()
///     {
///         WorkspaceId = exampleAzurermDatabricksWorkspace.Id,
///         PrivateEndpointId = exampleAzurermPrivateEndpoint.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["databricksWorkspacePrivateEndpointConnectionStatus"] = example.Apply(getWorkspacePrivateEndpointConnectionResult => getWorkspacePrivateEndpointConnectionResult.Connections[0]?.Status),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databricks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := databricks.GetWorkspacePrivateEndpointConnection(ctx, &databricks.GetWorkspacePrivateEndpointConnectionArgs{
/// 			WorkspaceId:       exampleAzurermDatabricksWorkspace.Id,
/// 			PrivateEndpointId: exampleAzurermPrivateEndpoint.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("databricksWorkspacePrivateEndpointConnectionStatus", example.Connections[0].Status)
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
/// import com.pulumi.azure.databricks.DatabricksFunctions;
/// import com.pulumi.azure.databricks.inputs.GetWorkspacePrivateEndpointConnectionArgs;
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
///         final var example = DatabricksFunctions.getWorkspacePrivateEndpointConnection(GetWorkspacePrivateEndpointConnectionArgs.builder()
///             .workspaceId(exampleAzurermDatabricksWorkspace.id())
///             .privateEndpointId(exampleAzurermPrivateEndpoint.id())
///             .build());
///
///         ctx.export("databricksWorkspacePrivateEndpointConnectionStatus", example.connections()[0].status());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:databricks:getWorkspacePrivateEndpointConnection
///       arguments:
///         workspaceId: ${exampleAzurermDatabricksWorkspace.id}
///         privateEndpointId: ${exampleAzurermPrivateEndpoint.id}
/// outputs:
///   databricksWorkspacePrivateEndpointConnectionStatus: ${example.connections[0].status}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Databricks` - 2024-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_databricks_get_workspace_private_endpoint_connection_get_workspace_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspacePrivateEndpointConnectionResult> getWorkspacePrivateEndpointConnection(
  GetWorkspacePrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:databricks/getWorkspacePrivateEndpointConnection:getWorkspacePrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspacePrivateEndpointConnectionResult.fromMap(result);
}
