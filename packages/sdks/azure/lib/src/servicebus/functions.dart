import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_namespace_args.dart';
import 'get_namespace_authorization_rule_args.dart';
import 'get_namespace_authorization_rule_result.dart';
import 'get_namespace_disaster_recovery_config_args.dart';
import 'get_namespace_disaster_recovery_config_result.dart';
import 'get_namespace_result.dart';
import 'get_queue_args.dart';
import 'get_queue_authorization_rule_args.dart';
import 'get_queue_authorization_rule_result.dart';
import 'get_queue_result.dart';
import 'get_subscription_args.dart';
import 'get_subscription_result.dart';
import 'get_topic_args.dart';
import 'get_topic_authorization_rule_args.dart';
import 'get_topic_authorization_rule_result.dart';
import 'get_topic_result.dart';

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
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_namespace_get_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:servicebus/getNamespace:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult.fromMap(result);
}

/// Use this data source to access information about an existing ServiceBus Namespace Authorization Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.servicebus.getNamespaceAuthorizationRule({
///     name: "examplerule",
///     namespaceId: "examplenamespace",
/// });
/// export const ruleId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.servicebus.get_namespace_authorization_rule(name="examplerule",
///     namespace_id="examplenamespace")
/// pulumi.export("ruleId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ServiceBus.GetNamespaceAuthorizationRule.Invoke(new()
///     {
///         Name = "examplerule",
///         NamespaceId = "examplenamespace",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ruleId"] = example.Apply(getNamespaceAuthorizationRuleResult => getNamespaceAuthorizationRuleResult.Id),
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
/// 		example, err := servicebus.LookupNamespaceAuthorizationRule(ctx, &servicebus.LookupNamespaceAuthorizationRuleArgs{
/// 			Name:        "examplerule",
/// 			NamespaceId: pulumi.StringRef("examplenamespace"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ruleId", example.Id)
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
/// import com.pulumi.azure.servicebus.inputs.GetNamespaceAuthorizationRuleArgs;
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
///         final var example = ServicebusFunctions.getNamespaceAuthorizationRule(GetNamespaceAuthorizationRuleArgs.builder()
///             .name("examplerule")
///             .namespaceId("examplenamespace")
///             .build());
///
///         ctx.export("ruleId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:servicebus:getNamespaceAuthorizationRule
///       arguments:
///         name: examplerule
///         namespaceId: examplenamespace
/// outputs:
///   ruleId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ServiceBus` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_namespace_authorization_rule_get_namespace_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceAuthorizationRuleResult> getNamespaceAuthorizationRule(
  GetNamespaceAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:servicebus/getNamespaceAuthorizationRule:getNamespaceAuthorizationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceAuthorizationRuleResult.fromMap(result);
}

/// Use this data source to access information about an existing Service Bus Disaster Recovery Config.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.servicebus.getNamespaceDisasterRecoveryConfig({
///     name: "existing",
///     namespaceId: "example-namespace-id",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.servicebus.get_namespace_disaster_recovery_config(name="existing",
///     namespace_id="example-namespace-id")
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
///     var example = Azure.ServiceBus.GetNamespaceDisasterRecoveryConfig.Invoke(new()
///     {
///         Name = "existing",
///         NamespaceId = "example-namespace-id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getNamespaceDisasterRecoveryConfigResult => getNamespaceDisasterRecoveryConfigResult.Id),
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
/// 		example, err := servicebus.LookupNamespaceDisasterRecoveryConfig(ctx, &servicebus.LookupNamespaceDisasterRecoveryConfigArgs{
/// 			Name:        "existing",
/// 			NamespaceId: pulumi.StringRef("example-namespace-id"),
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
/// import com.pulumi.azure.servicebus.ServicebusFunctions;
/// import com.pulumi.azure.servicebus.inputs.GetNamespaceDisasterRecoveryConfigArgs;
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
///         final var example = ServicebusFunctions.getNamespaceDisasterRecoveryConfig(GetNamespaceDisasterRecoveryConfigArgs.builder()
///             .name("existing")
///             .namespaceId("example-namespace-id")
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
///       function: azure:servicebus:getNamespaceDisasterRecoveryConfig
///       arguments:
///         name: existing
///         namespaceId: example-namespace-id
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
/// * `Microsoft.ServiceBus` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_namespace_disaster_recovery_config_get_namespace_disaster_recovery_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceDisasterRecoveryConfigResult> getNamespaceDisasterRecoveryConfig(
  GetNamespaceDisasterRecoveryConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:servicebus/getNamespaceDisasterRecoveryConfig:getNamespaceDisasterRecoveryConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceDisasterRecoveryConfigResult.fromMap(result);
}

