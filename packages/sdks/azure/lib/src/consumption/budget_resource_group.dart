import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_resource_group_args.dart';
import 'budget_resource_group_filter.dart';
import 'budget_resource_group_notification.dart';
import 'budget_resource_group_state.dart';
import 'budget_resource_group_time_period.dart';

/// Manages a Resource Group Consumption Budget.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "eastus",
/// });
/// const exampleActionGroup = new azure.monitoring.ActionGroup("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     shortName: "example",
/// });
/// const exampleBudgetResourceGroup = new azure.consumption.BudgetResourceGroup("example", {
///     name: "example",
///     resourceGroupId: example.id,
///     amount: 1000,
///     timeGrain: "Monthly",
///     timePeriod: {
///         startDate: "2022-06-01T00:00:00Z",
///         endDate: "2022-07-01T00:00:00Z",
///     },
///     filter: {
///         dimensions: [{
///             name: "ResourceId",
///             values: [exampleActionGroup.id],
///         }],
///         tags: [{
///             name: "foo",
///             values: [
///                 "bar",
///                 "baz",
///             ],
///         }],
///     },
///     notifications: [
///         {
///             enabled: true,
///             threshold: 90,
///             operator: "EqualTo",
///             thresholdType: "Forecasted",
///             contactEmails: [
///                 "foo@example.com",
///                 "bar@example.com",
///             ],
///             contactGroups: [exampleActionGroup.id],
///             contactRoles: ["Owner"],
///         },
///         {
///             enabled: false,
///             threshold: 100,
///             operator: "GreaterThan",
///             contactEmails: [
///                 "foo@example.com",
///                 "bar@example.com",
///             ],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="eastus")
/// example_action_group = azure.monitoring.ActionGroup("example",
///     name="example",
///     resource_group_name=example.name,
///     short_name="example")
/// example_budget_resource_group = azure.consumption.BudgetResourceGroup("example",
///     name="example",
///     resource_group_id=example.id,
///     amount=float(1000),
///     time_grain="Monthly",
///     time_period={
///         "start_date": "2022-06-01T00:00:00Z",
///         "end_date": "2022-07-01T00:00:00Z",
///     },
///     filter={
///         "dimensions": [{
///             "name": "ResourceId",
///             "values": [example_action_group.id],
///         }],
///         "tags": [{
///             "name": "foo",
///             "values": [
///                 "bar",
///                 "baz",
///             ],
///         }],
///     },
///     notifications=[
///         {
///             "enabled": True,
///             "threshold": 90,
///             "operator": "EqualTo",
///             "threshold_type": "Forecasted",
///             "contact_emails": [
///                 "foo@example.com",
///                 "bar@example.com",
///             ],
///             "contact_groups": [example_action_group.id],
///             "contact_roles": ["Owner"],
///         },
///         {
///             "enabled": False,
///             "threshold": 100,
///             "operator": "GreaterThan",
///             "contact_emails": [
///                 "foo@example.com",
///                 "bar@example.com",
///             ],
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
///         Name = "example",
///         Location = "eastus",
///     });
///
///     var exampleActionGroup = new Azure.Monitoring.ActionGroup("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         ShortName = "example",
///     });
///
///     var exampleBudgetResourceGroup = new Azure.Consumption.BudgetResourceGroup("example", new()
///     {
///         Name = "example",
///         ResourceGroupId = example.Id,
///         Amount = 1000,
///         TimeGrain = "Monthly",
///         TimePeriod = new Azure.Consumption.Inputs.BudgetResourceGroupTimePeriodArgs
///         {
///             StartDate = "2022-06-01T00:00:00Z",
///             EndDate = "2022-07-01T00:00:00Z",
///         },
///         Filter = new Azure.Consumption.Inputs.BudgetResourceGroupFilterArgs
///         {
///             Dimensions = new[]
///             {
///                 new Azure.Consumption.Inputs.BudgetResourceGroupFilterDimensionArgs
///                 {
///                     Name = "ResourceId",
///                     Values = new[]
///                     {
///                         exampleActionGroup.Id,
///                     },
///                 },
///             },
///             Tags = new[]
///             {
///                 new Azure.Consumption.Inputs.BudgetResourceGroupFilterTagArgs
///                 {
///                     Name = "foo",
///                     Values = new[]
///                     {
///                         "bar",
///                         "baz",
///                     },
///                 },
///             },
///         },
///         Notifications = new[]
///         {
///             new Azure.Consumption.Inputs.BudgetResourceGroupNotificationArgs
///             {
///                 Enabled = true,
///                 Threshold = 90,
///                 Operator = "EqualTo",
///                 ThresholdType = "Forecasted",
///                 ContactEmails = new[]
///                 {
///                     "foo@example.com",
///                     "bar@example.com",
///                 },
///                 ContactGroups = new[]
///                 {
///                     exampleActionGroup.Id,
///                 },
///                 ContactRoles = new[]
///                 {
///                     "Owner",
///                 },
///             },
///             new Azure.Consumption.Inputs.BudgetResourceGroupNotificationArgs
///             {
///                 Enabled = false,
///                 Threshold = 100,
///                 Operator = "GreaterThan",
///                 ContactEmails = new[]
///                 {
///                     "foo@example.com",
///                     "bar@example.com",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/consumption"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("eastus"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleActionGroup, err := monitoring.NewActionGroup(ctx, "example", &monitoring.ActionGroupArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			ShortName:         pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = consumption.NewBudgetResourceGroup(ctx, "example", &consumption.BudgetResourceGroupArgs{
/// 			Name:            pulumi.String("example"),
/// 			ResourceGroupId: example.ID().ToIDOutput().ToStringOutput(),
/// 			Amount:          pulumi.Float64(1000),
/// 			TimeGrain:       pulumi.String("Monthly"),
/// 			TimePeriod: &consumption.BudgetResourceGroupTimePeriodArgs{
/// 				StartDate: pulumi.String("2022-06-01T00:00:00Z"),
/// 				EndDate:   pulumi.String("2022-07-01T00:00:00Z"),
/// 			},
/// 			Filter: &consumption.BudgetResourceGroupFilterArgs{
/// 				Dimensions: consumption.BudgetResourceGroupFilterDimensionArray{
/// 					&consumption.BudgetResourceGroupFilterDimensionArgs{
/// 						Name: pulumi.String("ResourceId"),
/// 						Values: pulumi.StringArray{
/// 							exampleActionGroup.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 				Tags: consumption.BudgetResourceGroupFilterTagArray{
/// 					&consumption.BudgetResourceGroupFilterTagArgs{
/// 						Name: pulumi.String("foo"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("bar"),
/// 							pulumi.String("baz"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Notifications: consumption.BudgetResourceGroupNotificationArray{
/// 				&consumption.BudgetResourceGroupNotificationArgs{
/// 					Enabled:       pulumi.Bool(true),
/// 					Threshold:     pulumi.Int(90),
/// 					Operator:      pulumi.String("EqualTo"),
/// 					ThresholdType: pulumi.String("Forecasted"),
/// 					ContactEmails: pulumi.StringArray{
/// 						pulumi.String("foo@example.com"),
/// 						pulumi.String("bar@example.com"),
/// 					},
/// 					ContactGroups: pulumi.StringArray{
/// 						exampleActionGroup.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 					ContactRoles: pulumi.StringArray{
/// 						pulumi.String("Owner"),
/// 					},
/// 				},
/// 				&consumption.BudgetResourceGroupNotificationArgs{
/// 					Enabled:   pulumi.Bool(false),
/// 					Threshold: pulumi.Int(100),
/// 					Operator:  pulumi.String("GreaterThan"),
/// 					ContactEmails: pulumi.StringArray{
/// 						pulumi.String("foo@example.com"),
/// 						pulumi.String("bar@example.com"),
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
///   name     = "example"
///   location = "eastus"
/// }
/// resource "azure_monitoring_actiongroup" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   short_name          = "example"
/// }
/// resource "azure_consumption_budgetresourcegroup" "example" {
///   name              = "example"
///   resource_group_id = azure_core_resourcegroup.example.id
///   amount            = 1000
///   time_grain        = "Monthly"
///   time_period = {
///     start_date = "2022-06-01T00:00:00Z"
///     end_date   = "2022-07-01T00:00:00Z"
///   }
///   filter = {
///     dimensions = [{
///       "name"   = "ResourceId"
///       "values" = [azure_monitoring_actiongroup.example.id]
///     }]
///     tags = [{
///       "name"   = "foo"
///       "values" = ["bar", "baz"]
///     }]
///   }
///   notifications {
///     enabled        = true
///     threshold      = 90
///     operator       = "EqualTo"
///     threshold_type = "Forecasted"
///     contact_emails = ["foo@example.com", "bar@example.com"]
///     contact_groups = [azure_monitoring_actiongroup.example.id]
///     contact_roles  = ["Owner"]
///   }
///   notifications {
///     enabled        = false
///     threshold      = 100
///     operator       = "GreaterThan"
///     contact_emails = ["foo@example.com", "bar@example.com"]
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
/// import com.pulumi.azure.consumption.BudgetResourceGroup;
/// import com.pulumi.azure.consumption.BudgetResourceGroupArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetResourceGroupTimePeriodArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetResourceGroupFilterArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetResourceGroupFilterDimensionArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetResourceGroupFilterTagArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetResourceGroupNotificationArgs;
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
///             .name("example")
///             .location("eastus")
///             .build());
///
///         var exampleActionGroup = new ActionGroup("exampleActionGroup", ActionGroupArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .shortName("example")
///             .build());
///
///         var exampleBudgetResourceGroup = new BudgetResourceGroup("exampleBudgetResourceGroup", BudgetResourceGroupArgs.builder()
///             .name("example")
///             .resourceGroupId(example.id())
///             .amount(1000.0)
///             .timeGrain("Monthly")
///             .timePeriod(BudgetResourceGroupTimePeriodArgs.builder()
///                 .startDate("2022-06-01T00:00:00Z")
///                 .endDate("2022-07-01T00:00:00Z")
///                 .build())
///             .filter(BudgetResourceGroupFilterArgs.builder()
///                 .dimensions(BudgetResourceGroupFilterDimensionArgs.builder()
///                     .name("ResourceId")
///                     .values(exampleActionGroup.id())
///                     .build())
///                 .tags(BudgetResourceGroupFilterTagArgs.builder()
///                     .name("foo")
///                     .values(
///                         "bar",
///                         "baz")
///                     .build())
///                 .build())
///             .notifications(
///                 BudgetResourceGroupNotificationArgs.builder()
///                     .enabled(true)
///                     .threshold(90)
///                     .operator("EqualTo")
///                     .thresholdType("Forecasted")
///                     .contactEmails(
///                         "foo@example.com",
///                         "bar@example.com")
///                     .contactGroups(exampleActionGroup.id())
///                     .contactRoles("Owner")
///                     .build(),
///                 BudgetResourceGroupNotificationArgs.builder()
///                     .enabled(false)
///                     .threshold(100)
///                     .operator("GreaterThan")
///                     .contactEmails(
///                         "foo@example.com",
///                         "bar@example.com")
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
///       name: example
///       location: eastus
///   exampleActionGroup:
///     type: azure:monitoring:ActionGroup
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       shortName: example
///   exampleBudgetResourceGroup:
///     type: azure:consumption:BudgetResourceGroup
///     name: example
///     properties:
///       name: example
///       resourceGroupId: ${example.id}
///       amount: 1000
///       timeGrain: Monthly
///       timePeriod:
///         startDate: 2022-06-01T00:00:00Z
///         endDate: 2022-07-01T00:00:00Z
///       filter:
///         dimensions:
///           - name: ResourceId
///             values:
///               - ${exampleActionGroup.id}
///         tags:
///           - name: foo
///             values:
///               - bar
///               - baz
///       notifications:
///         - enabled: true
///           threshold: 90
///           operator: EqualTo
///           thresholdType: Forecasted
///           contactEmails:
///             - foo@example.com
///             - bar@example.com
///           contactGroups:
///             - ${exampleActionGroup.id}
///           contactRoles:
///             - Owner
///         - enabled: false
///           threshold: 100
///           operator: GreaterThan
///           contactEmails:
///             - foo@example.com
///             - bar@example.com
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Consumption` - 2019-10-01
///
/// ## Import
///
/// Resource Group Consumption Budgets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:consumption/budgetResourceGroup:BudgetResourceGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Consumption/budgets/resourceGroup1
/// ```
class BudgetResourceGroup extends pulumi.CustomResource {
  /// The total amount of cost to track with the budget.
  late final pulumi.Output<double> amount;
  /// (Optional) The ETag of the Resource Group Consumption Budget
  late final pulumi.Output<String> etag;
  /// A `filter` block as defined below.
  late final pulumi.Output<BudgetResourceGroupFilter?> filter;
  /// The name which should be used for this Resource Group Consumption Budget. Changing this forces a new Resource Group Consumption Budget to be created.
  late final pulumi.Output<String> name;
  /// One or more `notification` blocks as defined below.
  late final pulumi.Output<List<BudgetResourceGroupNotification>> notifications;
  /// The ID of the Resource Group to create the consumption budget for in the form of /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1. Changing this forces a new Resource Group Consumption Budget to be created.
  late final pulumi.Output<String> resourceGroupId;
  /// The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> timeGrain;
  /// A `timePeriod` block as defined below.
  late final pulumi.Output<BudgetResourceGroupTimePeriod> timePeriod;

