import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'topic_authorization_rule_args.dart';

/// Description of a namespace authorization rule.
///
/// Uses Azure REST API version 2026-01-01. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TopicAuthorizationRuleCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var topicAuthorizationRule = new AzureNative.ServiceBus.TopicAuthorizationRule("topicAuthorizationRule", new()
///     {
///         AuthorizationRuleName = "sdk-AuthRules-4310",
///         NamespaceName = "sdk-Namespace-6261",
///         ResourceGroupName = "ArunMonocle",
///         Rights = new[]
///         {
///             AzureNative.ServiceBus.AccessRights.Listen,
///             AzureNative.ServiceBus.AccessRights.Send,
///         },
///         TopicName = "sdk-Topics-1984",
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
/// 		_, err := servicebus.NewTopicAuthorizationRule(ctx, "topicAuthorizationRule", &servicebus.TopicAuthorizationRuleArgs{
/// 			AuthorizationRuleName: pulumi.String("sdk-AuthRules-4310"),
/// 			NamespaceName:         pulumi.String("sdk-Namespace-6261"),
/// 			ResourceGroupName:     pulumi.String("ArunMonocle"),
/// 			Rights: servicebus.AccessRightsArray{
/// 				servicebus.AccessRightsListen,
/// 				servicebus.AccessRightsSend,
/// 			},
/// 			TopicName: pulumi.String("sdk-Topics-1984"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_servicebus_topicauthorizationrule" "topicAuthorizationRule" {
///   authorization_rule_name = "sdk-AuthRules-4310"
///   namespace_name          = "sdk-Namespace-6261"
///   resource_group_name     = "ArunMonocle"
///   rights                  = ["Listen", "Send"]
///   topic_name              = "sdk-Topics-1984"
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
/// import com.pulumi.azurenative.servicebus.TopicAuthorizationRule;
/// import com.pulumi.azurenative.servicebus.TopicAuthorizationRuleArgs;
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
///         var topicAuthorizationRule = new TopicAuthorizationRule("topicAuthorizationRule", TopicAuthorizationRuleArgs.builder()
///             .authorizationRuleName("sdk-AuthRules-4310")
///             .namespaceName("sdk-Namespace-6261")
///             .resourceGroupName("ArunMonocle")
///             .rights(
///                 "Listen",
///                 "Send")
///             .topicName("sdk-Topics-1984")
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
/// const topicAuthorizationRule = new azure_native.servicebus.TopicAuthorizationRule("topicAuthorizationRule", {
///     authorizationRuleName: "sdk-AuthRules-4310",
///     namespaceName: "sdk-Namespace-6261",
///     resourceGroupName: "ArunMonocle",
///     rights: [
///         azure_native.servicebus.AccessRights.Listen,
///         azure_native.servicebus.AccessRights.Send,
///     ],
///     topicName: "sdk-Topics-1984",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// topic_authorization_rule = azure_native.servicebus.TopicAuthorizationRule("topicAuthorizationRule",
///     authorization_rule_name="sdk-AuthRules-4310",
///     namespace_name="sdk-Namespace-6261",
///     resource_group_name="ArunMonocle",
///     rights=[
///         azure_native.servicebus.AccessRights.LISTEN,
///         azure_native.servicebus.AccessRights.SEND,
///     ],
///     topic_name="sdk-Topics-1984")
///
/// ```
///
/// ```yaml
/// resources:
///   topicAuthorizationRule:
///     type: azure-native:servicebus:TopicAuthorizationRule
///     properties:
///       authorizationRuleName: sdk-AuthRules-4310
///       namespaceName: sdk-Namespace-6261
///       resourceGroupName: ArunMonocle
///       rights:
///         - Listen
///         - Send
///       topicName: sdk-Topics-1984
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
/// $ pulumi import azure-native:servicebus:TopicAuthorizationRule sdk-AuthRules-4310 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}/authorizationRules/{authorizationRuleName}
/// ```
class TopicAuthorizationRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The rights associated with the rule.
  late final pulumi.Output<List<String>> rights;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [TopicAuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TopicAuthorizationRule]. {@macro pulumi_servicebus_topic_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TopicAuthorizationRule(
    String name, {
    TopicAuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicebus:TopicAuthorizationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    rights = registerOutput<List<String>>('rights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [TopicAuthorizationRule] resource.
  TopicAuthorizationRule.reference(String urn)
    : super(
        'azure-native:servicebus:TopicAuthorizationRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    rights = registerOutput<List<String>>('rights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
