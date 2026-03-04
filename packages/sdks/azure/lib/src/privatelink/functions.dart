import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_connection_args.dart';
import 'get_endpoint_connection_result.dart';
import 'get_service_args.dart';
import 'get_service_endpoint_connections_args.dart';
import 'get_service_endpoint_connections_result.dart';
import 'get_service_result.dart';

/// Use this data source to access the connection status information about an existing Private Endpoint Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.privatelink.getEndpointConnection({
///     name: "example-private-endpoint",
///     resourceGroupName: "example-rg",
/// });
/// export const privateEndpointStatus = example.then(example => example.privateServiceConnections?.[0]?.status);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatelink.get_endpoint_connection(name="example-private-endpoint",
///     resource_group_name="example-rg")
/// pulumi.export("privateEndpointStatus", example.private_service_connections[0].status)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.PrivateLink.GetEndpointConnection.Invoke(new()
///     {
///         Name = "example-private-endpoint",
///         ResourceGroupName = "example-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["privateEndpointStatus"] = example.Apply(getEndpointConnectionResult => getEndpointConnectionResult.PrivateServiceConnections[0]?.Status),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatelink"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := privatelink.GetEndpointConnection(ctx, &privatelink.GetEndpointConnectionArgs{
/// 			Name:              "example-private-endpoint",
/// 			ResourceGroupName: "example-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("privateEndpointStatus", example.PrivateServiceConnections[0].Status)
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
/// import com.pulumi.azure.privatelink.PrivatelinkFunctions;
/// import com.pulumi.azure.privatelink.inputs.GetEndpointConnectionArgs;
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
///         final var example = PrivatelinkFunctions.getEndpointConnection(GetEndpointConnectionArgs.builder()
///             .name("example-private-endpoint")
///             .resourceGroupName("example-rg")
///             .build());
///
///         ctx.export("privateEndpointStatus", example.privateServiceConnections()[0].status());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:privatelink:getEndpointConnection
///       arguments:
///         name: example-private-endpoint
///         resourceGroupName: example-rg
/// outputs:
///   privateEndpointStatus: ${example.privateServiceConnections[0].status}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatelink_get_endpoint_connection_get_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointConnectionResult> getEndpointConnection(
  GetEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatelink/getEndpointConnection:getEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointConnectionResult.fromMap(result);
}

/// Use this data source to access information about an existing Private Link Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.privatelink.getService({
///     name: "myPrivateLinkService",
///     resourceGroupName: "PrivateLinkServiceRG",
/// });
/// export const privateLinkServiceId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatelink.get_service(name="myPrivateLinkService",
///     resource_group_name="PrivateLinkServiceRG")
/// pulumi.export("privateLinkServiceId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.PrivateLink.GetService.Invoke(new()
///     {
///         Name = "myPrivateLinkService",
///         ResourceGroupName = "PrivateLinkServiceRG",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["privateLinkServiceId"] = example.Apply(getServiceResult => getServiceResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatelink"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := privatelink.GetService(ctx, &privatelink.GetServiceArgs{
/// 			Name:              "myPrivateLinkService",
/// 			ResourceGroupName: "PrivateLinkServiceRG",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("privateLinkServiceId", example.Id)
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
/// import com.pulumi.azure.privatelink.PrivatelinkFunctions;
/// import com.pulumi.azure.privatelink.inputs.GetServiceArgs;
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
///         final var example = PrivatelinkFunctions.getService(GetServiceArgs.builder()
///             .name("myPrivateLinkService")
///             .resourceGroupName("PrivateLinkServiceRG")
///             .build());
///
///         ctx.export("privateLinkServiceId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:privatelink:getService
///       arguments:
///         name: myPrivateLinkService
///         resourceGroupName: PrivateLinkServiceRG
/// outputs:
///   privateLinkServiceId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatelink_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatelink/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Use this data source to access endpoint connection information about an existing Private Link Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.privatelink.getServiceEndpointConnections({
///     serviceId: exampleAzurermPrivateLinkService.id,
///     resourceGroupName: exampleAzurermResourceGroup.name,
/// });
/// export const privateEndpointStatus = example.then(example => example.privateEndpointConnections?.[0]?.status);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatelink.get_service_endpoint_connections(service_id=example_azurerm_private_link_service["id"],
///     resource_group_name=example_azurerm_resource_group["name"])
/// pulumi.export("privateEndpointStatus", example.private_endpoint_connections[0].status)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.PrivateLink.GetServiceEndpointConnections.Invoke(new()
///     {
///         ServiceId = exampleAzurermPrivateLinkService.Id,
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["privateEndpointStatus"] = example.Apply(getServiceEndpointConnectionsResult => getServiceEndpointConnectionsResult.PrivateEndpointConnections[0]?.Status),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatelink"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := privatelink.GetServiceEndpointConnections(ctx, &privatelink.GetServiceEndpointConnectionsArgs{
/// 			ServiceId:         exampleAzurermPrivateLinkService.Id,
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("privateEndpointStatus", example.PrivateEndpointConnections[0].Status)
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
/// import com.pulumi.azure.privatelink.PrivatelinkFunctions;
/// import com.pulumi.azure.privatelink.inputs.GetServiceEndpointConnectionsArgs;
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
///         final var example = PrivatelinkFunctions.getServiceEndpointConnections(GetServiceEndpointConnectionsArgs.builder()
///             .serviceId(exampleAzurermPrivateLinkService.id())
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .build());
///
///         ctx.export("privateEndpointStatus", example.privateEndpointConnections()[0].status());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:privatelink:getServiceEndpointConnections
///       arguments:
///         serviceId: ${exampleAzurermPrivateLinkService.id}
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
/// outputs:
///   privateEndpointStatus: ${example.privateEndpointConnections[0].status}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatelink_get_service_endpoint_connections_get_service_endpoint_connections_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceEndpointConnectionsResult> getServiceEndpointConnections(
  GetServiceEndpointConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatelink/getServiceEndpointConnections:getServiceEndpointConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceEndpointConnectionsResult.fromMap(result);
}
