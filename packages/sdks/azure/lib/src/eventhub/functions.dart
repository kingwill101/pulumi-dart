import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authorization_rule_args.dart';
import 'get_authorization_rule_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_consume_group_args.dart';
import 'get_consume_group_result.dart';
import 'get_event_hub_args.dart';
import 'get_event_hub_result.dart';
import 'get_eventhub_namespace_args.dart';
import 'get_eventhub_namespace_result.dart';
import 'get_namespace_args.dart';
import 'get_namespace_authorization_rule_args.dart';
import 'get_namespace_authorization_rule_result.dart';
import 'get_namespace_result.dart';
import 'get_sas_args.dart';
import 'get_sas_result.dart';
import 'get_service_bus_namespace_args.dart';
import 'get_service_bus_namespace_result.dart';

/// Use this data source to access information about an existing Event Hubs Authorization Rule within an Event Hub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = azure.eventhub.getAuthorizationRule({
///     name: "test",
///     namespaceName: testAzurermEventhubNamespace.name,
///     eventhubName: testAzurermEventhub.name,
///     resourceGroupName: testAzurermResourceGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.eventhub.get_authorization_rule(name="test",
///     namespace_name=test_azurerm_eventhub_namespace["name"],
///     eventhub_name=test_azurerm_eventhub["name"],
///     resource_group_name=test_azurerm_resource_group["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Azure.EventHub.GetAuthorizationRule.Invoke(new()
///     {
///         Name = "test",
///         NamespaceName = testAzurermEventhubNamespace.Name,
///         EventhubName = testAzurermEventhub.Name,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventhub.LookupAuthorizationRule(ctx, &eventhub.LookupAuthorizationRuleArgs{
/// 			Name:              "test",
/// 			NamespaceName:     testAzurermEventhubNamespace.Name,
/// 			EventhubName:      testAzurermEventhub.Name,
/// 			ResourceGroupName: testAzurermResourceGroup.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
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
/// import com.pulumi.azure.eventhub.EventhubFunctions;
/// import com.pulumi.azure.eventhub.inputs.GetAuthorizationRuleArgs;
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
///         final var test = EventhubFunctions.getAuthorizationRule(GetAuthorizationRuleArgs.builder()
///             .name("test")
///             .namespaceName(testAzurermEventhubNamespace.name())
///             .eventhubName(testAzurermEventhub.name())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: azure:eventhub:getAuthorizationRule
///       arguments:
///         name: test
///         namespaceName: ${testAzurermEventhubNamespace.name}
///         eventhubName: ${testAzurermEventhub.name}
///         resourceGroupName: ${testAzurermResourceGroup.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.EventHub` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_authorization_rule_get_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizationRuleResult> getAuthorizationRule(
  GetAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventhub/getAuthorizationRule:getAuthorizationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationRuleResult.fromMap(result);
}