  /// Creates a new [BudgetResourceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BudgetResourceGroup]. {@macro pulumi_consumption_budget_resource_group_budget_resource_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BudgetResourceGroup(
    String name, {
    BudgetResourceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:consumption/budgetResourceGroup:BudgetResourceGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    amount = registerOutput<double>('amount');
    etag = registerOutput<String>('etag');
    filter = registerOutput<BudgetResourceGroupFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetResourceGroupFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    notifications = registerOutput<List<BudgetResourceGroupNotification>>('notifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BudgetResourceGroupNotification>(guardedValue, (value) => BudgetResourceGroupNotification.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupId = registerOutput<String>('resourceGroupId');
    timeGrain = registerOutput<String?>('timeGrain');
    timePeriod = registerOutput<BudgetResourceGroupTimePeriod>('timePeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetResourceGroupTimePeriod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [BudgetResourceGroup] resource's state with the given [name] and [id].
  static BudgetResourceGroup get(
    String name,
    pulumi.Input<String> id, {
    BudgetResourceGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BudgetResourceGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BudgetResourceGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:consumption/budgetResourceGroup:BudgetResourceGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amount = registerOutput<double>('amount');
    etag = registerOutput<String>('etag');
    filter = registerOutput<BudgetResourceGroupFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetResourceGroupFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    notifications = registerOutput<List<BudgetResourceGroupNotification>>('notifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BudgetResourceGroupNotification>(guardedValue, (value) => BudgetResourceGroupNotification.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupId = registerOutput<String>('resourceGroupId');
    timeGrain = registerOutput<String?>('timeGrain');
    timePeriod = registerOutput<BudgetResourceGroupTimePeriod>('timePeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetResourceGroupTimePeriod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [BudgetResourceGroup] resource.
  BudgetResourceGroup.reference(String urn)
    : super(
        'azure:consumption/budgetResourceGroup:BudgetResourceGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    amount = registerOutput<double>('amount');
    etag = registerOutput<String>('etag');
    filter = registerOutput<BudgetResourceGroupFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetResourceGroupFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    notifications = registerOutput<List<BudgetResourceGroupNotification>>('notifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BudgetResourceGroupNotification>(guardedValue, (value) => BudgetResourceGroupNotification.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupId = registerOutput<String>('resourceGroupId');
    timeGrain = registerOutput<String?>('timeGrain');
    timePeriod = registerOutput<BudgetResourceGroupTimePeriod>('timePeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetResourceGroupTimePeriod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
