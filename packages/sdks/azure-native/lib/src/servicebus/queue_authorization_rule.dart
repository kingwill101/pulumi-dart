import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_authorization_rule_args.dart';
import 'system_data_response.dart';

/// Description of a namespace authorization rule.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### QueueAuthorizationRuleCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var queueAuthorizationRule = new AzureNative.ServiceBus.QueueAuthorizationRule("queueAuthorizationRule", new()
///     {
///         AuthorizationRuleName = "sdk-AuthRules-5800",
///         NamespaceName = "sdk-Namespace-7982",
///         QueueName = "sdk-Queues-2317",
///         ResourceGroupName = "ArunMonocle",
///         Rights = new[]
///         {
///             AzureNative.ServiceBus.AccessRights.Listen,
///             AzureNative.ServiceBus.AccessRights.Send,
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	servicebus "github.com/pulumi/pulumi-azure-native-sdk/servicebus/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicebus.NewQueueAuthorizationRule(ctx, "queueAuthorizationRule", &servicebus.QueueAuthorizationRuleArgs{
/// 			AuthorizationRuleName: pulumi.String("sdk-AuthRules-5800"),
/// 			NamespaceName:         pulumi.String("sdk-Namespace-7982"),
/// 			QueueName:             pulumi.String("sdk-Queues-2317"),
/// 			ResourceGroupName:     pulumi.String("ArunMonocle"),
/// 			Rights: servicebus.AccessRightsArray{
/// 				servicebus.AccessRightsListen,
/// 				servicebus.AccessRightsSend,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.servicebus.QueueAuthorizationRule;
/// import com.pulumi.azurenative.servicebus.QueueAuthorizationRuleArgs;
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
///         var queueAuthorizationRule = new QueueAuthorizationRule("queueAuthorizationRule", QueueAuthorizationRuleArgs.builder()
///             .authorizationRuleName("sdk-AuthRules-5800")
///             .namespaceName("sdk-Namespace-7982")
///             .queueName("sdk-Queues-2317")
///             .resourceGroupName("ArunMonocle")
///             .rights(
///                 "Listen",
///                 "Send")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const queueAuthorizationRule = new azure_native.servicebus.QueueAuthorizationRule("queueAuthorizationRule", {
///     authorizationRuleName: "sdk-AuthRules-5800",
///     namespaceName: "sdk-Namespace-7982",
///     queueName: "sdk-Queues-2317",
///     resourceGroupName: "ArunMonocle",
///     rights: [
///         azure_native.servicebus.AccessRights.Listen,
///         azure_native.servicebus.AccessRights.Send,
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// queue_authorization_rule = azure_native.servicebus.QueueAuthorizationRule("queueAuthorizationRule",
///     authorization_rule_name="sdk-AuthRules-5800",
///     namespace_name="sdk-Namespace-7982",
///     queue_name="sdk-Queues-2317",
///     resource_group_name="ArunMonocle",
///     rights=[
///         azure_native.servicebus.AccessRights.LISTEN,
///         azure_native.servicebus.AccessRights.SEND,
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   queueAuthorizationRule:
///     type: azure-native:servicebus:QueueAuthorizationRule
///     properties:
///       authorizationRuleName: sdk-AuthRules-5800
///       namespaceName: sdk-Namespace-7982
///       queueName: sdk-Queues-2317
///       resourceGroupName: ArunMonocle
///       rights:
///         - Listen
///         - Send
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:servicebus:QueueAuthorizationRule sdk-AuthRules-5800 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/queues/{queueName}/authorizationRules/{authorizationRuleName}
/// ```
class QueueAuthorizationRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The rights associated with the rule.
  late final pulumi.Output<List<String>> rights;

  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;

  /// Creates a new [QueueAuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QueueAuthorizationRule]. {@macro pulumi_servicebus_queue_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QueueAuthorizationRule(
    String name, {
    QueueAuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:servicebus:QueueAuthorizationRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    rights = registerOutput<List<String>>('rights');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