/// Use this data source to access information about an existing EventHub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.eventhub.getCluster({
///     name: "search-eventhub",
///     resourceGroupName: "search-service",
/// });
/// export const eventhubId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.eventhub.get_cluster(name="search-eventhub",
///     resource_group_name="search-service")
/// pulumi.export("eventhubId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.EventHub.GetCluster.Invoke(new()
///     {
///         Name = "search-eventhub",
///         ResourceGroupName = "search-service",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["eventhubId"] = example.Apply(getClusterResult => getClusterResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := eventhub.LookupCluster(ctx, &eventhub.LookupClusterArgs{
/// 			Name:              "search-eventhub",
/// 			ResourceGroupName: "search-service",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("eventhubId", example.Id)
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
/// import com.pulumi.azure.eventhub.EventhubFunctions;
/// import com.pulumi.azure.eventhub.inputs.GetClusterArgs;
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
///         final var example = EventhubFunctions.getCluster(GetClusterArgs.builder()
///             .name("search-eventhub")
///             .resourceGroupName("search-service")
///             .build());
///
///         ctx.export("eventhubId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:eventhub:getCluster
///       arguments:
///         name: search-eventhub
///         resourceGroupName: search-service
/// outputs:
///   eventhubId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.EventHub` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventhub/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Use this data source to access information about an existing Event Hubs Consumer Group within an Event Hub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = azure.eventhub.getConsumeGroup({
///     name: testAzurermEventhubConsumerGroup.name,
///     namespaceName: testAzurermEventhubNamespace.name,
///     eventhubName: testAzurermEventhub.name,
///     resourceGroupName: testAzurermResourceGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.eventhub.get_consume_group(name=test_azurerm_eventhub_consumer_group["name"],
///     namespace_name=test_azurerm_eventhub_namespace["name"],
///     eventhub_name=test_azurerm_eventhub["name"],
///     resource_group_name=test_azurerm_resource_group["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Azure.EventHub.GetConsumeGroup.Invoke(new()
///     {
///         Name = testAzurermEventhubConsumerGroup.Name,
///         NamespaceName = testAzurermEventhubNamespace.Name,
///         EventhubName = testAzurermEventhub.Name,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventhub.GetConsumeGroup(ctx, &eventhub.GetConsumeGroupArgs{
/// 			Name:              testAzurermEventhubConsumerGroup.Name,
/// 			NamespaceName:     testAzurermEventhubNamespace.Name,
/// 			EventhubName:      testAzurermEventhub.Name,
/// 			ResourceGroupName: testAzurermResourceGroup.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
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
/// import com.pulumi.azure.eventhub.EventhubFunctions;
/// import com.pulumi.azure.eventhub.inputs.GetConsumeGroupArgs;
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
///         final var test = EventhubFunctions.getConsumeGroup(GetConsumeGroupArgs.builder()
///             .name(testAzurermEventhubConsumerGroup.name())
///             .namespaceName(testAzurermEventhubNamespace.name())
///             .eventhubName(testAzurermEventhub.name())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: azure:eventhub:getConsumeGroup
///       arguments:
///         name: ${testAzurermEventhubConsumerGroup.name}
///         namespaceName: ${testAzurermEventhubNamespace.name}
///         eventhubName: ${testAzurermEventhub.name}
///         resourceGroupName: ${testAzurermResourceGroup.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.EventHub` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_consume_group_get_consume_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsumeGroupResult> getConsumeGroup(
  GetConsumeGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventhub/getConsumeGroup:getConsumeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsumeGroupResult.fromMap(result);
}

/// Use this data source to access information about an existing EventHub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.eventhub.getEventHub({
///     name: "search-eventhub",
///     resourceGroupName: "search-service",
///     namespaceName: "search-eventhubns",
/// });
/// export const eventhubId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.eventhub.get_event_hub(name="search-eventhub",
///     resource_group_name="search-service",
///     namespace_name="search-eventhubns")
/// pulumi.export("eventhubId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.EventHub.GetEventHub.Invoke(new()
///     {
///         Name = "search-eventhub",
///         ResourceGroupName = "search-service",
///         NamespaceName = "search-eventhubns",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["eventhubId"] = example.Apply(getEventHubResult => getEventHubResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := eventhub.LookupEventHub(ctx, &eventhub.LookupEventHubArgs{
/// 			Name:              "search-eventhub",
/// 			ResourceGroupName: "search-service",
/// 			NamespaceName:     "search-eventhubns",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("eventhubId", example.Id)
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
/// import com.pulumi.azure.eventhub.EventhubFunctions;
/// import com.pulumi.azure.eventhub.inputs.GetEventHubArgs;
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
///         final var example = EventhubFunctions.getEventHub(GetEventHubArgs.builder()
///             .name("search-eventhub")
///             .resourceGroupName("search-service")
///             .namespaceName("search-eventhubns")
///             .build());
///
///         ctx.export("eventhubId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:eventhub:getEventHub
///       arguments:
///         name: search-eventhub
///         resourceGroupName: search-service
///         namespaceName: search-eventhubns
/// outputs:
///   eventhubId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.EventHub` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_event_hub_get_event_hub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventHubResult> getEventHub(
  GetEventHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventhub/getEventHub:getEventHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventHubResult.fromMap(result);
}

