import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_subscription_args.dart';
import 'budget_subscription_filter.dart';
import 'budget_subscription_state.dart';
import 'budget_subscription_time_period.dart';

/// Manages a Subscription Consumption Budget.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getSubscription({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "eastus",
/// });
/// const exampleActionGroup = new azure.monitoring.ActionGroup("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     shortName: "example",
/// });
/// const exampleBudgetSubscription = new azure.consumption.BudgetSubscription("example", {
///     name: "example",
///     subscriptionId: current.then(current => current.id),
///     amount: 1000,
///     timeGrain: "Monthly",
///     timePeriod: {
///         startDate: "2022-06-01T00:00:00Z",
///         endDate: "2022-07-01T00:00:00Z",
///     },
///     filter: {
///         dimensions: [{
///             name: "ResourceGroupName",
///             values: [example.name],
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
///             thresholdType: "Forecasted",
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
/// current = azure.core.get_subscription()
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="eastus")
/// example_action_group = azure.monitoring.ActionGroup("example",
///     name="example",
///     resource_group_name=example.name,
///     short_name="example")
/// example_budget_subscription = azure.consumption.BudgetSubscription("example",
///     name="example",
///     subscription_id=current.id,
///     amount=float(1000),
///     time_grain="Monthly",
///     time_period={
///         "start_date": "2022-06-01T00:00:00Z",
///         "end_date": "2022-07-01T00:00:00Z",
///     },
///     filter={
///         "dimensions": [{
///             "name": "ResourceGroupName",
///             "values": [example.name],
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
///             "threshold_type": "Forecasted",
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
///     var current = Azure.Core.GetSubscription.Invoke();
///
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
///     var exampleBudgetSubscription = new Azure.Consumption.BudgetSubscription("example", new()
///     {
///         Name = "example",
///         SubscriptionId = current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         Amount = 1000,
///         TimeGrain = "Monthly",
///         TimePeriod = new Azure.Consumption.Inputs.BudgetSubscriptionTimePeriodArgs
///         {
///             StartDate = "2022-06-01T00:00:00Z",
///             EndDate = "2022-07-01T00:00:00Z",
///         },
///         Filter = new Azure.Consumption.Inputs.BudgetSubscriptionFilterArgs
///         {
///             Dimensions = new[]
///             {
///                 new Azure.Consumption.Inputs.BudgetSubscriptionFilterDimensionArgs
///                 {
///                     Name = "ResourceGroupName",
///                     Values = new[]
///                     {
///                         example.Name,
///                     },
///                 },
///             },
///             Tags = new[]
///             {
///                 new Azure.Consumption.Inputs.BudgetSubscriptionFilterTagArgs
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
///             new Azure.Consumption.Inputs.BudgetSubscriptionNotificationArgs
///             {
///                 Enabled = true,
///                 Threshold = 90,
///                 Operator = "EqualTo",
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
///             new Azure.Consumption.Inputs.BudgetSubscriptionNotificationArgs
///             {
///                 Enabled = false,
///                 Threshold = 100,
///                 Operator = "GreaterThan",
///                 ThresholdType = "Forecasted",
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
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
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
/// 		_, err = consumption.NewBudgetSubscription(ctx, "example", &consumption.BudgetSubscriptionArgs{
/// 			Name:           pulumi.String("example"),
/// 			SubscriptionId: pulumi.String(current.Id),
/// 			Amount:         pulumi.Float64(1000),
/// 			TimeGrain:      pulumi.String("Monthly"),
/// 			TimePeriod: &consumption.BudgetSubscriptionTimePeriodArgs{
/// 				StartDate: pulumi.String("2022-06-01T00:00:00Z"),
/// 				EndDate:   pulumi.String("2022-07-01T00:00:00Z"),
/// 			},
/// 			Filter: &consumption.BudgetSubscriptionFilterArgs{
/// 				Dimensions: consumption.BudgetSubscriptionFilterDimensionArray{
/// 					&consumption.BudgetSubscriptionFilterDimensionArgs{
/// 						Name: pulumi.String("ResourceGroupName"),
/// 						Values: pulumi.StringArray{
/// 							example.Name,
/// 						},
/// 					},
/// 				},
/// 				Tags: consumption.BudgetSubscriptionFilterTagArray{
/// 					&consumption.BudgetSubscriptionFilterTagArgs{
/// 						Name: pulumi.String("foo"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("bar"),
/// 							pulumi.String("baz"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Notifications: consumption.BudgetSubscriptionNotificationArray{
/// 				&consumption.BudgetSubscriptionNotificationArgs{
/// 					Enabled:   pulumi.Bool(true),
/// 					Threshold: pulumi.Int(90),
/// 					Operator:  pulumi.String("EqualTo"),
/// 					ContactEmails: pulumi.StringArray{
/// 						pulumi.String("foo@example.com"),
/// 						pulumi.String("bar@example.com"),
/// 					},
/// 					ContactGroups: pulumi.StringArray{
/// 						exampleActionGroup.ID(),
/// 					},
/// 					ContactRoles: pulumi.StringArray{
/// 						pulumi.String("Owner"),
/// 					},
/// 				},
/// 				&consumption.BudgetSubscriptionNotificationArgs{
/// 					Enabled:       pulumi.Bool(false),
/// 					Threshold:     pulumi.Int(100),
/// 					Operator:      pulumi.String("GreaterThan"),
/// 					ThresholdType: pulumi.String("Forecasted"),
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
/// data "azure_core_getsubscription" "current" {
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
/// resource "azure_consumption_budgetsubscription" "example" {
///   name            = "example"
///   subscription_id = data.azure_core_getsubscription.current.id
///   amount          = 1000
///   time_grain      = "Monthly"
///   time_period = {
///     start_date = "2022-06-01T00:00:00Z"
///     end_date   = "2022-07-01T00:00:00Z"
///   }
///   filter = {
///     dimensions = [{
///       "name"   = "ResourceGroupName"
///       "values" = [azure_core_resourcegroup.example.name]
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
///     contact_emails = ["foo@example.com", "bar@example.com"]
///     contact_groups = [azure_monitoring_actiongroup.example.id]
///     contact_roles  = ["Owner"]
///   }
///   notifications {
///     enabled        = false
///     threshold      = 100
///     operator       = "GreaterThan"
///     threshold_type = "Forecasted"
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.monitoring.ActionGroup;
/// import com.pulumi.azure.monitoring.ActionGroupArgs;
/// import com.pulumi.azure.consumption.BudgetSubscription;
/// import com.pulumi.azure.consumption.BudgetSubscriptionArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetSubscriptionTimePeriodArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetSubscriptionFilterArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetSubscriptionFilterDimensionArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetSubscriptionFilterTagArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetSubscriptionNotificationArgs;
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
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
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
///         var exampleBudgetSubscription = new BudgetSubscription("exampleBudgetSubscription", BudgetSubscriptionArgs.builder()
///             .name("example")
///             .subscriptionId(current.id())
///             .amount(1000.0)
///             .timeGrain("Monthly")
///             .timePeriod(BudgetSubscriptionTimePeriodArgs.builder()
///                 .startDate("2022-06-01T00:00:00Z")
///                 .endDate("2022-07-01T00:00:00Z")
///                 .build())
///             .filter(BudgetSubscriptionFilterArgs.builder()
///                 .dimensions(BudgetSubscriptionFilterDimensionArgs.builder()
///                     .name("ResourceGroupName")
///                     .values(example.name())
///                     .build())
///                 .tags(BudgetSubscriptionFilterTagArgs.builder()
///                     .name("foo")
///                     .values(
///                         "bar",
///                         "baz")
///                     .build())
///                 .build())
///             .notifications(
///                 BudgetSubscriptionNotificationArgs.builder()
///                     .enabled(true)
///                     .threshold(90)
///                     .operator("EqualTo")
///                     .contactEmails(
///                         "foo@example.com",
///                         "bar@example.com")
///                     .contactGroups(exampleActionGroup.id())
///                     .contactRoles("Owner")
///                     .build(),
///                 BudgetSubscriptionNotificationArgs.builder()
///                     .enabled(false)
///                     .threshold(100)
///                     .operator("GreaterThan")
///                     .thresholdType("Forecasted")
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
///   exampleBudgetSubscription:
///     type: azure:consumption:BudgetSubscription
///     name: example
///     properties:
///       name: example
///       subscriptionId: ${current.id}
///       amount: 1000
///       timeGrain: Monthly
///       timePeriod:
///         startDate: 2022-06-01T00:00:00Z
///         endDate: 2022-07-01T00:00:00Z
///       filter:
///         dimensions:
///           - name: ResourceGroupName
///             values:
///               - ${example.name}
///         tags:
///           - name: foo
///             values:
///               - bar
///               - baz
///       notifications:
///         - enabled: true
///           threshold: 90
///           operator: EqualTo
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
///           thresholdType: Forecasted
///           contactEmails:
///             - foo@example.com
///             - bar@example.com
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
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
/// Subscription Consumption Budgets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:consumption/budgetSubscription:BudgetSubscription example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Consumption/budgets/subscription1
/// ```
class BudgetSubscription extends pulumi.CustomResource {
  /// The total amount of cost to track with the budget.
  late final pulumi.Output<double> amount;
  /// (Optional) The ETag of the Subscription Consumption Budget.
  late final pulumi.Output<String> etag;
  /// A `filter` block as defined below.
  late final pulumi.Output<BudgetSubscriptionFilter?> filter;
  /// The name which should be used for this Subscription Consumption Budget. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `notification` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> notifications;
  /// The ID of the Subscription for which to create a Consumption Budget. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `subscriptionId` property can accept a subscription ID e.g. `00000000-0000-0000-0000-000000000000` or the subscription resource ID e.g. `/subscriptions/00000000-0000-0000-0000-000000000000`. In version 3.0 this property will only accept the subscription resource ID.
  late final pulumi.Output<String> subscriptionId;
  /// The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> timeGrain;
  /// A `timePeriod` block as defined below.
  late final pulumi.Output<BudgetSubscriptionTimePeriod> timePeriod;

