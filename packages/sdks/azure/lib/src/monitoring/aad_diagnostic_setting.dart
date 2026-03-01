import 'package:pulumi/pulumi.dart' as pulumi;
import 'aad_diagnostic_setting_args.dart';
import 'aad_diagnostic_setting_enabled_log.dart';
import 'aad_diagnostic_setting_state.dart';

/// Manages an Azure Active Directory Diagnostic Setting for Azure Monitor.
///
/// > **Note:** When using Service Principal authentication, the Service Principal must be assigned the _Contributor_ role at the scope `/providers/Microsoft.aadiam`. You can assign this role using the `az` CLI command: `az role assignment create --assignee-principal-type ServicePrincipal --assignee-object-id "<sp-object-id>" --scope "/providers/Microsoft.aadiam" --role "Contributor"`. The assigning user must be a User Access Administrator at the root level. Refer to the [Azure elevation guide](https://learn.microsoft.com/en-us/azure/role-based-access-control/elevate-access-global-admin) for details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "west europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageaccount",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountKind: "StorageV2",
///     accountReplicationType: "LRS",
/// });
/// const exampleAadDiagnosticSetting = new azure.monitoring.AadDiagnosticSetting("example", {
///     name: "setting1",
///     storageAccountId: exampleAccount.id,
///     enabledLogs: [
///         {
///             category: "SignInLogs",
///         },
///         {
///             category: "AuditLogs",
///         },
///         {
///             category: "NonInteractiveUserSignInLogs",
///         },
///         {
///             category: "ServicePrincipalSignInLogs",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="west europe")
/// example_account = azure.storage.Account("example",
///     name="examplestorageaccount",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_kind="StorageV2",
///     account_replication_type="LRS")
/// example_aad_diagnostic_setting = azure.monitoring.AadDiagnosticSetting("example",
///     name="setting1",
///     storage_account_id=example_account.id,
///     enabled_logs=[
///         {
///             "category": "SignInLogs",
///         },
///         {
///             "category": "AuditLogs",
///         },
///         {
///             "category": "NonInteractiveUserSignInLogs",
///         },
///         {
///             "category": "ServicePrincipalSignInLogs",
///         },
///     ])
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
///         Name = "example-rg",
///         Location = "west europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageaccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountKind = "StorageV2",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleAadDiagnosticSetting = new Azure.Monitoring.AadDiagnosticSetting("example", new()
///     {
///         Name = "setting1",
///         StorageAccountId = exampleAccount.Id,
///         EnabledLogs = new[]
///         {
///             new Azure.Monitoring.Inputs.AadDiagnosticSettingEnabledLogArgs
///             {
///                 Category = "SignInLogs",
///             },
///             new Azure.Monitoring.Inputs.AadDiagnosticSettingEnabledLogArgs
///             {
///                 Category = "AuditLogs",
///             },
///             new Azure.Monitoring.Inputs.AadDiagnosticSettingEnabledLogArgs
///             {
///                 Category = "NonInteractiveUserSignInLogs",
///             },
///             new Azure.Monitoring.Inputs.AadDiagnosticSettingEnabledLogArgs
///             {
///                 Category = "ServicePrincipalSignInLogs",
///             },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("west europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageaccount"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountKind:            pulumi.String("StorageV2"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewAadDiagnosticSetting(ctx, "example", &monitoring.AadDiagnosticSettingArgs{
/// 			Name:             pulumi.String("setting1"),
/// 			StorageAccountId: exampleAccount.ID(),
/// 			EnabledLogs: monitoring.AadDiagnosticSettingEnabledLogArray{
/// 				&monitoring.AadDiagnosticSettingEnabledLogArgs{
/// 					Category: pulumi.String("SignInLogs"),
/// 				},
/// 				&monitoring.AadDiagnosticSettingEnabledLogArgs{
/// 					Category: pulumi.String("AuditLogs"),
/// 				},
/// 				&monitoring.AadDiagnosticSettingEnabledLogArgs{
/// 					Category: pulumi.String("NonInteractiveUserSignInLogs"),
/// 				},
/// 				&monitoring.AadDiagnosticSettingEnabledLogArgs{
/// 					Category: pulumi.String("ServicePrincipalSignInLogs"),
/// 				},
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.monitoring.AadDiagnosticSetting;
/// import com.pulumi.azure.monitoring.AadDiagnosticSettingArgs;
/// import com.pulumi.azure.monitoring.inputs.AadDiagnosticSettingEnabledLogArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("west europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageaccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountKind("StorageV2")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleAadDiagnosticSetting = new AadDiagnosticSetting("exampleAadDiagnosticSetting", AadDiagnosticSettingArgs.builder()
///             .name("setting1")
///             .storageAccountId(exampleAccount.id())
///             .enabledLogs(
///                 AadDiagnosticSettingEnabledLogArgs.builder()
///                     .category("SignInLogs")
///                     .build(),
///                 AadDiagnosticSettingEnabledLogArgs.builder()
///                     .category("AuditLogs")
///                     .build(),
///                 AadDiagnosticSettingEnabledLogArgs.builder()
///                     .category("NonInteractiveUserSignInLogs")
///                     .build(),
///                 AadDiagnosticSettingEnabledLogArgs.builder()
///                     .category("ServicePrincipalSignInLogs")
///                     .build())
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
///       name: example-rg
///       location: west europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageaccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountKind: StorageV2
///       accountReplicationType: LRS
///   exampleAadDiagnosticSetting:
///     type: azure:monitoring:AadDiagnosticSetting
///     name: example
///     properties:
///       name: setting1
///       storageAccountId: ${exampleAccount.id}
///       enabledLogs:
///         - category: SignInLogs
///         - category: AuditLogs
///         - category: NonInteractiveUserSignInLogs
///         - category: ServicePrincipalSignInLogs
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AADIAM` - 2017-04-01
///
/// ## Import
///
/// Monitor Azure Active Directory Diagnostic Settings can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/aadDiagnosticSetting:AadDiagnosticSetting example /providers/Microsoft.AADIAM/diagnosticSettings/setting1
/// ```
class AadDiagnosticSetting extends pulumi.CustomResource {
  /// One or more `enabled_log` blocks as defined below.
  late final pulumi.Output<List<AadDiagnosticSettingEnabledLog>?> enabledLogs;
  /// Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This can be sourced from the `azure.eventhub.EventHubNamespaceAuthorizationRule` resource and is different from a `azure.eventhub.AuthorizationRule` resource.
  late final pulumi.Output<String?> eventhubAuthorizationRuleId;
  /// Specifies the name of the Event Hub where Diagnostics Data should be sent. If not specified, the default Event Hub will be used. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> eventhubName;
  /// Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent.
  late final pulumi.Output<String?> logAnalyticsWorkspaceId;
  /// The name which should be used for this Monitor Azure Active Directory Diagnostic Setting. Changing this forces a new Monitor Azure Active Directory Diagnostic Setting to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Storage Account where logs should be sent. Changing this forces a new resource to be created.
  ///
  /// > **Note:** One of `eventhub_authorization_rule_id`, `log_analytics_workspace_id` and `storage_account_id` must be specified.
  late final pulumi.Output<String?> storageAccountId;