/// Use this data source to access information about an existing Service Bus Queue.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.servicebus.getQueue({
///     name: "existing",
///     namespaceId: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.servicebus.get_queue(name="existing",
///     namespace_id="existing")
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
///     var example = Azure.ServiceBus.GetQueue.Invoke(new()
///     {
///         Name = "existing",
///         NamespaceId = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getQueueResult => getQueueResult.Id),
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
/// 		example, err := servicebus.LookupQueue(ctx, &servicebus.LookupQueueArgs{
/// 			Name:        "existing",
/// 			NamespaceId: pulumi.StringRef("existing"),
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
/// import com.pulumi.azure.servicebus.ServicebusFunctions;
/// import com.pulumi.azure.servicebus.inputs.GetQueueArgs;
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
///         final var example = ServicebusFunctions.getQueue(GetQueueArgs.builder()
///             .name("existing")
///             .namespaceId("existing")
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
///       function: azure:servicebus:getQueue
///       arguments:
///         name: existing
///         namespaceId: existing
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
/// * `Microsoft.ServiceBus` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_queue_get_queue_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueResult> getQueue(
  GetQueueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:servicebus/getQueue:getQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueResult.fromMap(result);
}

/// Use this data source to access information about an existing ServiceBus Queue Authorisation Rule within a ServiceBus Queue.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.servicebus.getQueueAuthorizationRule({
///     name: "example-tfex_name",
///     resourceGroupName: "example-resources",
///     queueName: "example-servicebus_queue",
///     namespaceName: "example-namespace",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.servicebus.get_queue_authorization_rule(name="example-tfex_name",
///     resource_group_name="example-resources",
///     queue_name="example-servicebus_queue",
///     namespace_name="example-namespace")
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
///     var example = Azure.ServiceBus.GetQueueAuthorizationRule.Invoke(new()
///     {
///         Name = "example-tfex_name",
///         ResourceGroupName = "example-resources",
///         QueueName = "example-servicebus_queue",
///         NamespaceName = "example-namespace",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getQueueAuthorizationRuleResult => getQueueAuthorizationRuleResult.Id),
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
/// 		example, err := servicebus.LookupQueueAuthorizationRule(ctx, &servicebus.LookupQueueAuthorizationRuleArgs{
/// 			Name:              "example-tfex_name",
/// 			ResourceGroupName: pulumi.StringRef("example-resources"),
/// 			QueueName:         pulumi.StringRef("example-servicebus_queue"),
/// 			NamespaceName:     pulumi.StringRef("example-namespace"),
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
/// import com.pulumi.azure.servicebus.ServicebusFunctions;
/// import com.pulumi.azure.servicebus.inputs.GetQueueAuthorizationRuleArgs;
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
///         final var example = ServicebusFunctions.getQueueAuthorizationRule(GetQueueAuthorizationRuleArgs.builder()
///             .name("example-tfex_name")
///             .resourceGroupName("example-resources")
///             .queueName("example-servicebus_queue")
///             .namespaceName("example-namespace")
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
///       function: azure:servicebus:getQueueAuthorizationRule
///       arguments:
///         name: example-tfex_name
///         resourceGroupName: example-resources
///         queueName: example-servicebus_queue
///         namespaceName: example-namespace
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
/// * `Microsoft.ServiceBus` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_queue_authorization_rule_get_queue_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueAuthorizationRuleResult> getQueueAuthorizationRule(
  GetQueueAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:servicebus/getQueueAuthorizationRule:getQueueAuthorizationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueAuthorizationRuleResult.fromMap(result);
}

/// Use this data source to access information about an existing ServiceBus Subscription.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.servicebus.getSubscription({
///     name: "examplesubscription",
///     topicId: "exampletopic",
/// });
/// export const servicebusSubscription = exampleAzurermServicebusNamespace;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.servicebus.get_subscription(name="examplesubscription",
///     topic_id="exampletopic")
/// pulumi.export("servicebusSubscription", example_azurerm_servicebus_namespace)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ServiceBus.GetSubscription.Invoke(new()
///     {
///         Name = "examplesubscription",
///         TopicId = "exampletopic",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["servicebusSubscription"] = exampleAzurermServicebusNamespace,
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
/// 		_, err := servicebus.LookupSubscription(ctx, &servicebus.LookupSubscriptionArgs{
/// 			Name:    "examplesubscription",
/// 			TopicId: pulumi.StringRef("exampletopic"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("servicebusSubscription", exampleAzurermServicebusNamespace)
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
/// import com.pulumi.azure.servicebus.inputs.GetSubscriptionArgs;
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
///         final var example = ServicebusFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .name("examplesubscription")
///             .topicId("exampletopic")
///             .build());
///
///         ctx.export("servicebusSubscription", exampleAzurermServicebusNamespace);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:servicebus:getSubscription
///       arguments:
///         name: examplesubscription
///         topicId: exampletopic
/// outputs:
///   servicebusSubscription: ${exampleAzurermServicebusNamespace}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ServiceBus` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_subscription_get_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:servicebus/getSubscription:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult.fromMap(result);
}

