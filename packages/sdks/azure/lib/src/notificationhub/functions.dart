import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hub_args.dart';
import 'get_hub_result.dart';
import 'get_namespace_args.dart';
import 'get_namespace_result.dart';

/// Use this data source to access information about an existing Notification Hub within a Notification Hub Namespace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.notificationhub.getHub({
///     name: "notification-hub",
///     namespaceName: "namespace-name",
///     resourceGroupName: "resource-group-name",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.notificationhub.get_hub(name="notification-hub",
///     namespace_name="namespace-name",
///     resource_group_name="resource-group-name")
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
///     var example = Azure.NotificationHub.GetHub.Invoke(new()
///     {
///         Name = "notification-hub",
///         NamespaceName = "namespace-name",
///         ResourceGroupName = "resource-group-name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getHubResult => getHubResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/notificationhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := notificationhub.LookupHub(ctx, &notificationhub.LookupHubArgs{
/// 			Name:              "notification-hub",
/// 			NamespaceName:     "namespace-name",
/// 			ResourceGroupName: "resource-group-name",
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
/// import com.pulumi.azure.notificationhub.NotificationhubFunctions;
/// import com.pulumi.azure.notificationhub.inputs.GetHubArgs;
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
///         final var example = NotificationhubFunctions.getHub(GetHubArgs.builder()
///             .name("notification-hub")
///             .namespaceName("namespace-name")
///             .resourceGroupName("resource-group-name")
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
///       function: azure:notificationhub:getHub
///       arguments:
///         name: notification-hub
///         namespaceName: namespace-name
///         resourceGroupName: resource-group-name
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.NotificationHubs` - 2023-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_notificationhub_get_hub_get_hub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHubResult> getHub(
  GetHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:notificationhub/getHub:getHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHubResult.fromMap(result);
}

/// Use this data source to access information about an existing Notification Hub Namespace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.notificationhub.getNamespace({
///     name: "my-namespace",
///     resourceGroupName: "my-resource-group",
/// });
/// export const servicebusEndpoint = example.then(example => example.servicebusEndpoint);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.notificationhub.get_namespace(name="my-namespace",
///     resource_group_name="my-resource-group")
/// pulumi.export("servicebusEndpoint", example.servicebus_endpoint)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.NotificationHub.GetNamespace.Invoke(new()
///     {
///         Name = "my-namespace",
///         ResourceGroupName = "my-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["servicebusEndpoint"] = example.Apply(getNamespaceResult => getNamespaceResult.ServicebusEndpoint),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/notificationhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := notificationhub.LookupNamespace(ctx, &notificationhub.LookupNamespaceArgs{
/// 			Name:              "my-namespace",
/// 			ResourceGroupName: "my-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("servicebusEndpoint", example.ServicebusEndpoint)
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
/// import com.pulumi.azure.notificationhub.NotificationhubFunctions;
/// import com.pulumi.azure.notificationhub.inputs.GetNamespaceArgs;
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
///         final var example = NotificationhubFunctions.getNamespace(GetNamespaceArgs.builder()
///             .name("my-namespace")
///             .resourceGroupName("my-resource-group")
///             .build());
///
///         ctx.export("servicebusEndpoint", example.servicebusEndpoint());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:notificationhub:getNamespace
///       arguments:
///         name: my-namespace
///         resourceGroupName: my-resource-group
/// outputs:
///   servicebusEndpoint: ${example.servicebusEndpoint}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.NotificationHubs` - 2023-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_notificationhub_get_namespace_get_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:notificationhub/getNamespace:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult.fromMap(result);
}
