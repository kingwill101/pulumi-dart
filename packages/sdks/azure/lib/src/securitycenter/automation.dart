import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_args.dart';
import 'automation_state.dart';

/// Manages Security Center Automation and Continuous Export. This resource supports three types of destination in the `action`, Logic Apps, Log Analytics and Event Hubs
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleEventHubNamespace = new azure.eventhub.EventHubNamespace("example", {
///     name: "example-namespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     capacity: 2,
/// });
/// const exampleEventHub = new azure.eventhub.EventHub("example", {
///     name: "acceptanceTestEventHub",
///     namespaceName: exampleEventHubNamespace.name,
///     resourceGroupName: example.name,
///     partitionCount: 2,
///     messageRetention: 2,
/// });
/// const exampleAuthorizationRule = new azure.eventhub.AuthorizationRule("example", {
///     name: "example-rule",
///     namespaceName: exampleEventHubNamespace.name,
///     eventhubName: exampleEventHub.name,
///     resourceGroupName: example.name,
///     listen: true,
///     send: false,
///     manage: false,
/// });
/// const exampleAutomation = new azure.securitycenter.Automation("example", {
///     name: "example-automation",
///     location: example.location,
///     resourceGroupName: example.name,
///     actions: [{
///         type: "EventHub",
///         resourceId: exampleEventHub.id,
///         connectionString: exampleAuthorizationRule.primaryConnectionString,
///     }],
///     sources: [{
///         eventSource: "Alerts",
///         ruleSets: [{
///             rules: [{
///                 propertyPath: "properties.metadata.severity",
///                 operator: "Equals",
///                 expectedValue: "High",
///                 propertyType: "String",
///             }],
///         }],
///     }],
///     scopes: [current.then(current => `/subscriptions/${current.subscriptionId}`)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_event_hub_namespace = azure.eventhub.EventHubNamespace("example",
///     name="example-namespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     capacity=2)
/// example_event_hub = azure.eventhub.EventHub("example",
///     name="acceptanceTestEventHub",
///     namespace_name=example_event_hub_namespace.name,
///     resource_group_name=example.name,
///     partition_count=2,
///     message_retention=2)
/// example_authorization_rule = azure.eventhub.AuthorizationRule("example",
///     name="example-rule",
///     namespace_name=example_event_hub_namespace.name,
///     eventhub_name=example_event_hub.name,
///     resource_group_name=example.name,
///     listen=True,
///     send=False,
///     manage=False)
/// example_automation = azure.securitycenter.Automation("example",
///     name="example-automation",
///     location=example.location,
///     resource_group_name=example.name,
///     actions=[{
///         "type": "EventHub",
///         "resource_id": example_event_hub.id,
///         "connection_string": example_authorization_rule.primary_connection_string,
///     }],
///     sources=[{
///         "event_source": "Alerts",
///         "rule_sets": [{
///             "rules": [{
///                 "property_path": "properties.metadata.severity",
///                 "operator": "Equals",
///                 "expected_value": "High",
///                 "property_type": "String",
///             }],
///         }],
///     }],
///     scopes=[f"/subscriptions/{current.subscription_id}"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleEventHubNamespace = new Azure.EventHub.EventHubNamespace("example", new()
///     {
///         Name = "example-namespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         Capacity = 2,
///     });
///
///     var exampleEventHub = new Azure.EventHub.EventHub("example", new()
///     {
///         Name = "acceptanceTestEventHub",
///         NamespaceName = exampleEventHubNamespace.Name,
///         ResourceGroupName = example.Name,
///         PartitionCount = 2,
///         MessageRetention = 2,
///     });
///
///     var exampleAuthorizationRule = new Azure.EventHub.AuthorizationRule("example", new()
///     {
///         Name = "example-rule",
///         NamespaceName = exampleEventHubNamespace.Name,
///         EventhubName = exampleEventHub.Name,
///         ResourceGroupName = example.Name,
///         Listen = true,
///         Send = false,
///         Manage = false,
///     });
///
///     var exampleAutomation = new Azure.SecurityCenter.Automation("example", new()
///     {
///         Name = "example-automation",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Actions = new[]
///         {
///             new Azure.SecurityCenter.Inputs.AutomationActionArgs
///             {
///                 Type = "EventHub",
///                 ResourceId = exampleEventHub.Id,
///                 ConnectionString = exampleAuthorizationRule.PrimaryConnectionString,
///             },
///         },
///         Sources = new[]
///         {
///             new Azure.SecurityCenter.Inputs.AutomationSourceArgs
///             {
///                 EventSource = "Alerts",
///                 RuleSets = new[]
///                 {
///                     new Azure.SecurityCenter.Inputs.AutomationSourceRuleSetArgs
///                     {
///                         Rules = new[]
///                         {
///                             new Azure.SecurityCenter.Inputs.AutomationSourceRuleSetRuleArgs
///                             {
///                                 PropertyPath = "properties.metadata.severity",
///                                 Operator = "Equals",
///                                 ExpectedValue = "High",
///                                 PropertyType = "String",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Scopes = new[]
///         {
///             $"/subscriptions/{current.Apply(getClientConfigResult => getClientConfigResult.SubscriptionId)}",
///         },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHubNamespace, err := eventhub.NewEventHubNamespace(ctx, "example", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("example-namespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 			Capacity:          pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHub, err := eventhub.NewEventHub(ctx, "example", &eventhub.EventHubArgs{
/// 			Name:              pulumi.String("acceptanceTestEventHub"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			ResourceGroupName: example.Name,
/// 			PartitionCount:    pulumi.Int(2),
/// 			MessageRetention:  pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAuthorizationRule, err := eventhub.NewAuthorizationRule(ctx, "example", &eventhub.AuthorizationRuleArgs{
/// 			Name:              pulumi.String("example-rule"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			EventhubName:      exampleEventHub.Name,
/// 			ResourceGroupName: example.Name,
/// 			Listen:            pulumi.Bool(true),
/// 			Send:              pulumi.Bool(false),
/// 			Manage:            pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securitycenter.NewAutomation(ctx, "example", &securitycenter.AutomationArgs{
/// 			Name:              pulumi.String("example-automation"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Actions: securitycenter.AutomationActionArray{
/// 				&securitycenter.AutomationActionArgs{
/// 					Type:             pulumi.String("EventHub"),
/// 					ResourceId:       exampleEventHub.ID(),
/// 					ConnectionString: exampleAuthorizationRule.PrimaryConnectionString,
/// 				},
/// 			},
/// 			Sources: securitycenter.AutomationSourceArray{
/// 				&securitycenter.AutomationSourceArgs{
/// 					EventSource: pulumi.String("Alerts"),
/// 					RuleSets: securitycenter.AutomationSourceRuleSetArray{
/// 						&securitycenter.AutomationSourceRuleSetArgs{
/// 							Rules: securitycenter.AutomationSourceRuleSetRuleArray{
/// 								&securitycenter.AutomationSourceRuleSetRuleArgs{
/// 									PropertyPath:  pulumi.String("properties.metadata.severity"),
/// 									Operator:      pulumi.String("Equals"),
/// 									ExpectedValue: pulumi.String("High"),
/// 									PropertyType:  pulumi.String("String"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.Sprintf("/subscriptions/%v", current.SubscriptionId),
/// 			},
/// 		})
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
/// import com.pulumi.azure.eventhub.EventHub;
/// import com.pulumi.azure.eventhub.EventHubArgs;
/// import com.pulumi.azure.eventhub.AuthorizationRule;
/// import com.pulumi.azure.eventhub.AuthorizationRuleArgs;
/// import com.pulumi.azure.securitycenter.Automation;
/// import com.pulumi.azure.securitycenter.AutomationArgs;
/// import com.pulumi.azure.securitycenter.inputs.AutomationActionArgs;
/// import com.pulumi.azure.securitycenter.inputs.AutomationSourceArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("example-namespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .capacity(2)
///             .build());
///
///         var exampleEventHub = new EventHub("exampleEventHub", EventHubArgs.builder()
///             .name("acceptanceTestEventHub")
///             .namespaceName(exampleEventHubNamespace.name())
///             .resourceGroupName(example.name())
///             .partitionCount(2)
///             .messageRetention(2)
///             .build());
///
///         var exampleAuthorizationRule = new AuthorizationRule("exampleAuthorizationRule", AuthorizationRuleArgs.builder()
///             .name("example-rule")
///             .namespaceName(exampleEventHubNamespace.name())
///             .eventhubName(exampleEventHub.name())
///             .resourceGroupName(example.name())
///             .listen(true)
///             .send(false)
///             .manage(false)
///             .build());
///
///         var exampleAutomation = new Automation("exampleAutomation", AutomationArgs.builder()
///             .name("example-automation")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .actions(AutomationActionArgs.builder()
///                 .type("EventHub")
///                 .resourceId(exampleEventHub.id())
///                 .connectionString(exampleAuthorizationRule.primaryConnectionString())
///                 .build())
///             .sources(AutomationSourceArgs.builder()
///                 .eventSource("Alerts")
///                 .ruleSets(AutomationSourceRuleSetArgs.builder()
///                     .rules(AutomationSourceRuleSetRuleArgs.builder()
///                         .propertyPath("properties.metadata.severity")
///                         .operator("Equals")
///                         .expectedValue("High")
///                         .propertyType("String")
///                         .build())
///                     .build())
///                 .build())
///             .scopes(String.format("/subscriptions/%s", current.subscriptionId()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleEventHubNamespace:
///     type: azure:eventhub:EventHubNamespace
///     name: example
///     properties:
///       name: example-namespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       capacity: 2
///   exampleEventHub:
///     type: azure:eventhub:EventHub
///     name: example
///     properties:
///       name: acceptanceTestEventHub
///       namespaceName: ${exampleEventHubNamespace.name}
///       resourceGroupName: ${example.name}
///       partitionCount: 2
///       messageRetention: 2
///   exampleAuthorizationRule:
///     type: azure:eventhub:AuthorizationRule
///     name: example
///     properties:
///       name: example-rule
///       namespaceName: ${exampleEventHubNamespace.name}
///       eventhubName: ${exampleEventHub.name}
///       resourceGroupName: ${example.name}
///       listen: true
///       send: false
///       manage: false
///   exampleAutomation:
///     type: azure:securitycenter:Automation
///     name: example
///     properties:
///       name: example-automation
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       actions:
///         - type: EventHub
///           resourceId: ${exampleEventHub.id}
///           connectionString: ${exampleAuthorizationRule.primaryConnectionString}
///       sources:
///         - eventSource: Alerts
///           ruleSets:
///             - rules:
///                 - propertyPath: properties.metadata.severity
///                   operator: Equals
///                   expectedValue: High
///                   propertyType: String
///       scopes:
///         - /subscriptions/${current.subscriptionId}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Security` - 2019-01-01-preview
///
/// ## Import
///
/// Security Center Automations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:securitycenter/automation:Automation example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Security/automations/automation1
/// ```
class Automation extends pulumi.CustomResource {
  /// One or more `action` blocks as defined below. An `action` tells this automation where the data is to be sent to upon being evaluated by the rules in the `source`.
  late final pulumi.Output<List<Map<String, dynamic>>> actions;

  /// Specifies the description for the Security Center Automation.
  late final pulumi.Output<String?> description;

  /// Boolean to enable or disable this Security Center Automation. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// The Azure Region where the Security Center Automation should exist. Changing this forces a new Security Center Automation to be created.
  late final pulumi.Output<String> location;

  /// The name which should be used for this Security Center Automation. Changing this forces a new Security Center Automation to be created.
  ///
  /// &gt; **Note:** For the automation to appear in Azure Portal correctly under Microsoft Defender for Cloud &gt; Environment Settings &gt; Account &gt; Continuous Export, either `ExportToWorkspace` or `ExportToEventHub` must be used.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the Security Center Automation should exist. Changing this forces a new Security Center Automation to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A list of scopes on which the automation logic is applied, at least one is required. Supported scopes are a subscription (in this format `/subscriptions/00000000-0000-0000-0000-000000000000`) or a resource group under that subscription (in the format `/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example`). The automation will only apply on defined scopes.
  late final pulumi.Output<List<String>> scopes;

  /// One or more `source` blocks as defined below. A `source` defines what data types will be processed and a set of rules to filter that data.
  late final pulumi.Output<List<Map<String, dynamic>>> sources;

  /// A mapping of tags assigned to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Automation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Automation]. {@macro pulumi_securitycenter_automation_automation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Automation(
    String name, {
    AutomationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:securitycenter/automation:Automation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    actions = registerOutput<List<Map<String, dynamic>>>('actions');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scopes = registerOutput<List<String>>('scopes');
    sources = registerOutput<List<Map<String, dynamic>>>('sources');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Automation] resource's state with the given [name] and [id].
  static Automation get(
    String name,
    pulumi.Input<String> id, {
    AutomationState? state,
  }) {
    return Automation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Automation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:securitycenter/automation:Automation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    actions = registerOutput<List<Map<String, dynamic>>>('actions');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scopes = registerOutput<List<String>>('scopes');
    sources = registerOutput<List<Map<String, dynamic>>>('sources');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