  /// Creates a new [AadDiagnosticSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AadDiagnosticSetting]. {@macro pulumi_monitoring_aad_diagnostic_setting_aad_diagnostic_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AadDiagnosticSetting(
    String name, {
    AadDiagnosticSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/aadDiagnosticSetting:AadDiagnosticSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabledLogs = registerOutput<List<AadDiagnosticSettingEnabledLog>?>('enabledLogs');
    this.eventhubAuthorizationRuleId = registerOutput<String?>('eventhubAuthorizationRuleId');
    this.eventhubName = registerOutput<String?>('eventhubName');
    this.logAnalyticsWorkspaceId = registerOutput<String?>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    this.storageAccountId = registerOutput<String?>('storageAccountId');
  }

  /// Gets an existing [AadDiagnosticSetting] resource's state with the given [name] and [id].
  static AadDiagnosticSetting get(
    String name,
    pulumi.Input<String> id, {
    AadDiagnosticSettingState? state,
  }) {
    return AadDiagnosticSetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AadDiagnosticSetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/aadDiagnosticSetting:AadDiagnosticSetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabledLogs = registerOutput<List<AadDiagnosticSettingEnabledLog>?>('enabledLogs');
    this.eventhubAuthorizationRuleId = registerOutput<String?>('eventhubAuthorizationRuleId');
    this.eventhubName = registerOutput<String?>('eventhubName');
    this.logAnalyticsWorkspaceId = registerOutput<String?>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    this.storageAccountId = registerOutput<String?>('storageAccountId');
  }
}
