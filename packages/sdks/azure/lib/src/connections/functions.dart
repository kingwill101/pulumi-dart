import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_connection_args.dart';
import 'get_api_connection_result.dart';
import 'get_managed_api_args.dart';
import 'get_managed_api_result.dart';

/// Use this data source to access information about an existing API Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.connections.getApiConnection({
///     name: "example-connection",
///     resourceGroupName: "example-resources",
/// });
/// export const connectionId = example.then(example => example.id);
/// export const connectionName = example.then(example => example.name);
/// export const managedApiId = example.then(example => example.managedApiId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.connections.get_api_connection(name="example-connection",
///     resource_group_name="example-resources")
/// pulumi.export("connectionId", example.id)
/// pulumi.export("connectionName", example.name)
/// pulumi.export("managedApiId", example.managed_api_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Connections.GetApiConnection.Invoke(new()
///     {
///         Name = "example-connection",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["connectionId"] = example.Apply(getApiConnectionResult => getApiConnectionResult.Id),
///         ["connectionName"] = example.Apply(getApiConnectionResult => getApiConnectionResult.Name),
///         ["managedApiId"] = example.Apply(getApiConnectionResult => getApiConnectionResult.ManagedApiId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/connections"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := connections.LookupApiConnection(ctx, &connections.LookupApiConnectionArgs{
/// 			Name:              "example-connection",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("connectionId", example.Id)
/// 		ctx.Export("connectionName", example.Name)
/// 		ctx.Export("managedApiId", example.ManagedApiId)
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
/// data "azure_connections_getapiconnection" "example" {
///   name                = "example-connection"
///   resource_group_name = "example-resources"
/// }
///
/// output "connectionId" {
///   value = data.azure_connections_getapiconnection.example.id
/// }
/// output "connectionName" {
///   value = data.azure_connections_getapiconnection.example.name
/// }
/// output "managedApiId" {
///   value = data.azure_connections_getapiconnection.example.managed_api_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.connections.ConnectionsFunctions;
/// import com.pulumi.azure.connections.inputs.GetApiConnectionArgs;
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
///         final var example = ConnectionsFunctions.getApiConnection(GetApiConnectionArgs.builder()
///             .name("example-connection")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("connectionId", example.id());
///         ctx.export("connectionName", example.name());
///         ctx.export("managedApiId", example.managedApiId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:connections:getApiConnection
///       arguments:
///         name: example-connection
///         resourceGroupName: example-resources
/// outputs:
///   connectionId: ${example.id}
///   connectionName: ${example.name}
///   managedApiId: ${example.managedApiId}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2016-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_connections_get_api_connection_get_api_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiConnectionResult> getApiConnection(
  GetApiConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:connections/getApiConnection:getApiConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiConnectionResult.fromMap(result);
}

pulumi.Output<GetApiConnectionResult> getApiConnectionOutput(
  GetApiConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:connections/getApiConnection:getApiConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiConnectionResult.fromMap);
}

/// Uses this data source to access information about an existing Managed API.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.connections.getManagedApi({
///     name: "servicebus",
///     location: "West Europe",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.connections.get_managed_api(name="servicebus",
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
///     var example = Azure.Connections.GetManagedApi.Invoke(new()
///     {
///         Name = "servicebus",
///         Location = "West Europe",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getManagedApiResult => getManagedApiResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/connections"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := connections.GetManagedApi(ctx, &connections.GetManagedApiArgs{
/// 			Name:     "servicebus",
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
/// data "azure_connections_getmanagedapi" "example" {
///   name     = "servicebus"
///   location = "West Europe"
/// }
///
/// output "id" {
///   value = data.azure_connections_getmanagedapi.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.connections.ConnectionsFunctions;
/// import com.pulumi.azure.connections.inputs.GetManagedApiArgs;
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
///         final var example = ConnectionsFunctions.getManagedApi(GetManagedApiArgs.builder()
///             .name("servicebus")
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
///       function: azure:connections:getManagedApi
///       arguments:
///         name: servicebus
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
/// * `Microsoft.Web` - 2016-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_connections_get_managed_api_get_managed_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedApiResult> getManagedApi(
  GetManagedApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:connections/getManagedApi:getManagedApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedApiResult.fromMap(result);
}

pulumi.Output<GetManagedApiResult> getManagedApiOutput(
  GetManagedApiArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:connections/getManagedApi:getManagedApi',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedApiResult.fromMap);
}