/// Use this data source to access information about an existing Service Bus Topic.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.servicebus.getTopic({
///     name: "existing",
///     namespaceId: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.servicebus.get_topic(name="existing",
///     namespace_id="existing")
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
///     var example = Azure.ServiceBus.GetTopic.Invoke(new()
///     {
///         Name = "existing",
///         NamespaceId = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getTopicResult => getTopicResult.Id),
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
/// 		example, err := servicebus.LookupTopic(ctx, &servicebus.LookupTopicArgs{
/// 			Name:        "existing",
/// 			NamespaceId: pulumi.StringRef("existing"),
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
/// import com.pulumi.azure.servicebus.ServicebusFunctions;
/// import com.pulumi.azure.servicebus.inputs.GetTopicArgs;
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
///         final var example = ServicebusFunctions.getTopic(GetTopicArgs.builder()
///             .name("existing")
///             .namespaceId("existing")
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
///       function: azure:servicebus:getTopic
///       arguments:
///         name: existing
///         namespaceId: existing
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
/// * `Microsoft.ServiceBus` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_topic_get_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicResult> getTopic(
  GetTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:servicebus/getTopic:getTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicResult.fromMap(result);
}

/// Use this data source to access information about a ServiceBus Topic Authorization Rule within a ServiceBus Topic.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.servicebus.getTopicAuthorizationRule({
///     name: "example-tfex_name",
///     resourceGroupName: "example-resources",
///     namespaceName: "example-namespace",
///     topicName: "example-servicebus_topic",
/// });
/// export const servicebusAuthorizationRuleId = exampleAzuremServicebusTopicAuthorizationRule.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.servicebus.get_topic_authorization_rule(name="example-tfex_name",
///     resource_group_name="example-resources",
///     namespace_name="example-namespace",
///     topic_name="example-servicebus_topic")
/// pulumi.export("servicebusAuthorizationRuleId", example_azurem_servicebus_topic_authorization_rule["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ServiceBus.GetTopicAuthorizationRule.Invoke(new()
///     {
///         Name = "example-tfex_name",
///         ResourceGroupName = "example-resources",
///         NamespaceName = "example-namespace",
///         TopicName = "example-servicebus_topic",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["servicebusAuthorizationRuleId"] = exampleAzuremServicebusTopicAuthorizationRule.Id,
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
/// 		_, err := servicebus.LookupTopicAuthorizationRule(ctx, &servicebus.LookupTopicAuthorizationRuleArgs{
/// 			Name:              "example-tfex_name",
/// 			ResourceGroupName: pulumi.StringRef("example-resources"),
/// 			NamespaceName:     pulumi.StringRef("example-namespace"),
/// 			TopicName:         pulumi.StringRef("example-servicebus_topic"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("servicebusAuthorizationRuleId", exampleAzuremServicebusTopicAuthorizationRule.Id)
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
/// import com.pulumi.azure.servicebus.inputs.GetTopicAuthorizationRuleArgs;
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
///         final var example = ServicebusFunctions.getTopicAuthorizationRule(GetTopicAuthorizationRuleArgs.builder()
///             .name("example-tfex_name")
///             .resourceGroupName("example-resources")
///             .namespaceName("example-namespace")
///             .topicName("example-servicebus_topic")
///             .build());
///
///         ctx.export("servicebusAuthorizationRuleId", exampleAzuremServicebusTopicAuthorizationRule.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:servicebus:getTopicAuthorizationRule
///       arguments:
///         name: example-tfex_name
///         resourceGroupName: example-resources
///         namespaceName: example-namespace
///         topicName: example-servicebus_topic
/// outputs:
///   servicebusAuthorizationRuleId: ${exampleAzuremServicebusTopicAuthorizationRule.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ServiceBus` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_topic_authorization_rule_get_topic_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicAuthorizationRuleResult> getTopicAuthorizationRule(
  GetTopicAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:servicebus/getTopicAuthorizationRule:getTopicAuthorizationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicAuthorizationRuleResult.fromMap(result);
}
