import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_schema_iam_policy_args.dart';
import 'get_schema_iam_policy_result.dart';
import 'get_subscription_args.dart';
import 'get_subscription_iam_policy_args.dart';
import 'get_subscription_iam_policy_result.dart';
import 'get_subscription_result.dart';
import 'get_topic_args.dart';
import 'get_topic_iam_policy_args.dart';
import 'get_topic_iam_policy_result.dart';
import 'get_topic_result.dart';

/// Retrieves the current IAM policy data for schema
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.pubsub.getSchemaIamPolicy({
///     project: example.project,
///     schema: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.pubsub.get_schema_iam_policy(project=example["project"],
///     schema=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.PubSub.GetSchemaIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         Schema = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.LookupSchemaIamPolicy(ctx, &pubsub.LookupSchemaIamPolicyArgs{
/// 			Project: pulumi.StringRef(example.Project),
/// 			Schema:  example.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_pubsub_getschemaiampolicy" "policy" {
///   project = example.project
///   schema  = example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.pubsub.PubsubFunctions;
/// import com.pulumi.gcp.pubsub.inputs.GetSchemaIamPolicyArgs;
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
///         final var policy = PubsubFunctions.getSchemaIamPolicy(GetSchemaIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .schema(example.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:pubsub:getSchemaIamPolicy
///       arguments:
///         project: ${example.project}
///         schema: ${example.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_get_schema_iam_policy_get_schema_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchemaIamPolicyResult> getSchemaIamPolicy(
  GetSchemaIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getSchemaIamPolicy:getSchemaIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemaIamPolicyResult.fromMap(result);
}

pulumi.Output<GetSchemaIamPolicyResult> getSchemaIamPolicyOutput(
  GetSchemaIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:pubsub/getSchemaIamPolicy:getSchemaIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSchemaIamPolicyResult.fromMap);
}

/// Get information about a Google Cloud Pub/Sub Subscription. For more information see
/// the [official documentation](https://cloud.google.com/pubsub/docs/)
/// and [API](https://cloud.google.com/pubsub/docs/apis).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_pubsub_subscription = gcp.pubsub.getSubscription({
///     name: "my-pubsub-subscription",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_pubsub_subscription = gcp.pubsub.get_subscription(name="my-pubsub-subscription")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_pubsub_subscription = Gcp.PubSub.GetSubscription.Invoke(new()
///     {
///         Name = "my-pubsub-subscription",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.LookupSubscription(ctx, &pubsub.LookupSubscriptionArgs{
/// 			Name: "my-pubsub-subscription",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_pubsub_getsubscription" "my-pubsub-subscription" {
///   name = "my-pubsub-subscription"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.pubsub.PubsubFunctions;
/// import com.pulumi.gcp.pubsub.inputs.GetSubscriptionArgs;
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
///         final var my-pubsub-subscription = PubsubFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .name("my-pubsub-subscription")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-pubsub-subscription:
///     fn::invoke:
///       function: gcp:pubsub:getSubscription
///       arguments:
///         name: my-pubsub-subscription
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_get_subscription_get_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getSubscription:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult.fromMap(result);
}

pulumi.Output<GetSubscriptionResult> getSubscriptionOutput(
  GetSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:pubsub/getSubscription:getSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSubscriptionResult.fromMap);
}

/// Retrieves the current IAM policy data for a Pubsub subscription.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.pubsub.getSubscriptionIamPolicy({
///     subscription: subscription.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.pubsub.get_subscription_iam_policy(subscription=subscription["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.PubSub.GetSubscriptionIamPolicy.Invoke(new()
///     {
///         Subscription = subscription.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.GetSubscriptionIamPolicy(ctx, &pubsub.GetSubscriptionIamPolicyArgs{
/// 			Subscription: subscription.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_pubsub_getsubscriptioniampolicy" "policy" {
///   subscription = subscription.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.pubsub.PubsubFunctions;
/// import com.pulumi.gcp.pubsub.inputs.GetSubscriptionIamPolicyArgs;
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
///         final var policy = PubsubFunctions.getSubscriptionIamPolicy(GetSubscriptionIamPolicyArgs.builder()
///             .subscription(subscription.get("id"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:pubsub:getSubscriptionIamPolicy
///       arguments:
///         subscription: ${subscription.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_get_subscription_iam_policy_get_subscription_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionIamPolicyResult> getSubscriptionIamPolicy(
  GetSubscriptionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getSubscriptionIamPolicy:getSubscriptionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionIamPolicyResult.fromMap(result);
}

pulumi.Output<GetSubscriptionIamPolicyResult> getSubscriptionIamPolicyOutput(
  GetSubscriptionIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:pubsub/getSubscriptionIamPolicy:getSubscriptionIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSubscriptionIamPolicyResult.fromMap);
}

/// Get information about a Google Cloud Pub/Sub Topic. For more information see
/// the [official documentation](https://cloud.google.com/pubsub/docs/)
/// and [API](https://cloud.google.com/pubsub/docs/apis).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_pubsub_topic = gcp.pubsub.getTopic({
///     name: "my-pubsub-topic",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_pubsub_topic = gcp.pubsub.get_topic(name="my-pubsub-topic")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_pubsub_topic = Gcp.PubSub.GetTopic.Invoke(new()
///     {
///         Name = "my-pubsub-topic",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.LookupTopic(ctx, &pubsub.LookupTopicArgs{
/// 			Name: "my-pubsub-topic",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_pubsub_gettopic" "my-pubsub-topic" {
///   name = "my-pubsub-topic"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.pubsub.PubsubFunctions;
/// import com.pulumi.gcp.pubsub.inputs.GetTopicArgs;
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
///         final var my-pubsub-topic = PubsubFunctions.getTopic(GetTopicArgs.builder()
///             .name("my-pubsub-topic")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-pubsub-topic:
///     fn::invoke:
///       function: gcp:pubsub:getTopic
///       arguments:
///         name: my-pubsub-topic
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_get_topic_get_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicResult> getTopic(
  GetTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getTopic:getTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicResult.fromMap(result);
}

pulumi.Output<GetTopicResult> getTopicOutput(
  GetTopicArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:pubsub/getTopic:getTopic',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTopicResult.fromMap);
}

/// Retrieves the current IAM policy data for topic
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.pubsub.getTopicIamPolicy({
///     project: example.project,
///     topic: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.pubsub.get_topic_iam_policy(project=example["project"],
///     topic=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.PubSub.GetTopicIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         Topic = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.GetTopicIamPolicy(ctx, &pubsub.GetTopicIamPolicyArgs{
/// 			Project: pulumi.StringRef(example.Project),
/// 			Topic:   example.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_pubsub_gettopiciampolicy" "policy" {
///   project = example.project
///   topic   = example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.pubsub.PubsubFunctions;
/// import com.pulumi.gcp.pubsub.inputs.GetTopicIamPolicyArgs;
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
///         final var policy = PubsubFunctions.getTopicIamPolicy(GetTopicIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .topic(example.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:pubsub:getTopicIamPolicy
///       arguments:
///         project: ${example.project}
///         topic: ${example.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_get_topic_iam_policy_get_topic_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicIamPolicyResult> getTopicIamPolicy(
  GetTopicIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getTopicIamPolicy:getTopicIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicIamPolicyResult.fromMap(result);
}

pulumi.Output<GetTopicIamPolicyResult> getTopicIamPolicyOutput(
  GetTopicIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:pubsub/getTopicIamPolicy:getTopicIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTopicIamPolicyResult.fromMap);
}
