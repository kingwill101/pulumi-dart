import 'package:pulumi/pulumi.dart' as pulumi;
import 'smart_detection_rule_args.dart';
import 'smart_detection_rule_state.dart';

/// Manages an Application Insights Smart Detection Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tf-test",
///     location: "West Europe",
/// });
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "tf-test-appinsights",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleSmartDetectionRule = new azure.appinsights.SmartDetectionRule("example", {
///     name: "Slow server response time",
///     applicationInsightsId: exampleInsights.id,
///     enabled: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tf-test",
///     location="West Europe")
/// example_insights = azure.appinsights.Insights("example",
///     name="tf-test-appinsights",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_smart_detection_rule = azure.appinsights.SmartDetectionRule("example",
///     name="Slow server response time",
///     application_insights_id=example_insights.id,
///     enabled=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "tf-test",
///         Location = "West Europe",
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "tf-test-appinsights",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var exampleSmartDetectionRule = new Azure.AppInsights.SmartDetectionRule("example", new()
///     {
///         Name = "Slow server response time",
///         ApplicationInsightsId = exampleInsights.Id,
///         Enabled = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tf-test"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("tf-test-appinsights"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appinsights.NewSmartDetectionRule(ctx, "example", &appinsights.SmartDetectionRuleArgs{
/// 			Name:                  pulumi.String("Slow server response time"),
/// 			ApplicationInsightsId: exampleInsights.ID().ToIDOutput().ToStringOutput(),
/// 			Enabled:               pulumi.Bool(false),
/// 		})
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "tf-test"
///   location = "West Europe"
/// }
/// resource "azure_appinsights_insights" "example" {
///   name                = "tf-test-appinsights"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   application_type    = "web"
/// }
/// resource "azure_appinsights_smartdetectionrule" "example" {
///   name                    = "Slow server response time"
///   application_insights_id = azure_appinsights_insights.example.id
///   enabled                 = false
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
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.appinsights.SmartDetectionRule;
/// import com.pulumi.azure.appinsights.SmartDetectionRuleArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("tf-test")
///             .location("West Europe")
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("tf-test-appinsights")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleSmartDetectionRule = new SmartDetectionRule("exampleSmartDetectionRule", SmartDetectionRuleArgs.builder()
///             .name("Slow server response time")
///             .applicationInsightsId(exampleInsights.id())
///             .enabled(false)
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
///       name: tf-test
///       location: West Europe
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: tf-test-appinsights
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleSmartDetectionRule:
///     type: azure:appinsights:SmartDetectionRule
///     name: example
///     properties:
///       name: Slow server response time
///       applicationInsightsId: ${exampleInsights.id}
///       enabled: false
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2015-05-01
///
/// ## Import
///
/// Application Insights Smart Detection Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appinsights/smartDetectionRule:SmartDetectionRule rule1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Insights/components/mycomponent1/proactiveDetectionConfigs/myrule1
/// ```
class SmartDetectionRule extends pulumi.CustomResource {
  /// Specifies a list of additional recipients that will be sent emails on this Application Insights Smart Detection Rule.
  ///
  /// &gt; **Note:** At least one read or write permission must be defined.
  late final pulumi.Output<List<String>?> additionalEmailRecipients;
  /// The ID of the Application Insights component on which the Smart Detection Rule operates. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationInsightsId;
  /// Is the Application Insights Smart Detection Rule enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Specifies the name of the Application Insights Smart Detection Rule. Valid values include `Slow page load time`, `Slow server response time`, `Potential memory leak detected`, `Potential security issue detected`, `Long dependency duration`, `Degradation in server response time`, `Degradation in dependency duration`, `Degradation in trace severity ratio`, `Abnormal rise in exception volume`, `Abnormal rise in daily data volume`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Do emails get sent to subscription owners? Defaults to `true`.
  late final pulumi.Output<bool?> sendEmailsToSubscriptionOwners;

  /// Creates a new [SmartDetectionRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SmartDetectionRule]. {@macro pulumi_appinsights_smart_detection_rule_smart_detection_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SmartDetectionRule(
    String name, {
    SmartDetectionRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appinsights/smartDetectionRule:SmartDetectionRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    additionalEmailRecipients = registerOutput<List<String>?>('additionalEmailRecipients', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    applicationInsightsId = registerOutput<String>('applicationInsightsId');
    enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    sendEmailsToSubscriptionOwners = registerOutput<bool?>('sendEmailsToSubscriptionOwners');
  }

  /// Gets an existing [SmartDetectionRule] resource's state with the given [name] and [id].
  static SmartDetectionRule get(
    String name,
    pulumi.Input<String> id, {
    SmartDetectionRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SmartDetectionRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SmartDetectionRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appinsights/smartDetectionRule:SmartDetectionRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalEmailRecipients = registerOutput<List<String>?>('additionalEmailRecipients', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    applicationInsightsId = registerOutput<String>('applicationInsightsId');
    enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    sendEmailsToSubscriptionOwners = registerOutput<bool?>('sendEmailsToSubscriptionOwners');
  }

  /// Creates a typed reference to an existing [SmartDetectionRule] resource.
  SmartDetectionRule.reference(String urn)
    : super(
        'azure:appinsights/smartDetectionRule:SmartDetectionRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    additionalEmailRecipients = registerOutput<List<String>?>('additionalEmailRecipients', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    applicationInsightsId = registerOutput<String>('applicationInsightsId');
    enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    sendEmailsToSubscriptionOwners = registerOutput<bool?>('sendEmailsToSubscriptionOwners');
  }
}
