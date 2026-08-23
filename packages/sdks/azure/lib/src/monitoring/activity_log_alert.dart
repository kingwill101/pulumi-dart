import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_log_alert_args.dart';
import 'activity_log_alert_criteria.dart';
import 'activity_log_alert_state.dart';

/// Manages an Activity Log Alert within Azure Monitor.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const main = new azure.monitoring.ActionGroup("main", {
///     name: "example-actiongroup",
///     resourceGroupName: example.name,
///     shortName: "p0action",
///     webhookReceivers: [{
///         name: "callmyapi",
///         serviceUri: "http://example.com/alert",
///     }],
/// });
/// const toMonitor = new azure.storage.Account("to_monitor", {
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
/// });
/// const mainActivityLogAlert = new azure.monitoring.ActivityLogAlert("main", {
///     name: "example-activitylogalert",
///     resourceGroupName: example.name,
///     location: example.location,
///     scopes: [example.id],
///     description: "This alert will monitor a specific storage account updates.",
///     criteria: {
///         resourceId: toMonitor.id,
///         operationName: "Microsoft.Storage/storageAccounts/write",
///         category: "Recommendation",
///     },
///     actions: [{
///         actionGroupId: main.id,
///         webhookProperties: {
///             from: "source",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// main = azure.monitoring.ActionGroup("main",
///     name="example-actiongroup",
///     resource_group_name=example.name,
///     short_name="p0action",
///     webhook_receivers=[{
///         "name": "callmyapi",
///         "service_uri": "http://example.com/alert",
///     }])
/// to_monitor = azure.storage.Account("to_monitor",
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="GRS")
/// main_activity_log_alert = azure.monitoring.ActivityLogAlert("main",
///     name="example-activitylogalert",
///     resource_group_name=example.name,
///     location=example.location,
///     scopes=[example.id],
///     description="This alert will monitor a specific storage account updates.",
///     criteria={
///         "resource_id": to_monitor.id,
///         "operation_name": "Microsoft.Storage/storageAccounts/write",
///         "category": "Recommendation",
///     },
///     actions=[{
///         "action_group_id": main.id,
///         "webhook_properties": {
///             "from": "source",
///         },
///     }])
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var main = new Azure.Monitoring.ActionGroup("main", new()
///     {
///         Name = "example-actiongroup",
///         ResourceGroupName = example.Name,
///         ShortName = "p0action",
///         WebhookReceivers = new[]
///         {
///             new Azure.Monitoring.Inputs.ActionGroupWebhookReceiverArgs
///             {
///                 Name = "callmyapi",
///                 ServiceUri = "http://example.com/alert",
///             },
///         },
///     });
///
///     var toMonitor = new Azure.Storage.Account("to_monitor", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///     });
///
///     var mainActivityLogAlert = new Azure.Monitoring.ActivityLogAlert("main", new()
///     {
///         Name = "example-activitylogalert",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Scopes = new[]
///         {
///             example.Id,
///         },
///         Description = "This alert will monitor a specific storage account updates.",
///         Criteria = new Azure.Monitoring.Inputs.ActivityLogAlertCriteriaArgs
///         {
///             ResourceId = toMonitor.Id,
///             OperationName = "Microsoft.Storage/storageAccounts/write",
///             Category = "Recommendation",
///         },
///         Actions = new[]
///         {
///             new Azure.Monitoring.Inputs.ActivityLogAlertActionArgs
///             {
///                 ActionGroupId = main.Id,
///                 WebhookProperties =
///                 {
///                     { "from", "source" },
///                 },
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main, err := monitoring.NewActionGroup(ctx, "main", &monitoring.ActionGroupArgs{
/// 			Name:              pulumi.String("example-actiongroup"),
/// 			ResourceGroupName: example.Name,
/// 			ShortName:         pulumi.String("p0action"),
/// 			WebhookReceivers: monitoring.ActionGroupWebhookReceiverArray{
/// 				&monitoring.ActionGroupWebhookReceiverArgs{
/// 					Name:       pulumi.String("callmyapi"),
/// 					ServiceUri: pulumi.String("http://example.com/alert"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		toMonitor, err := storage.NewAccount(ctx, "to_monitor", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewActivityLogAlert(ctx, "main", &monitoring.ActivityLogAlertArgs{
/// 			Name:              pulumi.String("example-activitylogalert"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Scopes: pulumi.StringArray{
/// 				example.ID(),
/// 			},
/// 			Description: pulumi.String("This alert will monitor a specific storage account updates."),
/// 			Criteria: &monitoring.ActivityLogAlertCriteriaArgs{
/// 				ResourceId:    toMonitor.ID(),
/// 				OperationName: pulumi.String("Microsoft.Storage/storageAccounts/write"),
/// 				Category:      pulumi.String("Recommendation"),
/// 			},
/// 			Actions: monitoring.ActivityLogAlertActionArray{
/// 				&monitoring.ActivityLogAlertActionArgs{
/// 					ActionGroupId: main.ID(),
/// 					WebhookProperties: pulumi.StringMap{
/// 						"from": pulumi.String("source"),
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_monitoring_actiongroup" "main" {
///   name                = "example-actiongroup"
///   resource_group_name = azure_core_resourcegroup.example.name
///   short_name          = "p0action"
///   webhook_receivers {
///     name        = "callmyapi"
///     service_uri = "http://example.com/alert"
///   }
/// }
/// resource "azure_storage_account" "to_monitor" {
///   name                     = "examplesa"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "GRS"
/// }
/// resource "azure_monitoring_activitylogalert" "main" {
///   name                = "example-activitylogalert"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   scopes              = [azure_core_resourcegroup.example.id]
///   description         = "This alert will monitor a specific storage account updates."
///   criteria = {
///     resource_id    = azure_storage_account.to_monitor.id
///     operation_name = "Microsoft.Storage/storageAccounts/write"
///     category       = "Recommendation"
///   }
///   actions {
///     action_group_id = azure_monitoring_actiongroup.main.id
///     webhook_properties = {
///       "from" = "source"
///     }
///   }
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
/// import com.pulumi.azure.monitoring.ActionGroup;
/// import com.pulumi.azure.monitoring.ActionGroupArgs;
/// import com.pulumi.azure.monitoring.inputs.ActionGroupWebhookReceiverArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.monitoring.ActivityLogAlert;
/// import com.pulumi.azure.monitoring.ActivityLogAlertArgs;
/// import com.pulumi.azure.monitoring.inputs.ActivityLogAlertCriteriaArgs;
/// import com.pulumi.azure.monitoring.inputs.ActivityLogAlertActionArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var main = new ActionGroup("main", ActionGroupArgs.builder()
///             .name("example-actiongroup")
///             .resourceGroupName(example.name())
///             .shortName("p0action")
///             .webhookReceivers(ActionGroupWebhookReceiverArgs.builder()
///                 .name("callmyapi")
///                 .serviceUri("http://example.com/alert")
///                 .build())
///             .build());
///
///         var toMonitor = new Account("toMonitor", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .build());
///
///         var mainActivityLogAlert = new ActivityLogAlert("mainActivityLogAlert", ActivityLogAlertArgs.builder()
///             .name("example-activitylogalert")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .scopes(example.id())
///             .description("This alert will monitor a specific storage account updates.")
///             .criteria(ActivityLogAlertCriteriaArgs.builder()
///                 .resourceId(toMonitor.id())
///                 .operationName("Microsoft.Storage/storageAccounts/write")
///                 .category("Recommendation")
///                 .build())
///             .actions(ActivityLogAlertActionArgs.builder()
///                 .actionGroupId(main.id())
///                 .webhookProperties(Map.of("from", "source"))
///                 .build())
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
///   main:
///     type: azure:monitoring:ActionGroup
///     properties:
///       name: example-actiongroup
///       resourceGroupName: ${example.name}
///       shortName: p0action
///       webhookReceivers:
///         - name: callmyapi
///           serviceUri: http://example.com/alert
///   toMonitor:
///     type: azure:storage:Account
///     name: to_monitor
///     properties:
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: GRS
///   mainActivityLogAlert:
///     type: azure:monitoring:ActivityLogAlert
///     name: main
///     properties:
///       name: example-activitylogalert
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       scopes:
///         - ${example.id}
///       description: This alert will monitor a specific storage account updates.
///       criteria:
///         resourceId: ${toMonitor.id}
///         operationName: Microsoft.Storage/storageAccounts/write
///         category: Recommendation
///       actions:
///         - actionGroupId: ${main.id}
///           webhookProperties:
///             from: source
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2020-10-01
///
/// ## Import
///
/// Activity log alerts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/activityLogAlert:ActivityLogAlert example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Insights/activityLogAlerts/myalertname
/// ```
class ActivityLogAlert extends pulumi.CustomResource {
  /// One or more `action` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> actions;
  /// A `criteria` block as defined below.
  late final pulumi.Output<ActivityLogAlertCriteria> criteria;
  /// The description of this activity log alert.
  late final pulumi.Output<String?> description;
  /// Should this Activity Log Alert be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The Azure Region where the activity log alert rule should exist. Possible values are `global`, `westeurope`, `northeurope`, and `eastus2euap`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the activity log alert. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the activity log alert instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Scope at which the Activity Log should be applied. A list of strings which could be a resource group , or a subscription, or a resource ID (such as a Storage Account).
  late final pulumi.Output<List<String>> scopes;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ActivityLogAlert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActivityLogAlert]. {@macro pulumi_monitoring_activity_log_alert_activity_log_alert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActivityLogAlert(
    String name, {
    ActivityLogAlertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/activityLogAlert:ActivityLogAlert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<Map<String, dynamic>>?>('actions');
    criteria = registerOutput<ActivityLogAlertCriteria>('criteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActivityLogAlertCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scopes = registerOutput<List<String>>('scopes');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ActivityLogAlert] resource's state with the given [name] and [id].
  static ActivityLogAlert get(
    String name,
    pulumi.Input<String> id, {
    ActivityLogAlertState? state,
  }) {
    return ActivityLogAlert._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ActivityLogAlert._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/activityLogAlert:ActivityLogAlert',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<Map<String, dynamic>>?>('actions');
    criteria = registerOutput<ActivityLogAlertCriteria>('criteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActivityLogAlertCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scopes = registerOutput<List<String>>('scopes');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
