import 'package:pulumi/pulumi.dart' as pulumi;
import 'microsoft_security_incident_creation_alert_rule_args.dart';
import 'system_data_response.dart';

/// Represents MicrosoftSecurityIncidentCreation rule.
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
///     var microsoftSecurityIncidentCreationAlertRule = new AzureNative.SecurityInsights.MicrosoftSecurityIncidentCreationAlertRule("microsoftSecurityIncidentCreationAlertRule", new()
///     {
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
/// 		_, err := securityinsights.NewMicrosoftSecurityIncidentCreationAlertRule(ctx, "microsoftSecurityIncidentCreationAlertRule", &securityinsights.MicrosoftSecurityIncidentCreationAlertRuleArgs{
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			RuleId:            pulumi.String("myFirstFusionRule"),
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
/// import com.pulumi.azurenative.securityinsights.MicrosoftSecurityIncidentCreationAlertRule;
/// import com.pulumi.azurenative.securityinsights.MicrosoftSecurityIncidentCreationAlertRuleArgs;
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
///         var microsoftSecurityIncidentCreationAlertRule = new MicrosoftSecurityIncidentCreationAlertRule("microsoftSecurityIncidentCreationAlertRule", MicrosoftSecurityIncidentCreationAlertRuleArgs.builder()
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
/// const microsoftSecurityIncidentCreationAlertRule = new azure_native.securityinsights.MicrosoftSecurityIncidentCreationAlertRule("microsoftSecurityIncidentCreationAlertRule", {
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
/// microsoft_security_incident_creation_alert_rule = azure_native.securityinsights.MicrosoftSecurityIncidentCreationAlertRule("microsoftSecurityIncidentCreationAlertRule",
///     resource_group_name="myRg",
///     rule_id="myFirstFusionRule",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   microsoftSecurityIncidentCreationAlertRule:
///     type: azure-native:securityinsights:MicrosoftSecurityIncidentCreationAlertRule
///     properties:
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
///     var microsoftSecurityIncidentCreationAlertRule = new AzureNative.SecurityInsights.MicrosoftSecurityIncidentCreationAlertRule("microsoftSecurityIncidentCreationAlertRule", new()
///     {
///         DisplayName = "testing displayname",
///         Enabled = true,
///         Kind = "MicrosoftSecurityIncidentCreation",
///         ProductFilter = AzureNative.SecurityInsights.MicrosoftSecurityProductName.Microsoft_Cloud_App_Security,
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
/// 		_, err := securityinsights.NewMicrosoftSecurityIncidentCreationAlertRule(ctx, "microsoftSecurityIncidentCreationAlertRule", &securityinsights.MicrosoftSecurityIncidentCreationAlertRuleArgs{
/// 			DisplayName:       pulumi.String("testing displayname"),
/// 			Enabled:           pulumi.Bool(true),
/// 			Kind:              pulumi.String("MicrosoftSecurityIncidentCreation"),
/// 			ProductFilter:     pulumi.String(securityinsights.MicrosoftSecurityProductName_Microsoft_Cloud_App_Security),
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
/// import com.pulumi.azurenative.securityinsights.MicrosoftSecurityIncidentCreationAlertRule;
/// import com.pulumi.azurenative.securityinsights.MicrosoftSecurityIncidentCreationAlertRuleArgs;
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
///         var microsoftSecurityIncidentCreationAlertRule = new MicrosoftSecurityIncidentCreationAlertRule("microsoftSecurityIncidentCreationAlertRule", MicrosoftSecurityIncidentCreationAlertRuleArgs.builder()
///             .displayName("testing displayname")
///             .enabled(true)
///             .kind("MicrosoftSecurityIncidentCreation")
///             .productFilter("Microsoft Cloud App Security")
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
/// const microsoftSecurityIncidentCreationAlertRule = new azure_native.securityinsights.MicrosoftSecurityIncidentCreationAlertRule("microsoftSecurityIncidentCreationAlertRule", {
///     displayName: "testing displayname",
///     enabled: true,
///     kind: "MicrosoftSecurityIncidentCreation",
///     productFilter: azure_native.securityinsights.MicrosoftSecurityProductName.Microsoft_Cloud_App_Security,
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
/// microsoft_security_incident_creation_alert_rule = azure_native.securityinsights.MicrosoftSecurityIncidentCreationAlertRule("microsoftSecurityIncidentCreationAlertRule",
///     display_name="testing displayname",
///     enabled=True,
///     kind="MicrosoftSecurityIncidentCreation",
///     product_filter=azure_native.securityinsights.MicrosoftSecurityProductName.MICROSOFT_CLOUD_APP_SECURITY,
///     resource_group_name="myRg",
///     rule_id="microsoftSecurityIncidentCreationRuleExample",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   microsoftSecurityIncidentCreationAlertRule:
///     type: azure-native:securityinsights:MicrosoftSecurityIncidentCreationAlertRule
///     properties:
///       displayName: testing displayname
///       enabled: true
///       kind: MicrosoftSecurityIncidentCreation
///       productFilter: Microsoft Cloud App Security
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
///     var microsoftSecurityIncidentCreationAlertRule = new AzureNative.SecurityInsights.MicrosoftSecurityIncidentCreationAlertRule("microsoftSecurityIncidentCreationAlertRule", new()
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
/// 		_, err := securityinsights.NewMicrosoftSecurityIncidentCreationAlertRule(ctx, "microsoftSecurityIncidentCreationAlertRule", &securityinsights.MicrosoftSecurityIncidentCreationAlertRuleArgs{
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
/// import com.pulumi.azurenative.securityinsights.MicrosoftSecurityIncidentCreationAlertRule;
/// import com.pulumi.azurenative.securityinsights.MicrosoftSecurityIncidentCreationAlertRuleArgs;
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
///         var microsoftSecurityIncidentCreationAlertRule = new MicrosoftSecurityIncidentCreationAlertRule("microsoftSecurityIncidentCreationAlertRule", MicrosoftSecurityIncidentCreationAlertRuleArgs.builder()
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
/// const microsoftSecurityIncidentCreationAlertRule = new azure_native.securityinsights.MicrosoftSecurityIncidentCreationAlertRule("microsoftSecurityIncidentCreationAlertRule", {
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
/// microsoft_security_incident_creation_alert_rule = azure_native.securityinsights.MicrosoftSecurityIncidentCreationAlertRule("microsoftSecurityIncidentCreationAlertRule",
///     resource_group_name="myRg",
///     rule_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   microsoftSecurityIncidentCreationAlertRule:
///     type: azure-native:securityinsights:MicrosoftSecurityIncidentCreationAlertRule
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
/// $ pulumi import azure-native:securityinsights:MicrosoftSecurityIncidentCreationAlertRule 73e01a99-5cd7-4139-a149-9f2736ff2ab5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/alertRules/{ruleId}
/// ```
class MicrosoftSecurityIncidentCreationAlertRule extends pulumi.CustomResource {
  /// The Name of the alert rule template used to create this rule.
  late final pulumi.Output<String?> alertRuleTemplateName;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The description of the alert rule.
  late final pulumi.Output<String?> description;

