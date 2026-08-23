import 'package:pulumi/pulumi.dart' as pulumi;
import 'governance_rule_args.dart';
import 'governance_rule_email_notification_response.dart';
import 'governance_rule_metadata_response.dart';
import 'governance_rule_owner_source_response.dart';
import 'system_data_response.dart';

/// Governance rule over a given scope
///
/// Uses Azure REST API version 2022-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update governance rule over management group scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var governanceRule = new AzureNative.Security.GovernanceRule("governanceRule", new()
///     {
///         ConditionSets = new[]
///         {
///             new Dictionary<string, object?>
///             {
///                 ["conditions"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["operator"] = "In",
///                         ["property"] = "$.AssessmentKey",
///                         ["value"] = "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]",
///                     },
///                 },
///             },
///         },
///         Description = "A rule for a management group",
///         DisplayName = "Management group rule",
///         ExcludedScopes = new[]
///         {
///             "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///         },
///         GovernanceEmailNotification = new AzureNative.Security.Inputs.GovernanceRuleEmailNotificationArgs
///         {
///             DisableManagerEmailNotification = true,
///             DisableOwnerEmailNotification = false,
///         },
///         IsDisabled = false,
///         IsGracePeriod = true,
///         OwnerSource = new AzureNative.Security.Inputs.GovernanceRuleOwnerSourceArgs
///         {
///             Type = AzureNative.Security.GovernanceRuleOwnerSourceType.Manually,
///             Value = "user@contoso.com",
///         },
///         RemediationTimeframe = "7.00:00:00",
///         RuleId = "ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///         RulePriority = 200,
///         RuleType = AzureNative.Security.GovernanceRuleType.Integrated,
///         Scope = "providers/Microsoft.Management/managementGroups/contoso",
///         SourceResourceType = AzureNative.Security.GovernanceRuleSourceResourceType.Assessments,
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewGovernanceRule(ctx, "governanceRule", &security.GovernanceRuleArgs{
/// 			ConditionSets: pulumi.Array{
/// 				pulumi.Any(map[string]interface{}{
/// 					"conditions": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"operator": "In",
/// 							"property": "$.AssessmentKey",
/// 							"value":    "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]",
/// 						},
/// 					},
/// 				}),
/// 			},
/// 			Description: pulumi.String("A rule for a management group"),
/// 			DisplayName: pulumi.String("Management group rule"),
/// 			ExcludedScopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"),
/// 			},
/// 			GovernanceEmailNotification: &security.GovernanceRuleEmailNotificationArgs{
/// 				DisableManagerEmailNotification: pulumi.Bool(true),
/// 				DisableOwnerEmailNotification:   pulumi.Bool(false),
/// 			},
/// 			IsDisabled:    pulumi.Bool(false),
/// 			IsGracePeriod: pulumi.Bool(true),
/// 			OwnerSource: &security.GovernanceRuleOwnerSourceArgs{
/// 				Type:  pulumi.String(security.GovernanceRuleOwnerSourceTypeManually),
/// 				Value: pulumi.String("user@contoso.com"),
/// 			},
/// 			RemediationTimeframe: pulumi.String("7.00:00:00"),
/// 			RuleId:               pulumi.String("ad9a8e26-29d9-4829-bb30-e597a58cdbb8"),
/// 			RulePriority:         pulumi.Int(200),
/// 			RuleType:             pulumi.String(security.GovernanceRuleTypeIntegrated),
/// 			Scope:                pulumi.String("providers/Microsoft.Management/managementGroups/contoso"),
/// 			SourceResourceType:   pulumi.String(security.GovernanceRuleSourceResourceTypeAssessments),
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
/// resource "azure-native_security_governancerule" "governanceRule" {
///   condition_sets = [{
///     "conditions" = [{
///       "operator" = "In"
///       "property" = "$.AssessmentKey"
///       "value"    = "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]"
///     }]
///   }]
///   description     = "A rule for a management group"
///   display_name    = "Management group rule"
///   excluded_scopes = ["/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"]
///   governance_email_notification = {
///     disable_manager_email_notification = true
///     disable_owner_email_notification   = false
///   }
///   is_disabled     = false
///   is_grace_period = true
///   owner_source = {
///     type  = "Manually"
///     value = "user@contoso.com"
///   }
///   remediation_timeframe = "7.00:00:00"
///   rule_id               = "ad9a8e26-29d9-4829-bb30-e597a58cdbb8"
///   rule_priority         = 200
///   rule_type             = "Integrated"
///   scope                 = "providers/Microsoft.Management/managementGroups/contoso"
///   source_resource_type  = "Assessments"
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
/// import com.pulumi.azurenative.security.GovernanceRule;
/// import com.pulumi.azurenative.security.GovernanceRuleArgs;
/// import com.pulumi.azurenative.security.inputs.GovernanceRuleEmailNotificationArgs;
/// import com.pulumi.azurenative.security.inputs.GovernanceRuleOwnerSourceArgs;
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
///         var governanceRule = new GovernanceRule("governanceRule", GovernanceRuleArgs.builder()
///             .conditionSets(Map.of("conditions", Arrays.asList(Map.ofEntries(
///                 Map.entry("operator", "In"),
///                 Map.entry("property", "$.AssessmentKey"),
///                 Map.entry("value", "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]")
///             ))))
///             .description("A rule for a management group")
///             .displayName("Management group rule")
///             .excludedScopes("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23")
///             .governanceEmailNotification(GovernanceRuleEmailNotificationArgs.builder()
///                 .disableManagerEmailNotification(true)
///                 .disableOwnerEmailNotification(false)
///                 .build())
///             .isDisabled(false)
///             .isGracePeriod(true)
///             .ownerSource(GovernanceRuleOwnerSourceArgs.builder()
///                 .type("Manually")
///                 .value("user@contoso.com")
///                 .build())
///             .remediationTimeframe("7.00:00:00")
///             .ruleId("ad9a8e26-29d9-4829-bb30-e597a58cdbb8")
///             .rulePriority(200)
///             .ruleType("Integrated")
///             .scope("providers/Microsoft.Management/managementGroups/contoso")
///             .sourceResourceType("Assessments")
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
/// const governanceRule = new azure_native.security.GovernanceRule("governanceRule", {
///     conditionSets: [{
///         conditions: [{
///             operator: "In",
///             property: "$.AssessmentKey",
///             value: "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]",
///         }],
///     }],
///     description: "A rule for a management group",
///     displayName: "Management group rule",
///     excludedScopes: ["/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"],
///     governanceEmailNotification: {
///         disableManagerEmailNotification: true,
///         disableOwnerEmailNotification: false,
///     },
///     isDisabled: false,
///     isGracePeriod: true,
///     ownerSource: {
///         type: azure_native.security.GovernanceRuleOwnerSourceType.Manually,
///         value: "user@contoso.com",
///     },
///     remediationTimeframe: "7.00:00:00",
///     ruleId: "ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///     rulePriority: 200,
///     ruleType: azure_native.security.GovernanceRuleType.Integrated,
///     scope: "providers/Microsoft.Management/managementGroups/contoso",
///     sourceResourceType: azure_native.security.GovernanceRuleSourceResourceType.Assessments,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// governance_rule = azure_native.security.GovernanceRule("governanceRule",
///     condition_sets=[{
///         "conditions": [{
///             "operator": "In",
///             "property": "$.AssessmentKey",
///             "value": "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]",
///         }],
///     }],
///     description="A rule for a management group",
///     display_name="Management group rule",
///     excluded_scopes=["/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"],
///     governance_email_notification={
///         "disable_manager_email_notification": True,
///         "disable_owner_email_notification": False,
///     },
///     is_disabled=False,
///     is_grace_period=True,
///     owner_source={
///         "type": azure_native.security.GovernanceRuleOwnerSourceType.MANUALLY,
///         "value": "user@contoso.com",
///     },
///     remediation_timeframe="7.00:00:00",
///     rule_id="ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///     rule_priority=200,
///     rule_type=azure_native.security.GovernanceRuleType.INTEGRATED,
///     scope="providers/Microsoft.Management/managementGroups/contoso",
///     source_resource_type=azure_native.security.GovernanceRuleSourceResourceType.ASSESSMENTS)
///
/// ```
///
/// ```yaml
/// resources:
///   governanceRule:
///     type: azure-native:security:GovernanceRule
///     properties:
///       conditionSets:
///         - conditions:
///             - operator: In
///               property: $.AssessmentKey
///               value: '["b1cd27e0-4ecc-4246-939f-49c426d9d72f", "fe83f80b-073d-4ccf-93d9-6797eb870201"]'
///       description: A rule for a management group
///       displayName: Management group rule
///       excludedScopes:
///         - /subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23
///       governanceEmailNotification:
///         disableManagerEmailNotification: true
///         disableOwnerEmailNotification: false
///       isDisabled: false
///       isGracePeriod: true
///       ownerSource:
///         type: Manually
///         value: user@contoso.com
///       remediationTimeframe: 7.00:00:00
///       ruleId: ad9a8e26-29d9-4829-bb30-e597a58cdbb8
///       rulePriority: 200
///       ruleType: Integrated
///       scope: providers/Microsoft.Management/managementGroups/contoso
///       sourceResourceType: Assessments
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update governance rule over security connector scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var governanceRule = new AzureNative.Security.GovernanceRule("governanceRule", new()
///     {
///         ConditionSets = new[]
///         {
///             new Dictionary<string, object?>
///             {
///                 ["conditions"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["operator"] = "In",
///                         ["property"] = "$.AssessmentKey",
///                         ["value"] = "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]",
///                     },
///                 },
///             },
///         },
///         Description = "A rule on critical GCP recommendations",
///         DisplayName = "GCP Admin's rule",
///         GovernanceEmailNotification = new AzureNative.Security.Inputs.GovernanceRuleEmailNotificationArgs
///         {
///             DisableManagerEmailNotification = true,
///             DisableOwnerEmailNotification = false,
///         },
///         IsDisabled = false,
///         IsGracePeriod = true,
///         OwnerSource = new AzureNative.Security.Inputs.GovernanceRuleOwnerSourceArgs
///         {
///             Type = AzureNative.Security.GovernanceRuleOwnerSourceType.Manually,
///             Value = "user@contoso.com",
///         },
///         RemediationTimeframe = "7.00:00:00",
///         RuleId = "ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///         RulePriority = 200,
///         RuleType = AzureNative.Security.GovernanceRuleType.Integrated,
///         Scope = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector",
///         SourceResourceType = AzureNative.Security.GovernanceRuleSourceResourceType.Assessments,
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewGovernanceRule(ctx, "governanceRule", &security.GovernanceRuleArgs{
/// 			ConditionSets: pulumi.Array{
/// 				pulumi.Any(map[string]interface{}{
/// 					"conditions": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"operator": "In",
/// 							"property": "$.AssessmentKey",
/// 							"value":    "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]",
/// 						},
/// 					},
/// 				}),
/// 			},
/// 			Description: pulumi.String("A rule on critical GCP recommendations"),
/// 			DisplayName: pulumi.String("GCP Admin's rule"),
/// 			GovernanceEmailNotification: &security.GovernanceRuleEmailNotificationArgs{
/// 				DisableManagerEmailNotification: pulumi.Bool(true),
/// 				DisableOwnerEmailNotification:   pulumi.Bool(false),
/// 			},
/// 			IsDisabled:    pulumi.Bool(false),
/// 			IsGracePeriod: pulumi.Bool(true),
/// 			OwnerSource: &security.GovernanceRuleOwnerSourceArgs{
/// 				Type:  pulumi.String(security.GovernanceRuleOwnerSourceTypeManually),
/// 				Value: pulumi.String("user@contoso.com"),
/// 			},
/// 			RemediationTimeframe: pulumi.String("7.00:00:00"),
/// 			RuleId:               pulumi.String("ad9a8e26-29d9-4829-bb30-e597a58cdbb8"),
/// 			RulePriority:         pulumi.Int(200),
/// 			RuleType:             pulumi.String(security.GovernanceRuleTypeIntegrated),
/// 			Scope:                pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector"),
/// 			SourceResourceType:   pulumi.String(security.GovernanceRuleSourceResourceTypeAssessments),
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
/// resource "azure-native_security_governancerule" "governanceRule" {
///   condition_sets = [{
///     "conditions" = [{
///       "operator" = "In"
///       "property" = "$.AssessmentKey"
///       "value"    = "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]"
///     }]
///   }]
///   description  = "A rule on critical GCP recommendations"
///   display_name = "GCP Admin's rule"
///   governance_email_notification = {
///     disable_manager_email_notification = true
///     disable_owner_email_notification   = false
///   }
///   is_disabled     = false
///   is_grace_period = true
///   owner_source = {
///     type  = "Manually"
///     value = "user@contoso.com"
///   }
///   remediation_timeframe = "7.00:00:00"
///   rule_id               = "ad9a8e26-29d9-4829-bb30-e597a58cdbb8"
///   rule_priority         = 200
///   rule_type             = "Integrated"
///   scope                 = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector"
///   source_resource_type  = "Assessments"
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
/// import com.pulumi.azurenative.security.GovernanceRule;
/// import com.pulumi.azurenative.security.GovernanceRuleArgs;
/// import com.pulumi.azurenative.security.inputs.GovernanceRuleEmailNotificationArgs;
/// import com.pulumi.azurenative.security.inputs.GovernanceRuleOwnerSourceArgs;
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
///         var governanceRule = new GovernanceRule("governanceRule", GovernanceRuleArgs.builder()
///             .conditionSets(Map.of("conditions", Arrays.asList(Map.ofEntries(
///                 Map.entry("operator", "In"),
///                 Map.entry("property", "$.AssessmentKey"),
///                 Map.entry("value", "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]")
///             ))))
///             .description("A rule on critical GCP recommendations")
///             .displayName("GCP Admin's rule")
///             .governanceEmailNotification(GovernanceRuleEmailNotificationArgs.builder()
///                 .disableManagerEmailNotification(true)
///                 .disableOwnerEmailNotification(false)
///                 .build())
///             .isDisabled(false)
///             .isGracePeriod(true)
///             .ownerSource(GovernanceRuleOwnerSourceArgs.builder()
///                 .type("Manually")
///                 .value("user@contoso.com")
///                 .build())
///             .remediationTimeframe("7.00:00:00")
///             .ruleId("ad9a8e26-29d9-4829-bb30-e597a58cdbb8")
///             .rulePriority(200)
///             .ruleType("Integrated")
///             .scope("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector")
///             .sourceResourceType("Assessments")
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
/// const governanceRule = new azure_native.security.GovernanceRule("governanceRule", {
///     conditionSets: [{
///         conditions: [{
///             operator: "In",
///             property: "$.AssessmentKey",
///             value: "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]",
///         }],
///     }],
///     description: "A rule on critical GCP recommendations",
///     displayName: "GCP Admin's rule",
///     governanceEmailNotification: {
///         disableManagerEmailNotification: true,
///         disableOwnerEmailNotification: false,
///     },
///     isDisabled: false,
///     isGracePeriod: true,
///     ownerSource: {
///         type: azure_native.security.GovernanceRuleOwnerSourceType.Manually,
///         value: "user@contoso.com",
///     },
///     remediationTimeframe: "7.00:00:00",
///     ruleId: "ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///     rulePriority: 200,
///     ruleType: azure_native.security.GovernanceRuleType.Integrated,
///     scope: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector",
///     sourceResourceType: azure_native.security.GovernanceRuleSourceResourceType.Assessments,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// governance_rule = azure_native.security.GovernanceRule("governanceRule",
///     condition_sets=[{
///         "conditions": [{
///             "operator": "In",
///             "property": "$.AssessmentKey",
///             "value": "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]",
///         }],
///     }],
///     description="A rule on critical GCP recommendations",
///     display_name="GCP Admin's rule",
///     governance_email_notification={
///         "disable_manager_email_notification": True,
///         "disable_owner_email_notification": False,
///     },
///     is_disabled=False,
///     is_grace_period=True,
///     owner_source={
///         "type": azure_native.security.GovernanceRuleOwnerSourceType.MANUALLY,
///         "value": "user@contoso.com",
///     },
///     remediation_timeframe="7.00:00:00",
///     rule_id="ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///     rule_priority=200,
///     rule_type=azure_native.security.GovernanceRuleType.INTEGRATED,
///     scope="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector",
///     source_resource_type=azure_native.security.GovernanceRuleSourceResourceType.ASSESSMENTS)
///
/// ```
///
/// ```yaml
/// resources:
///   governanceRule:
///     type: azure-native:security:GovernanceRule
///     properties:
///       conditionSets:
///         - conditions:
///             - operator: In
///               property: $.AssessmentKey
///               value: '["b1cd27e0-4ecc-4246-939f-49c426d9d72f", "fe83f80b-073d-4ccf-93d9-6797eb870201"]'
///       description: A rule on critical GCP recommendations
///       displayName: GCP Admin's rule
///       governanceEmailNotification:
///         disableManagerEmailNotification: true
///         disableOwnerEmailNotification: false
///       isDisabled: false
///       isGracePeriod: true
///       ownerSource:
///         type: Manually
///         value: user@contoso.com
///       remediationTimeframe: 7.00:00:00
///       ruleId: ad9a8e26-29d9-4829-bb30-e597a58cdbb8
///       rulePriority: 200
///       ruleType: Integrated
///       scope: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector
///       sourceResourceType: Assessments
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update governance rule over subscription scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var governanceRule = new AzureNative.Security.GovernanceRule("governanceRule", new()
///     {
///         ConditionSets = new[]
///         {
///             new Dictionary<string, object?>
///             {
///                 ["conditions"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["operator"] = "In",
///                         ["property"] = "$.AssessmentKey",
///                         ["value"] = "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]",
///                     },
///                 },
///             },
///         },
///         Description = "A rule for critical recommendations",
///         DisplayName = "Admin's rule",
///         GovernanceEmailNotification = new AzureNative.Security.Inputs.GovernanceRuleEmailNotificationArgs
///         {
///             DisableManagerEmailNotification = false,
///             DisableOwnerEmailNotification = false,
///         },
///         IsDisabled = false,
///         IsGracePeriod = true,
///         OwnerSource = new AzureNative.Security.Inputs.GovernanceRuleOwnerSourceArgs
///         {
///             Type = AzureNative.Security.GovernanceRuleOwnerSourceType.Manually,
///             Value = "user@contoso.com",
///         },
///         RemediationTimeframe = "7.00:00:00",
///         RuleId = "ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///         RulePriority = 200,
///         RuleType = AzureNative.Security.GovernanceRuleType.Integrated,
///         Scope = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///         SourceResourceType = AzureNative.Security.GovernanceRuleSourceResourceType.Assessments,
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewGovernanceRule(ctx, "governanceRule", &security.GovernanceRuleArgs{
/// 			ConditionSets: pulumi.Array{
/// 				pulumi.Any(map[string]interface{}{
/// 					"conditions": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"operator": "In",
/// 							"property": "$.AssessmentKey",
/// 							"value":    "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]",
/// 						},
/// 					},
/// 				}),
/// 			},
/// 			Description: pulumi.String("A rule for critical recommendations"),
/// 			DisplayName: pulumi.String("Admin's rule"),
/// 			GovernanceEmailNotification: &security.GovernanceRuleEmailNotificationArgs{
/// 				DisableManagerEmailNotification: pulumi.Bool(false),
/// 				DisableOwnerEmailNotification:   pulumi.Bool(false),
/// 			},
/// 			IsDisabled:    pulumi.Bool(false),
/// 			IsGracePeriod: pulumi.Bool(true),
/// 			OwnerSource: &security.GovernanceRuleOwnerSourceArgs{
/// 				Type:  pulumi.String(security.GovernanceRuleOwnerSourceTypeManually),
/// 				Value: pulumi.String("user@contoso.com"),
/// 			},
/// 			RemediationTimeframe: pulumi.String("7.00:00:00"),
/// 			RuleId:               pulumi.String("ad9a8e26-29d9-4829-bb30-e597a58cdbb8"),
/// 			RulePriority:         pulumi.Int(200),
/// 			RuleType:             pulumi.String(security.GovernanceRuleTypeIntegrated),
/// 			Scope:                pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"),
/// 			SourceResourceType:   pulumi.String(security.GovernanceRuleSourceResourceTypeAssessments),
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
/// resource "azure-native_security_governancerule" "governanceRule" {
///   condition_sets = [{
///     "conditions" = [{
///       "operator" = "In"
///       "property" = "$.AssessmentKey"
///       "value"    = "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]"
///     }]
///   }]
///   description  = "A rule for critical recommendations"
///   display_name = "Admin's rule"
///   governance_email_notification = {
///     disable_manager_email_notification = false
///     disable_owner_email_notification   = false
///   }
///   is_disabled     = false
///   is_grace_period = true
///   owner_source = {
///     type  = "Manually"
///     value = "user@contoso.com"
///   }
///   remediation_timeframe = "7.00:00:00"
///   rule_id               = "ad9a8e26-29d9-4829-bb30-e597a58cdbb8"
///   rule_priority         = 200
///   rule_type             = "Integrated"
///   scope                 = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"
///   source_resource_type  = "Assessments"
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
/// import com.pulumi.azurenative.security.GovernanceRule;
/// import com.pulumi.azurenative.security.GovernanceRuleArgs;
/// import com.pulumi.azurenative.security.inputs.GovernanceRuleEmailNotificationArgs;
/// import com.pulumi.azurenative.security.inputs.GovernanceRuleOwnerSourceArgs;
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
///         var governanceRule = new GovernanceRule("governanceRule", GovernanceRuleArgs.builder()
///             .conditionSets(Map.of("conditions", Arrays.asList(Map.ofEntries(
///                 Map.entry("operator", "In"),
///                 Map.entry("property", "$.AssessmentKey"),
///                 Map.entry("value", "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]")
///             ))))
///             .description("A rule for critical recommendations")
///             .displayName("Admin's rule")
///             .governanceEmailNotification(GovernanceRuleEmailNotificationArgs.builder()
///                 .disableManagerEmailNotification(false)
///                 .disableOwnerEmailNotification(false)
///                 .build())
///             .isDisabled(false)
///             .isGracePeriod(true)
///             .ownerSource(GovernanceRuleOwnerSourceArgs.builder()
///                 .type("Manually")
///                 .value("user@contoso.com")
///                 .build())
///             .remediationTimeframe("7.00:00:00")
///             .ruleId("ad9a8e26-29d9-4829-bb30-e597a58cdbb8")
///             .rulePriority(200)
///             .ruleType("Integrated")
///             .scope("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23")
///             .sourceResourceType("Assessments")
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
/// const governanceRule = new azure_native.security.GovernanceRule("governanceRule", {
///     conditionSets: [{
///         conditions: [{
///             operator: "In",
///             property: "$.AssessmentKey",
///             value: "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]",
///         }],
///     }],
///     description: "A rule for critical recommendations",
///     displayName: "Admin's rule",
///     governanceEmailNotification: {
///         disableManagerEmailNotification: false,
///         disableOwnerEmailNotification: false,
///     },
///     isDisabled: false,
///     isGracePeriod: true,
///     ownerSource: {
///         type: azure_native.security.GovernanceRuleOwnerSourceType.Manually,
///         value: "user@contoso.com",
///     },
///     remediationTimeframe: "7.00:00:00",
///     ruleId: "ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///     rulePriority: 200,
///     ruleType: azure_native.security.GovernanceRuleType.Integrated,
///     scope: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///     sourceResourceType: azure_native.security.GovernanceRuleSourceResourceType.Assessments,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// governance_rule = azure_native.security.GovernanceRule("governanceRule",
///     condition_sets=[{
///         "conditions": [{
///             "operator": "In",
///             "property": "$.AssessmentKey",
///             "value": "[\"b1cd27e0-4ecc-4246-939f-49c426d9d72f\", \"fe83f80b-073d-4ccf-93d9-6797eb870201\"]",
///         }],
///     }],
///     description="A rule for critical recommendations",
///     display_name="Admin's rule",
///     governance_email_notification={
///         "disable_manager_email_notification": False,
///         "disable_owner_email_notification": False,
///     },
///     is_disabled=False,
///     is_grace_period=True,
///     owner_source={
///         "type": azure_native.security.GovernanceRuleOwnerSourceType.MANUALLY,
///         "value": "user@contoso.com",
///     },
///     remediation_timeframe="7.00:00:00",
///     rule_id="ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///     rule_priority=200,
///     rule_type=azure_native.security.GovernanceRuleType.INTEGRATED,
///     scope="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///     source_resource_type=azure_native.security.GovernanceRuleSourceResourceType.ASSESSMENTS)
///
/// ```
///
/// ```yaml
/// resources:
///   governanceRule:
///     type: azure-native:security:GovernanceRule
///     properties:
///       conditionSets:
///         - conditions:
///             - operator: In
///               property: $.AssessmentKey
///               value: '["b1cd27e0-4ecc-4246-939f-49c426d9d72f", "fe83f80b-073d-4ccf-93d9-6797eb870201"]'
///       description: A rule for critical recommendations
///       displayName: Admin's rule
///       governanceEmailNotification:
///         disableManagerEmailNotification: false
///         disableOwnerEmailNotification: false
///       isDisabled: false
///       isGracePeriod: true
///       ownerSource:
///         type: Manually
///         value: user@contoso.com
///       remediationTimeframe: 7.00:00:00
///       ruleId: ad9a8e26-29d9-4829-bb30-e597a58cdbb8
///       rulePriority: 200
///       ruleType: Integrated
///       scope: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23
///       sourceResourceType: Assessments
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
/// $ pulumi import azure-native:security:GovernanceRule ad9a8e26-29d9-4829-bb30-e597a58cdbb8 /{scope}/providers/Microsoft.Security/governanceRules/{ruleId}
/// ```
class GovernanceRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The governance rule conditionSets - see examples
  late final pulumi.Output<List<Map<String, dynamic>>> conditionSets;
  /// Description of the governance rule
  late final pulumi.Output<String?> description;
  /// Display name of the governance rule
  late final pulumi.Output<String> displayName;
  /// Excluded scopes, filter out the descendants of the scope (on management scopes)
  late final pulumi.Output<List<String>?> excludedScopes;
  /// The email notifications settings for the governance rule, states whether to disable notifications for mangers and owners
  late final pulumi.Output<GovernanceRuleEmailNotificationResponse?> governanceEmailNotification;
  /// Defines whether the rule is management scope rule (master connector as a single scope or management scope)
  late final pulumi.Output<bool?> includeMemberScopes;
  /// Defines whether the rule is active/inactive
  late final pulumi.Output<bool?> isDisabled;
  /// Defines whether there is a grace period on the governance rule
  late final pulumi.Output<bool?> isGracePeriod;
  /// The governance rule metadata
  late final pulumi.Output<GovernanceRuleMetadataResponse?> metadata;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The owner source for the governance rule - e.g. Manually by user@contoso.com - see example
  late final pulumi.Output<GovernanceRuleOwnerSourceResponse> ownerSource;
  /// Governance rule remediation timeframe - this is the time that will affect on the grace-period duration e.g. 7.00:00:00 - means 7 days
  late final pulumi.Output<String?> remediationTimeframe;
  /// The governance rule priority, priority to the lower number. Rules with the same priority on the same scope will not be allowed
  late final pulumi.Output<int> rulePriority;
  /// The rule type of the governance rule, defines the source of the rule e.g. Integrated
  late final pulumi.Output<String> ruleType;
  /// The governance rule source, what the rule affects, e.g. Assessments
  late final pulumi.Output<String> sourceResourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tenantId (GUID)
  late final pulumi.Output<String> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GovernanceRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GovernanceRule]. {@macro pulumi_security_governance_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GovernanceRule(
    String name, {
    GovernanceRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:GovernanceRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    conditionSets = registerOutput<List<Map<String, dynamic>>>('conditionSets');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    excludedScopes = registerOutput<List<String>?>('excludedScopes');
    governanceEmailNotification = registerOutput<GovernanceRuleEmailNotificationResponse?>('governanceEmailNotification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GovernanceRuleEmailNotificationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includeMemberScopes = registerOutput<bool?>('includeMemberScopes');
    isDisabled = registerOutput<bool?>('isDisabled');
    isGracePeriod = registerOutput<bool?>('isGracePeriod');
    metadata = registerOutput<GovernanceRuleMetadataResponse?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GovernanceRuleMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    ownerSource = registerOutput<GovernanceRuleOwnerSourceResponse>('ownerSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GovernanceRuleOwnerSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remediationTimeframe = registerOutput<String?>('remediationTimeframe');
    rulePriority = registerOutput<int>('rulePriority');
    ruleType = registerOutput<String>('ruleType');
    sourceResourceType = registerOutput<String>('sourceResourceType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
