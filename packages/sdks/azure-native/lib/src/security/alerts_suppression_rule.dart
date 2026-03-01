import 'package:pulumi/pulumi.dart' as pulumi;
import 'alerts_suppression_rule_args.dart';
import 'suppression_alerts_scope_response.dart';

/// Describes the suppression rule
///
/// Uses Azure REST API version 2019-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2019-01-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update or create suppression rule for subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var alertsSuppressionRule = new AzureNative.Security.AlertsSuppressionRule("alertsSuppressionRule", new()
///     {
///         AlertType = "IpAnomaly",
///         AlertsSuppressionRuleName = "dismissIpAnomalyAlerts",
///         Comment = "Test VM",
///         ExpirationDateUtc = "2019-12-01T19:50:47.083633Z",
///         Reason = "FalsePositive",
///         State = AzureNative.Security.RuleState.Enabled,
///         SuppressionAlertsScope = new AzureNative.Security.Inputs.SuppressionAlertsScopeArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Security.Inputs.ScopeElementArgs
///                 {
///                     Field = "entities.ip.address",
///                 },
///                 new AzureNative.Security.Inputs.ScopeElementArgs
///                 {
///                     Field = "entities.process.commandline",
///                 },
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewAlertsSuppressionRule(ctx, "alertsSuppressionRule", &security.AlertsSuppressionRuleArgs{
/// 			AlertType:                 pulumi.String("IpAnomaly"),
/// 			AlertsSuppressionRuleName: pulumi.String("dismissIpAnomalyAlerts"),
/// 			Comment:                   pulumi.String("Test VM"),
/// 			ExpirationDateUtc:         pulumi.String("2019-12-01T19:50:47.083633Z"),
/// 			Reason:                    pulumi.String("FalsePositive"),
/// 			State:                     pulumi.String(security.RuleStateEnabled),
/// 			SuppressionAlertsScope: &security.SuppressionAlertsScopeArgs{
/// 				AllOf: security.ScopeElementArray{
/// 					&security.ScopeElementArgs{
/// 						Field: pulumi.String("entities.ip.address"),
/// 					},
/// 					&security.ScopeElementArgs{
/// 						Field: pulumi.String("entities.process.commandline"),
/// 					},
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
/// import com.pulumi.azurenative.security.AlertsSuppressionRule;
/// import com.pulumi.azurenative.security.AlertsSuppressionRuleArgs;
/// import com.pulumi.azurenative.security.inputs.SuppressionAlertsScopeArgs;
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
///         var alertsSuppressionRule = new AlertsSuppressionRule("alertsSuppressionRule", AlertsSuppressionRuleArgs.builder()
///             .alertType("IpAnomaly")
///             .alertsSuppressionRuleName("dismissIpAnomalyAlerts")
///             .comment("Test VM")
///             .expirationDateUtc("2019-12-01T19:50:47.083633Z")
///             .reason("FalsePositive")
///             .state("Enabled")
///             .suppressionAlertsScope(SuppressionAlertsScopeArgs.builder()
///                 .allOf(
///                     ScopeElementArgs.builder()
///                         .field("entities.ip.address")
///                         .build(),
///                     ScopeElementArgs.builder()
///                         .field("entities.process.commandline")
///                         .build())
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
/// const alertsSuppressionRule = new azure_native.security.AlertsSuppressionRule("alertsSuppressionRule", {
///     alertType: "IpAnomaly",
///     alertsSuppressionRuleName: "dismissIpAnomalyAlerts",
///     comment: "Test VM",
///     expirationDateUtc: "2019-12-01T19:50:47.083633Z",
///     reason: "FalsePositive",
///     state: azure_native.security.RuleState.Enabled,
///     suppressionAlertsScope: {
///         allOf: [
///             {
///                 field: "entities.ip.address",
///             },
///             {
///                 field: "entities.process.commandline",
///             },
///         ],
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// alerts_suppression_rule = azure_native.security.AlertsSuppressionRule("alertsSuppressionRule",
///     alert_type="IpAnomaly",
///     alerts_suppression_rule_name="dismissIpAnomalyAlerts",
///     comment="Test VM",
///     expiration_date_utc="2019-12-01T19:50:47.083633Z",
///     reason="FalsePositive",
///     state=azure_native.security.RuleState.ENABLED,
///     suppression_alerts_scope={
///         "all_of": [
///             {
///                 "field": "entities.ip.address",
///             },
///             {
///                 "field": "entities.process.commandline",
///             },
///         ],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   alertsSuppressionRule:
///     type: azure-native:security:AlertsSuppressionRule
///     properties:
///       alertType: IpAnomaly
///       alertsSuppressionRuleName: dismissIpAnomalyAlerts
///       comment: Test VM
///       expirationDateUtc: 2019-12-01T19:50:47.083633Z
///       reason: FalsePositive
///       state: Enabled
///       suppressionAlertsScope:
///         allOf:
///           - field: entities.ip.address
///           - field: entities.process.commandline
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
/// $ pulumi import azure-native:security:AlertsSuppressionRule dismissIpAnomalyAlerts /subscriptions/{subscriptionId}/providers/Microsoft.Security/alertsSuppressionRules/{alertsSuppressionRuleName}
/// ```
class AlertsSuppressionRule extends pulumi.CustomResource {
  /// Type of the alert to automatically suppress. For all alert types, use '*'
  late final pulumi.Output<String> alertType;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Any comment regarding the rule
  late final pulumi.Output<String?> comment;
  /// Expiration date of the rule, if value is not provided or provided as null there will no expiration at all
  late final pulumi.Output<String?> expirationDateUtc;
  /// The last time this rule was modified
  late final pulumi.Output<String> lastModifiedUtc;
  /// Resource name
  late final pulumi.Output<String> name;
  /// The reason for dismissing the alert
  late final pulumi.Output<String> reason;
  /// Possible states of the rule
  late final pulumi.Output<String> state;
  /// The suppression conditions
  late final pulumi.Output<SuppressionAlertsScopeResponse?> suppressionAlertsScope;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [AlertsSuppressionRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertsSuppressionRule]. {@macro pulumi_security_alerts_suppression_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertsSuppressionRule(
    String name, {
    AlertsSuppressionRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:AlertsSuppressionRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alertType = registerOutput<String>('alertType');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.comment = registerOutput<String?>('comment');
    this.expirationDateUtc = registerOutput<String?>('expirationDateUtc');
    this.lastModifiedUtc = registerOutput<String>('lastModifiedUtc');
    this.name = registerOutput<String>('name');
    this.reason = registerOutput<String>('reason');
    this.state = registerOutput<String>('state');
    this.suppressionAlertsScope = registerOutput<SuppressionAlertsScopeResponse?>('suppressionAlertsScope');
    this.type = registerOutput<String>('type');
  }
}