/// Use this data source to access information about an existing EventHub Namespace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.eventhub.getNamespace({
///     name: "search-eventhubns",
///     resourceGroupName: "search-service",
/// });
/// export const eventhubNamespaceId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.eventhub.get_namespace(name="search-eventhubns",
///     resource_group_name="search-service")
/// pulumi.export("eventhubNamespaceId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.EventHub.GetNamespace.Invoke(new()
///     {
///         Name = "search-eventhubns",
///         ResourceGroupName = "search-service",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["eventhubNamespaceId"] = example.Apply(getNamespaceResult => getNamespaceResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := eventhub.LookupNamespace(ctx, &eventhub.LookupNamespaceArgs{
/// 			Name:              "search-eventhubns",
/// 			ResourceGroupName: "search-service",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("eventhubNamespaceId", example.Id)
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
/// import com.pulumi.azure.eventhub.EventhubFunctions;
/// import com.pulumi.azure.eventhub.inputs.GetNamespaceArgs;
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
///         final var example = EventhubFunctions.getNamespace(GetNamespaceArgs.builder()
///             .name("search-eventhubns")
///             .resourceGroupName("search-service")
///             .build());
///
///         ctx.export("eventhubNamespaceId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:eventhub:getNamespace
///       arguments:
///         name: search-eventhubns
///         resourceGroupName: search-service
/// outputs:
///   eventhubNamespaceId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.EventHub` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_eventhub_namespace_get_eventhub_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventhubNamespaceResult> getEventhubNamespace(
  GetEventhubNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventhub/getEventhubNamespace:getEventhubNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventhubNamespaceResult.fromMap(result);
}

/// Use this data source to access information about an existing EventHub Namespace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.eventhub.getNamespace({
///     name: "search-eventhubns",
///     resourceGroupName: "search-service",
/// });
/// export const eventhubNamespaceId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.eventhub.get_namespace(name="search-eventhubns",
///     resource_group_name="search-service")
/// pulumi.export("eventhubNamespaceId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.EventHub.GetNamespace.Invoke(new()
///     {
///         Name = "search-eventhubns",
///         ResourceGroupName = "search-service",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["eventhubNamespaceId"] = example.Apply(getNamespaceResult => getNamespaceResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := eventhub.LookupNamespace(ctx, &eventhub.LookupNamespaceArgs{
/// 			Name:              "search-eventhubns",
/// 			ResourceGroupName: "search-service",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("eventhubNamespaceId", example.Id)
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
/// import com.pulumi.azure.eventhub.EventhubFunctions;
/// import com.pulumi.azure.eventhub.inputs.GetNamespaceArgs;
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
///         final var example = EventhubFunctions.getNamespace(GetNamespaceArgs.builder()
///             .name("search-eventhubns")
///             .resourceGroupName("search-service")
///             .build());
///
///         ctx.export("eventhubNamespaceId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:eventhub:getNamespace
///       arguments:
///         name: search-eventhubns
///         resourceGroupName: search-service
/// outputs:
///   eventhubNamespaceId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.EventHub` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_namespace_get_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventhub/getNamespace:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult.fromMap(result);
}

