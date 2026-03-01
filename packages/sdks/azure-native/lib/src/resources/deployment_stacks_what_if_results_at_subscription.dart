import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_stacks_what_if_result_properties_response.dart';
import 'deployment_stacks_what_if_results_at_subscription_args.dart';
import 'system_data_response.dart';

/// Deployment stack object.
///
/// Uses Azure REST API version 2025-07-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a subscription-scoped Deployment stack what-if result
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deploymentStacksWhatIfResultsAtSubscription = new AzureNative.Resources.DeploymentStacksWhatIfResultsAtSubscription("deploymentStacksWhatIfResultsAtSubscription", new()
///     {
///         DeploymentStacksWhatIfResultName = "simpleDeploymentStackWhatIfResult",
///         Location = "eastus",
///         Properties = new AzureNative.Resources.Inputs.DeploymentStacksWhatIfResultPropertiesArgs
///         {
///             ActionOnUnmanage = new AzureNative.Resources.Inputs.ActionOnUnmanageArgs
///             {
///                 ManagementGroups = AzureNative.Resources.DeploymentStacksDeleteDetachEnum.Detach,
///                 ResourceGroups = AzureNative.Resources.DeploymentStacksDeleteDetachEnum.Delete,
///                 Resources = AzureNative.Resources.DeploymentStacksDeleteDetachEnum.Delete,
///             },
///             DenySettings = new AzureNative.Resources.Inputs.DenySettingsArgs
///             {
///                 ApplyToChildScopes = false,
///                 Mode = AzureNative.Resources.DenySettingsMode.None,
///             },
///             DeploymentStackResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Resources/deploymentStacks/simpleDeploymentStack",
///             ExtensionConfigs =
///             {
///                 { "contoso",
///                 {
///                     { "configOne", new AzureNative.Resources.Inputs.DeploymentExtensionConfigItemArgs
///                     {
///                         Value = "config1Value",
///                     } },
///                     { "configTwo", new AzureNative.Resources.Inputs.DeploymentExtensionConfigItemArgs
///                     {
///                         Value = true,
///                     } },
///                 } },
///             },
///             Parameters = null,
///             RetentionInterval = "P7D",
///             TemplateLink = new AzureNative.Resources.Inputs.DeploymentStacksTemplateLinkArgs
///             {
///                 Uri = "https://example.com/exampleTemplate.json",
///             },
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
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewDeploymentStacksWhatIfResultsAtSubscription(ctx, "deploymentStacksWhatIfResultsAtSubscription", &resources.DeploymentStacksWhatIfResultsAtSubscriptionArgs{
/// 			DeploymentStacksWhatIfResultName: pulumi.String("simpleDeploymentStackWhatIfResult"),
/// 			Location:                         pulumi.String("eastus"),
/// 			Properties: &resources.DeploymentStacksWhatIfResultPropertiesArgs{
/// 				ActionOnUnmanage: &resources.ActionOnUnmanageArgs{
/// 					ManagementGroups: pulumi.String(resources.DeploymentStacksDeleteDetachEnumDetach),
/// 					ResourceGroups:   pulumi.String(resources.DeploymentStacksDeleteDetachEnumDelete),
/// 					Resources:        pulumi.String(resources.DeploymentStacksDeleteDetachEnumDelete),
/// 				},
/// 				DenySettings: &resources.DenySettingsArgs{
/// 					ApplyToChildScopes: pulumi.Bool(false),
/// 					Mode:               pulumi.String(resources.DenySettingsModeNone),
/// 				},
/// 				DeploymentStackResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Resources/deploymentStacks/simpleDeploymentStack"),
/// 				ExtensionConfigs: resources.DeploymentExtensionConfigItemMapMap{
/// 					"contoso": resources.DeploymentExtensionConfigItemMap{
/// 						"configOne": &resources.DeploymentExtensionConfigItemArgs{
/// 							Value: pulumi.Any("config1Value"),
/// 						},
/// 						"configTwo": &resources.DeploymentExtensionConfigItemArgs{
/// 							Value: pulumi.Any(true),
/// 						},
/// 					},
/// 				},
/// 				Parameters:        resources.DeploymentParameterMap{},
/// 				RetentionInterval: pulumi.String("P7D"),
/// 				TemplateLink: &resources.DeploymentStacksTemplateLinkArgs{
/// 					Uri: pulumi.String("https://example.com/exampleTemplate.json"),
/// 				},
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
/// import com.pulumi.azurenative.resources.DeploymentStacksWhatIfResultsAtSubscription;
/// import com.pulumi.azurenative.resources.DeploymentStacksWhatIfResultsAtSubscriptionArgs;
/// import com.pulumi.azurenative.resources.inputs.DeploymentStacksWhatIfResultPropertiesArgs;
/// import com.pulumi.azurenative.resources.inputs.ActionOnUnmanageArgs;
/// import com.pulumi.azurenative.resources.inputs.DenySettingsArgs;
/// import com.pulumi.azurenative.resources.inputs.DeploymentStacksTemplateLinkArgs;
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
///         var deploymentStacksWhatIfResultsAtSubscription = new DeploymentStacksWhatIfResultsAtSubscription("deploymentStacksWhatIfResultsAtSubscription", DeploymentStacksWhatIfResultsAtSubscriptionArgs.builder()
///             .deploymentStacksWhatIfResultName("simpleDeploymentStackWhatIfResult")
///             .location("eastus")
///             .properties(DeploymentStacksWhatIfResultPropertiesArgs.builder()
///                 .actionOnUnmanage(ActionOnUnmanageArgs.builder()
///                     .managementGroups("detach")
///                     .resourceGroups("delete")
///                     .resources("delete")
///                     .build())
///                 .denySettings(DenySettingsArgs.builder()
///                     .applyToChildScopes(false)
///                     .mode("none")
///                     .build())
///                 .deploymentStackResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Resources/deploymentStacks/simpleDeploymentStack")
///                 .extensionConfigs(Map.of("contoso", Map.ofEntries(
///                     Map.entry("configOne", DeploymentExtensionConfigItemArgs.builder()
///                         .value("config1Value")
///                         .build()),
///                     Map.entry("configTwo", DeploymentExtensionConfigItemArgs.builder()
///                         .value(true)
///                         .build())
///                 )))
///                 .parameters(Map.ofEntries(
///                 ))
///                 .retentionInterval("P7D")
///                 .templateLink(DeploymentStacksTemplateLinkArgs.builder()
///                     .uri("https://example.com/exampleTemplate.json")
///                     .build())
///                 .build())
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
/// const deploymentStacksWhatIfResultsAtSubscription = new azure_native.resources.DeploymentStacksWhatIfResultsAtSubscription("deploymentStacksWhatIfResultsAtSubscription", {
///     deploymentStacksWhatIfResultName: "simpleDeploymentStackWhatIfResult",
///     location: "eastus",
///     properties: {
///         actionOnUnmanage: {
///             managementGroups: azure_native.resources.DeploymentStacksDeleteDetachEnum.Detach,
///             resourceGroups: azure_native.resources.DeploymentStacksDeleteDetachEnum.Delete,
///             resources: azure_native.resources.DeploymentStacksDeleteDetachEnum.Delete,
///         },
///         denySettings: {
///             applyToChildScopes: false,
///             mode: azure_native.resources.DenySettingsMode.None,
///         },
///         deploymentStackResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Resources/deploymentStacks/simpleDeploymentStack",
///         extensionConfigs: {
///             contoso: {
///                 configOne: {
///                     value: "config1Value",
///                 },
///                 configTwo: {
///                     value: true,
///                 },
///             },
///         },
///         parameters: {},
///         retentionInterval: "P7D",
///         templateLink: {
///             uri: "https://example.com/exampleTemplate.json",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment_stacks_what_if_results_at_subscription = azure_native.resources.DeploymentStacksWhatIfResultsAtSubscription("deploymentStacksWhatIfResultsAtSubscription",
///     deployment_stacks_what_if_result_name="simpleDeploymentStackWhatIfResult",
///     location="eastus",
///     properties={
///         "action_on_unmanage": {
///             "management_groups": azure_native.resources.DeploymentStacksDeleteDetachEnum.DETACH,
///             "resource_groups": azure_native.resources.DeploymentStacksDeleteDetachEnum.DELETE,
///             "resources": azure_native.resources.DeploymentStacksDeleteDetachEnum.DELETE,
///         },
///         "deny_settings": {
///             "apply_to_child_scopes": False,
///             "mode": azure_native.resources.DenySettingsMode.NONE,
///         },
///         "deployment_stack_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Resources/deploymentStacks/simpleDeploymentStack",
///         "extension_configs": {
///             "contoso": {
///                 "configOne": {
///                     "value": "config1Value",
///                 },
///                 "configTwo": {
///                     "value": True,
///                 },
///             },
///         },
///         "parameters": {},
///         "retention_interval": "P7D",
///         "template_link": {
///             "uri": "https://example.com/exampleTemplate.json",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   deploymentStacksWhatIfResultsAtSubscription:
///     type: azure-native:resources:DeploymentStacksWhatIfResultsAtSubscription
///     properties:
///       deploymentStacksWhatIfResultName: simpleDeploymentStackWhatIfResult
///       location: eastus
///       properties:
///         actionOnUnmanage:
///           managementGroups: detach
///           resourceGroups: delete
///           resources: delete
///         denySettings:
///           applyToChildScopes: false
///           mode: none
///         deploymentStackResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Resources/deploymentStacks/simpleDeploymentStack
///         extensionConfigs:
///           contoso:
///             configOne:
///               value: config1Value
///             configTwo:
///               value: true
///         parameters: {}
///         retentionInterval: P7D
///         templateLink:
///           uri: https://example.com/exampleTemplate.json
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
/// $ pulumi import azure-native:resources:DeploymentStacksWhatIfResultsAtSubscription simpleDeploymentStackWhatIfResult /subscriptions/{subscriptionId}/providers/Microsoft.Resources/deploymentStacksWhatIfResults/{deploymentStacksWhatIfResultName}
/// ```
class DeploymentStacksWhatIfResultsAtSubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<DeploymentStacksWhatIfResultPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DeploymentStacksWhatIfResultsAtSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentStacksWhatIfResultsAtSubscription]. {@macro pulumi_resources_deployment_stacks_what_if_results_at_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentStacksWhatIfResultsAtSubscription(
    String name, {
    DeploymentStacksWhatIfResultsAtSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:resources:DeploymentStacksWhatIfResultsAtSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<DeploymentStacksWhatIfResultPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