  /// Creates a new [BudgetSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BudgetSubscription]. {@macro pulumi_consumption_budget_subscription_budget_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BudgetSubscription(
    String name, {
    BudgetSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:consumption/budgetSubscription:BudgetSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amount = registerOutput<double>('amount');
    etag = registerOutput<String>('etag');
    filter = registerOutput<BudgetSubscriptionFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetSubscriptionFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    notifications = registerOutput<List<Map<String, dynamic>>>('notifications');
    subscriptionId = registerOutput<String>('subscriptionId');
    timeGrain = registerOutput<String?>('timeGrain');
    timePeriod = registerOutput<BudgetSubscriptionTimePeriod>('timePeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetSubscriptionTimePeriod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [BudgetSubscription] resource's state with the given [name] and [id].
  static BudgetSubscription get(
    String name,
    pulumi.Input<String> id, {
    BudgetSubscriptionState? state,
  }) {
    return BudgetSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BudgetSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:consumption/budgetSubscription:BudgetSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amount = registerOutput<double>('amount');
    etag = registerOutput<String>('etag');
    filter = registerOutput<BudgetSubscriptionFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetSubscriptionFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    notifications = registerOutput<List<Map<String, dynamic>>>('notifications');
    subscriptionId = registerOutput<String>('subscriptionId');
    timeGrain = registerOutput<String?>('timeGrain');
    timePeriod = registerOutput<BudgetSubscriptionTimePeriod>('timePeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetSubscriptionTimePeriod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