/// Use this data source to access information about an Authorization Rule for an Event Hub Namespace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.eventhub.getNamespaceAuthorizationRule({
///     name: "navi",
///     resourceGroupName: "example-resources",
///     namespaceName: "example-ns",
/// });
/// export const eventhubAuthorizationRuleId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.eventhub.get_namespace_authorization_rule(name="navi",
///     resource_group_name="example-resources",
///     namespace_name="example-ns")
/// pulumi.export("eventhubAuthorizationRuleId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.EventHub.GetNamespaceAuthorizationRule.Invoke(new()
///     {
///         Name = "navi",
///         ResourceGroupName = "example-resources",
///         NamespaceName = "example-ns",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["eventhubAuthorizationRuleId"] = example.Apply(getNamespaceAuthorizationRuleResult => getNamespaceAuthorizationRuleResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := eventhub.LookupNamespaceAuthorizationRule(ctx, &eventhub.LookupNamespaceAuthorizationRuleArgs{
/// 			Name:              "navi",
/// 			ResourceGroupName: "example-resources",
/// 			NamespaceName:     "example-ns",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("eventhubAuthorizationRuleId", example.Id)
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
/// import com.pulumi.azure.eventhub.EventhubFunctions;
/// import com.pulumi.azure.eventhub.inputs.GetNamespaceAuthorizationRuleArgs;
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
///         final var example = EventhubFunctions.getNamespaceAuthorizationRule(GetNamespaceAuthorizationRuleArgs.builder()
///             .name("navi")
///             .resourceGroupName("example-resources")
///             .namespaceName("example-ns")
///             .build());
///
///         ctx.export("eventhubAuthorizationRuleId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:eventhub:getNamespaceAuthorizationRule
///       arguments:
///         name: navi
///         resourceGroupName: example-resources
///         namespaceName: example-ns
/// outputs:
///   eventhubAuthorizationRuleId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.EventHub` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_namespace_authorization_rule_get_namespace_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceAuthorizationRuleResult> getNamespaceAuthorizationRule(
  GetNamespaceAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventhub/getNamespaceAuthorizationRule:getNamespaceAuthorizationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceAuthorizationRuleResult.fromMap(result);
}