  /// The display name for alerts created by this alert rule.
  late final pulumi.Output<String> displayName;

  /// the alerts' displayNames on which the cases will not be generated
  late final pulumi.Output<List<String>?> displayNamesExcludeFilter;

  /// the alerts' displayNames on which the cases will be generated
  late final pulumi.Output<List<String>?> displayNamesFilter;

  /// Determines whether this alert rule is enabled or disabled.
  late final pulumi.Output<bool> enabled;

  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;

  /// The kind of the alert rule
  /// Expected value is 'MicrosoftSecurityIncidentCreation'.
  late final pulumi.Output<String> kind;

  /// The last time that this alert has been modified.
  late final pulumi.Output<String> lastModifiedUtc;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The alerts' productName on which the cases will be generated
  late final pulumi.Output<String> productFilter;

  /// the alerts' severities on which the cases will be generated
  late final pulumi.Output<List<String>?> severitiesFilter;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MicrosoftSecurityIncidentCreationAlertRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MicrosoftSecurityIncidentCreationAlertRule]. {@macro pulumi_securityinsights_microsoft_security_incident_creation_alert_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MicrosoftSecurityIncidentCreationAlertRule(
    String name, {
    MicrosoftSecurityIncidentCreationAlertRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:securityinsights:MicrosoftSecurityIncidentCreationAlertRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alertRuleTemplateName = registerOutput<String?>('alertRuleTemplateName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    displayNamesExcludeFilter = registerOutput<List<String>?>(
      'displayNamesExcludeFilter',
    );
    displayNamesFilter = registerOutput<List<String>?>('displayNamesFilter');
    enabled = registerOutput<bool>('enabled');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    lastModifiedUtc = registerOutput<String>('lastModifiedUtc');
    this.name = registerOutput<String>('name');
    productFilter = registerOutput<String>('productFilter');
    severitiesFilter = registerOutput<List<String>?>('severitiesFilter');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
