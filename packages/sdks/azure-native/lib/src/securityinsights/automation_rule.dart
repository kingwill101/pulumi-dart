import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_args.dart';
import 'automation_rule_triggering_logic_response.dart';
import 'client_info_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AutomationRules_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var automationRule = new AzureNative.SecurityInsights.AutomationRule("automationRule", new()
///     {
///         AutomationRuleId = "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///         ResourceGroupName = "myRg",
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
/// 		_, err := securityinsights.NewAutomationRule(ctx, "automationRule", &securityinsights.AutomationRuleArgs{
/// 			AutomationRuleId:  pulumi.String("73e01a99-5cd7-4139-a149-9f2736ff2ab5"),
/// 			ResourceGroupName: pulumi.String("myRg"),
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
/// import com.pulumi.azurenative.securityinsights.AutomationRule;
/// import com.pulumi.azurenative.securityinsights.AutomationRuleArgs;
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
///         var automationRule = new AutomationRule("automationRule", AutomationRuleArgs.builder()
///             .automationRuleId("73e01a99-5cd7-4139-a149-9f2736ff2ab5")
///             .resourceGroupName("myRg")
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
/// const automationRule = new azure_native.securityinsights.AutomationRule("automationRule", {
///     automationRuleId: "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     resourceGroupName: "myRg",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// automation_rule = azure_native.securityinsights.AutomationRule("automationRule",
///     automation_rule_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   automationRule:
///     type: azure-native:securityinsights:AutomationRule
///     properties:
///       automationRuleId: 73e01a99-5cd7-4139-a149-9f2736ff2ab5
///       resourceGroupName: myRg
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
/// $ pulumi import azure-native:securityinsights:AutomationRule 73e01a99-5cd7-4139-a149-9f2736ff2ab5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/automationRules/{automationRuleId}
/// ```
class AutomationRule extends pulumi.CustomResource {
  /// The actions to execute when the automation rule is triggered.
  late final pulumi.Output<List<Map<String, dynamic>>> actions;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Information on the client (user or application) that made some action
  late final pulumi.Output<ClientInfoResponse> createdBy;
  /// The time the automation rule was created.
  late final pulumi.Output<String> createdTimeUtc;
  /// The display name of the automation rule.
  late final pulumi.Output<String> displayName;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// Information on the client (user or application) that made some action
  late final pulumi.Output<ClientInfoResponse> lastModifiedBy;
  /// The last time the automation rule was updated.
  late final pulumi.Output<String> lastModifiedTimeUtc;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The order of execution of the automation rule.
  late final pulumi.Output<int> order;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Describes automation rule triggering logic.
  late final pulumi.Output<AutomationRuleTriggeringLogicResponse> triggeringLogic;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AutomationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutomationRule]. {@macro pulumi_securityinsights_automation_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutomationRule(
    String name, {
    AutomationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:AutomationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<Map<String, dynamic>>>('actions');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdBy = registerOutput<ClientInfoResponse>('createdBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClientInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdTimeUtc = registerOutput<String>('createdTimeUtc');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String?>('etag');
    lastModifiedBy = registerOutput<ClientInfoResponse>('lastModifiedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClientInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedTimeUtc = registerOutput<String>('lastModifiedTimeUtc');
    this.name = registerOutput<String>('name');
    order = registerOutput<int>('order');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    triggeringLogic = registerOutput<AutomationRuleTriggeringLogicResponse>('triggeringLogic', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomationRuleTriggeringLogicResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