/// Use this data source to obtain a Shared Access Signature (SAS Token) for an existing Event Hub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleEventHubNamespace = new azure.eventhub.EventHubNamespace("example", {
///     name: "example-ehn",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     sku: "Basic",
/// });
/// const exampleEventHub = new azure.eventhub.EventHub("example", {
///     name: "example-eh",
///     namespaceName: exampleEventHubNamespace.name,
///     resourceGroupName: exampleResourceGroup.name,
///     partitionCount: 1,
///     messageRetention: 1,
/// });
/// const exampleAuthorizationRule = new azure.eventhub.AuthorizationRule("example", {
///     name: "example-ehar",
///     namespaceName: exampleEventHubNamespace.name,
///     eventhubName: exampleEventHub.name,
///     resourceGroupName: exampleResourceGroup.name,
///     listen: true,
///     send: true,
///     manage: true,
/// });
/// const example = azure.eventhub.getAuthorizationRuleOutput({
///     name: exampleAuthorizationRule.name,
///     namespaceName: exampleEventHubNamespace.name,
///     eventhubName: exampleEventHub.name,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleGetSas = example.apply(example => azure.eventhub.getSasOutput({
///     connectionString: example.primaryConnectionString,
///     expiry: "2023-06-23T00:00:00Z",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_event_hub_namespace = azure.eventhub.EventHubNamespace("example",
///     name="example-ehn",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     sku="Basic")
/// example_event_hub = azure.eventhub.EventHub("example",
///     name="example-eh",
///     namespace_name=example_event_hub_namespace.name,
///     resource_group_name=example_resource_group.name,
///     partition_count=1,
///     message_retention=1)
/// example_authorization_rule = azure.eventhub.AuthorizationRule("example",
///     name="example-ehar",
///     namespace_name=example_event_hub_namespace.name,
///     eventhub_name=example_event_hub.name,
///     resource_group_name=example_resource_group.name,
///     listen=True,
///     send=True,
///     manage=True)
/// example = azure.eventhub.get_authorization_rule_output(name=example_authorization_rule.name,
///     namespace_name=example_event_hub_namespace.name,
///     eventhub_name=example_event_hub.name,
///     resource_group_name=example_resource_group.name)
/// example_get_sas = example.apply(lambda example: azure.eventhub.get_sas_output(connection_string=example.primary_connection_string,
///     expiry="2023-06-23T00:00:00Z"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleEventHubNamespace = new Azure.EventHub.EventHubNamespace("example", new()
///     {
///         Name = "example-ehn",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Sku = "Basic",
///     });
///
///     var exampleEventHub = new Azure.EventHub.EventHub("example", new()
///     {
///         Name = "example-eh",
///         NamespaceName = exampleEventHubNamespace.Name,
///         ResourceGroupName = exampleResourceGroup.Name,
///         PartitionCount = 1,
///         MessageRetention = 1,
///     });
///
///     var exampleAuthorizationRule = new Azure.EventHub.AuthorizationRule("example", new()
///     {
///         Name = "example-ehar",
///         NamespaceName = exampleEventHubNamespace.Name,
///         EventhubName = exampleEventHub.Name,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Listen = true,
///         Send = true,
///         Manage = true,
///     });
///
///     var example = Azure.EventHub.GetAuthorizationRule.Invoke(new()
///     {
///         Name = exampleAuthorizationRule.Name,
///         NamespaceName = exampleEventHubNamespace.Name,
///         EventhubName = exampleEventHub.Name,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleGetSas = Azure.EventHub.GetSas.Invoke(new()
///     {
///         ConnectionString = example.Apply(getAuthorizationRuleResult => getAuthorizationRuleResult.PrimaryConnectionString),
///         Expiry = "2023-06-23T00:00:00Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHubNamespace, err := eventhub.NewEventHubNamespace(ctx, "example", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("example-ehn"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Sku:               pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHub, err := eventhub.NewEventHub(ctx, "example", &eventhub.EventHubArgs{
/// 			Name:              pulumi.String("example-eh"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			PartitionCount:    pulumi.Int(1),
/// 			MessageRetention:  pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAuthorizationRule, err := eventhub.NewAuthorizationRule(ctx, "example", &eventhub.AuthorizationRuleArgs{
/// 			Name:              pulumi.String("example-ehar"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			EventhubName:      exampleEventHub.Name,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Listen:            pulumi.Bool(true),
/// 			Send:              pulumi.Bool(true),
/// 			Manage:            pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := eventhub.LookupAuthorizationRuleOutput(ctx, eventhub.GetAuthorizationRuleOutputArgs{
/// 			Name:              exampleAuthorizationRule.Name,
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			EventhubName:      exampleEventHub.Name,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		_ = example.ApplyT(func(example eventhub.GetAuthorizationRuleResult) (eventhub.GetSasResult, error) {
/// 			return eventhub.GetSasResult(interface{}(eventhub.GetSas(ctx, &eventhub.GetSasArgs{
/// 				ConnectionString: example.PrimaryConnectionString,
/// 				Expiry:           "2023-06-23T00:00:00Z",
/// 			}, nil))), nil
/// 		}).(eventhub.GetSasResultOutput)
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
/// import com.pulumi.azure.eventhub.EventHub;
/// import com.pulumi.azure.eventhub.EventHubArgs;
/// import com.pulumi.azure.eventhub.AuthorizationRule;
/// import com.pulumi.azure.eventhub.AuthorizationRuleArgs;
/// import com.pulumi.azure.eventhub.EventhubFunctions;
/// import com.pulumi.azure.eventhub.inputs.GetAuthorizationRuleArgs;
/// import com.pulumi.azure.eventhub.inputs.GetSasArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("example-ehn")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .sku("Basic")
///             .build());
///
///         var exampleEventHub = new EventHub("exampleEventHub", EventHubArgs.builder()
///             .name("example-eh")
///             .namespaceName(exampleEventHubNamespace.name())
///             .resourceGroupName(exampleResourceGroup.name())
///             .partitionCount(1)
///             .messageRetention(1)
///             .build());
///
///         var exampleAuthorizationRule = new AuthorizationRule("exampleAuthorizationRule", AuthorizationRuleArgs.builder()
///             .name("example-ehar")
///             .namespaceName(exampleEventHubNamespace.name())
///             .eventhubName(exampleEventHub.name())
///             .resourceGroupName(exampleResourceGroup.name())
///             .listen(true)
///             .send(true)
///             .manage(true)
///             .build());
///
///         final var example = EventhubFunctions.getAuthorizationRule(GetAuthorizationRuleArgs.builder()
///             .name(exampleAuthorizationRule.name())
///             .namespaceName(exampleEventHubNamespace.name())
///             .eventhubName(exampleEventHub.name())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         final var exampleGetSas = example.applyValue(_example -> EventhubFunctions.getSas(GetSasArgs.builder()
///             .connectionString(_example.primaryConnectionString())
///             .expiry("2023-06-23T00:00:00Z")
///             .build()));
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleEventHubNamespace:
///     type: azure:eventhub:EventHubNamespace
///     name: example
///     properties:
///       name: example-ehn
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       sku: Basic
///   exampleEventHub:
///     type: azure:eventhub:EventHub
///     name: example
///     properties:
///       name: example-eh
///       namespaceName: ${exampleEventHubNamespace.name}
///       resourceGroupName: ${exampleResourceGroup.name}
///       partitionCount: 1
///       messageRetention: 1
///   exampleAuthorizationRule:
///     type: azure:eventhub:AuthorizationRule
///     name: example
///     properties:
///       name: example-ehar
///       namespaceName: ${exampleEventHubNamespace.name}
///       eventhubName: ${exampleEventHub.name}
///       resourceGroupName: ${exampleResourceGroup.name}
///       listen: true
///       send: true
///       manage: true
/// variables:
///   example:
///     fn::invoke:
///       function: azure:eventhub:getAuthorizationRule
///       arguments:
///         name: ${exampleAuthorizationRule.name}
///         namespaceName: ${exampleEventHubNamespace.name}
///         eventhubName: ${exampleEventHub.name}
///         resourceGroupName: ${exampleResourceGroup.name}
///   exampleGetSas:
///     fn::invoke:
///       function: azure:eventhub:getSas
///       arguments:
///         connectionString: ${example.primaryConnectionString}
///         expiry: 2023-06-23T00:00:00Z
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_sas_get_sas_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSasResult> getSas(
  GetSasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventhub/getSas:getSas',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSasResult.fromMap(result);
}

/// Use this data source to access information about an existing ServiceBus Namespace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.servicebus.getNamespace({
///     name: "examplenamespace",
///     resourceGroupName: "example-resources",
/// });
/// export const location = example.then(example => example.location);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.servicebus.get_namespace(name="examplenamespace",
///     resource_group_name="example-resources")
/// pulumi.export("location", example.location)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ServiceBus.GetNamespace.Invoke(new()
///     {
///         Name = "examplenamespace",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["location"] = example.Apply(getNamespaceResult => getNamespaceResult.Location),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/servicebus"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := servicebus.LookupNamespace(ctx, &servicebus.LookupNamespaceArgs{
/// 			Name:              "examplenamespace",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("location", example.Location)
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
/// import com.pulumi.azure.servicebus.ServicebusFunctions;
/// import com.pulumi.azure.servicebus.inputs.GetNamespaceArgs;
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
///         final var example = ServicebusFunctions.getNamespace(GetNamespaceArgs.builder()
///             .name("examplenamespace")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("location", example.location());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:servicebus:getNamespace
///       arguments:
///         name: examplenamespace
///         resourceGroupName: example-resources
/// outputs:
///   location: ${example.location}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ServiceBus` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_service_bus_namespace_get_service_bus_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceBusNamespaceResult> getServiceBusNamespace(
  GetServiceBusNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventhub/getServiceBusNamespace:getServiceBusNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceBusNamespaceResult.fromMap(result);
}
