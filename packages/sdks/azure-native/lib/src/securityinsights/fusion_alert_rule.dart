import 'package:pulumi/pulumi.dart' as pulumi;
import 'fusion_alert_rule_args.dart';
import 'system_data_response.dart';

/// Represents Fusion alert rule.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a Fusion alert rule.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fusionAlertRule = new AzureNative.SecurityInsights.FusionAlertRule("fusionAlertRule", new()
///     {
///         AlertRuleTemplateName = "f71aba3d-28fb-450b-b192-4e76a83015c8",
///         Enabled = true,
///         Kind = "Fusion",
///         ResourceGroupName = "myRg",
///         RuleId = "myFirstFusionRule",
///         WorkspaceName = "myWorkspace",
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
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewFusionAlertRule(ctx, "fusionAlertRule", &securityinsights.FusionAlertRuleArgs{
/// 			AlertRuleTemplateName: pulumi.String("f71aba3d-28fb-450b-b192-4e76a83015c8"),
/// 			Enabled:               pulumi.Bool(true),
/// 			Kind:                  pulumi.String("Fusion"),
/// 			ResourceGroupName:     pulumi.String("myRg"),
/// 			RuleId:                pulumi.String("myFirstFusionRule"),
/// 			WorkspaceName:         pulumi.String("myWorkspace"),
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
/// import com.pulumi.azurenative.securityinsights.FusionAlertRule;
/// import com.pulumi.azurenative.securityinsights.FusionAlertRuleArgs;
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
///         var fusionAlertRule = new FusionAlertRule("fusionAlertRule", FusionAlertRuleArgs.builder()
///             .alertRuleTemplateName("f71aba3d-28fb-450b-b192-4e76a83015c8")
///             .enabled(true)
///             .kind("Fusion")
///             .resourceGroupName("myRg")
///             .ruleId("myFirstFusionRule")
///             .workspaceName("myWorkspace")
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
/// const fusionAlertRule = new azure_native.securityinsights.FusionAlertRule("fusionAlertRule", {
///     alertRuleTemplateName: "f71aba3d-28fb-450b-b192-4e76a83015c8",
///     enabled: true,
///     kind: "Fusion",
///     resourceGroupName: "myRg",
///     ruleId: "myFirstFusionRule",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fusion_alert_rule = azure_native.securityinsights.FusionAlertRule("fusionAlertRule",
///     alert_rule_template_name="f71aba3d-28fb-450b-b192-4e76a83015c8",
///     enabled=True,
///     kind="Fusion",
///     resource_group_name="myRg",
///     rule_id="myFirstFusionRule",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   fusionAlertRule:
///     type: azure-native:securityinsights:FusionAlertRule
///     properties:
///       alertRuleTemplateName: f71aba3d-28fb-450b-b192-4e76a83015c8
///       enabled: true
///       kind: Fusion
///       resourceGroupName: myRg
///       ruleId: myFirstFusionRule
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates a MicrosoftSecurityIncidentCreation rule.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fusionAlertRule = new AzureNative.SecurityInsights.FusionAlertRule("fusionAlertRule", new()
///     {
///         ResourceGroupName = "myRg",
///         RuleId = "microsoftSecurityIncidentCreationRuleExample",
///         WorkspaceName = "myWorkspace",
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
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewFusionAlertRule(ctx, "fusionAlertRule", &securityinsights.FusionAlertRuleArgs{
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			RuleId:            pulumi.String("microsoftSecurityIncidentCreationRuleExample"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
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
/// import com.pulumi.azurenative.securityinsights.FusionAlertRule;
/// import com.pulumi.azurenative.securityinsights.FusionAlertRuleArgs;
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
///         var fusionAlertRule = new FusionAlertRule("fusionAlertRule", FusionAlertRuleArgs.builder()
///             .resourceGroupName("myRg")
///             .ruleId("microsoftSecurityIncidentCreationRuleExample")
///             .workspaceName("myWorkspace")
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
/// const fusionAlertRule = new azure_native.securityinsights.FusionAlertRule("fusionAlertRule", {
///     resourceGroupName: "myRg",
///     ruleId: "microsoftSecurityIncidentCreationRuleExample",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fusion_alert_rule = azure_native.securityinsights.FusionAlertRule("fusionAlertRule",
///     resource_group_name="myRg",
///     rule_id="microsoftSecurityIncidentCreationRuleExample",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   fusionAlertRule:
///     type: azure-native:securityinsights:FusionAlertRule
///     properties:
///       resourceGroupName: myRg
///       ruleId: microsoftSecurityIncidentCreationRuleExample
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates a Scheduled alert rule.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fusionAlertRule = new AzureNative.SecurityInsights.FusionAlertRule("fusionAlertRule", new()
///     {
///         ResourceGroupName = "myRg",
///         RuleId = "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///         WorkspaceName = "myWorkspace",
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
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewFusionAlertRule(ctx, "fusionAlertRule", &securityinsights.FusionAlertRuleArgs{
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			RuleId:            pulumi.String("73e01a99-5cd7-4139-a149-9f2736ff2ab5"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
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
/// import com.pulumi.azurenative.securityinsights.FusionAlertRule;
/// import com.pulumi.azurenative.securityinsights.FusionAlertRuleArgs;
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
///         var fusionAlertRule = new FusionAlertRule("fusionAlertRule", FusionAlertRuleArgs.builder()
///             .resourceGroupName("myRg")
///             .ruleId("73e01a99-5cd7-4139-a149-9f2736ff2ab5")
///             .workspaceName("myWorkspace")
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
/// const fusionAlertRule = new azure_native.securityinsights.FusionAlertRule("fusionAlertRule", {
///     resourceGroupName: "myRg",
///     ruleId: "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fusion_alert_rule = azure_native.securityinsights.FusionAlertRule("fusionAlertRule",
///     resource_group_name="myRg",
///     rule_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   fusionAlertRule:
///     type: azure-native:securityinsights:FusionAlertRule
///     properties:
///       resourceGroupName: myRg
///       ruleId: 73e01a99-5cd7-4139-a149-9f2736ff2ab5
///       workspaceName: myWorkspace
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
/// $ pulumi import azure-native:securityinsights:FusionAlertRule 73e01a99-5cd7-4139-a149-9f2736ff2ab5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/alertRules/{ruleId}
/// ```
class FusionAlertRule extends pulumi.CustomResource {
  /// The Name of the alert rule template used to create this rule.
  late final pulumi.Output<String> alertRuleTemplateName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The description of the alert rule.
  late final pulumi.Output<String> description;
  /// The display name for alerts created by this alert rule.
  late final pulumi.Output<String> displayName;
  /// Determines whether this alert rule is enabled or disabled.
  late final pulumi.Output<bool> enabled;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The kind of the alert rule
  /// Expected value is 'Fusion'.
  late final pulumi.Output<String> kind;
  /// The last time that this alert has been modified.
  late final pulumi.Output<String> lastModifiedUtc;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The severity for alerts created by this alert rule.
  late final pulumi.Output<String> severity;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tactics of the alert rule
  late final pulumi.Output<List<String>> tactics;
  /// The techniques of the alert rule
  late final pulumi.Output<List<String>> techniques;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FusionAlertRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FusionAlertRule]. {@macro pulumi_securityinsights_fusion_alert_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FusionAlertRule(
    String name, {
    FusionAlertRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:FusionAlertRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertRuleTemplateName = registerOutput<String>('alertRuleTemplateName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    lastModifiedUtc = registerOutput<String>('lastModifiedUtc');
    this.name = registerOutput<String>('name');
    severity = registerOutput<String>('severity');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tactics = registerOutput<List<String>>('tactics');
    techniques = registerOutput<List<String>>('techniques');
    type = registerOutput<String>('type');
  }
}
