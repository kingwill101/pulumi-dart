import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_management_group_args.dart';
import 'budget_management_group_filter.dart';
import 'budget_management_group_state.dart';
import 'budget_management_group_time_period.dart';

/// Manages a Consumption Budget for a Management Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.management.Group("example", {displayName: "example"});
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "eastus",
/// });
/// const exampleBudgetManagementGroup = new azure.consumption.BudgetManagementGroup("example", {
///     name: "example",
///     managementGroupId: example.id,
///     amount: 1000,
///     timeGrain: "Monthly",
///     timePeriod: {
///         startDate: "2022-06-01T00:00:00Z",
///         endDate: "2022-07-01T00:00:00Z",
///     },
///     filter: {
///         dimensions: [{
///             name: "ResourceGroupName",
///             values: [exampleResourceGroup.name],
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
/// example = azure.management.Group("example", display_name="example")
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example",
///     location="eastus")
/// example_budget_management_group = azure.consumption.BudgetManagementGroup("example",
///     name="example",
///     management_group_id=example.id,
///     amount=float(1000),
///     time_grain="Monthly",
///     time_period={
///         "start_date": "2022-06-01T00:00:00Z",
///         "end_date": "2022-07-01T00:00:00Z",
///     },
///     filter={
///         "dimensions": [{
///             "name": "ResourceGroupName",
///             "values": [example_resource_group.name],
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
///     var example = new Azure.Management.Group("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example",
///         Location = "eastus",
///     });
///
///     var exampleBudgetManagementGroup = new Azure.Consumption.BudgetManagementGroup("example", new()
///     {
///         Name = "example",
///         ManagementGroupId = example.Id,
///         Amount = 1000,
///         TimeGrain = "Monthly",
///         TimePeriod = new Azure.Consumption.Inputs.BudgetManagementGroupTimePeriodArgs
///         {
///             StartDate = "2022-06-01T00:00:00Z",
///             EndDate = "2022-07-01T00:00:00Z",
///         },
///         Filter = new Azure.Consumption.Inputs.BudgetManagementGroupFilterArgs
///         {
///             Dimensions = new[]
///             {
///                 new Azure.Consumption.Inputs.BudgetManagementGroupFilterDimensionArgs
///                 {
///                     Name = "ResourceGroupName",
///                     Values = new[]
///                     {
///                         exampleResourceGroup.Name,
///                     },
///                 },
///             },
///             Tags = new[]
///             {
///                 new Azure.Consumption.Inputs.BudgetManagementGroupFilterTagArgs
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
///             new Azure.Consumption.Inputs.BudgetManagementGroupNotificationArgs
///             {
///                 Enabled = true,
///                 Threshold = 90,
///                 Operator = "EqualTo",
///                 ContactEmails = new[]
///                 {
///                     "foo@example.com",
///                     "bar@example.com",
///                 },
///             },
///             new Azure.Consumption.Inputs.BudgetManagementGroupNotificationArgs
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := management.NewGroup(ctx, "example", &management.GroupArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("eastus"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = consumption.NewBudgetManagementGroup(ctx, "example", &consumption.BudgetManagementGroupArgs{
/// 			Name:              pulumi.String("example"),
/// 			ManagementGroupId: example.ID(),
/// 			Amount:            pulumi.Float64(1000),
/// 			TimeGrain:         pulumi.String("Monthly"),
/// 			TimePeriod: &consumption.BudgetManagementGroupTimePeriodArgs{
/// 				StartDate: pulumi.String("2022-06-01T00:00:00Z"),
/// 				EndDate:   pulumi.String("2022-07-01T00:00:00Z"),
/// 			},
/// 			Filter: &consumption.BudgetManagementGroupFilterArgs{
/// 				Dimensions: consumption.BudgetManagementGroupFilterDimensionArray{
/// 					&consumption.BudgetManagementGroupFilterDimensionArgs{
/// 						Name: pulumi.String("ResourceGroupName"),
/// 						Values: pulumi.StringArray{
/// 							exampleResourceGroup.Name,
/// 						},
/// 					},
/// 				},
/// 				Tags: consumption.BudgetManagementGroupFilterTagArray{
/// 					&consumption.BudgetManagementGroupFilterTagArgs{
/// 						Name: pulumi.String("foo"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("bar"),
/// 							pulumi.String("baz"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Notifications: consumption.BudgetManagementGroupNotificationArray{
/// 				&consumption.BudgetManagementGroupNotificationArgs{
/// 					Enabled:   pulumi.Bool(true),
/// 					Threshold: pulumi.Int(90),
/// 					Operator:  pulumi.String("EqualTo"),
/// 					ContactEmails: pulumi.StringArray{
/// 						pulumi.String("foo@example.com"),
/// 						pulumi.String("bar@example.com"),
/// 					},
/// 				},
/// 				&consumption.BudgetManagementGroupNotificationArgs{
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
/// resource "azure_management_group" "example" {
///   display_name = "example"
/// }
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example"
///   location = "eastus"
/// }
/// resource "azure_consumption_budgetmanagementgroup" "example" {
///   name                = "example"
///   management_group_id = azure_management_group.example.id
///   amount              = 1000
///   time_grain          = "Monthly"
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
/// import com.pulumi.azure.management.Group;
/// import com.pulumi.azure.management.GroupArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.consumption.BudgetManagementGroup;
/// import com.pulumi.azure.consumption.BudgetManagementGroupArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetManagementGroupTimePeriodArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetManagementGroupFilterArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetManagementGroupFilterDimensionArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetManagementGroupFilterTagArgs;
/// import com.pulumi.azure.consumption.inputs.BudgetManagementGroupNotificationArgs;
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
///         var example = new Group("example", GroupArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example")
///             .location("eastus")
///             .build());
///
///         var exampleBudgetManagementGroup = new BudgetManagementGroup("exampleBudgetManagementGroup", BudgetManagementGroupArgs.builder()
///             .name("example")
///             .managementGroupId(example.id())
///             .amount(1000.0)
///             .timeGrain("Monthly")
///             .timePeriod(BudgetManagementGroupTimePeriodArgs.builder()
///                 .startDate("2022-06-01T00:00:00Z")
///                 .endDate("2022-07-01T00:00:00Z")
///                 .build())
///             .filter(BudgetManagementGroupFilterArgs.builder()
///                 .dimensions(BudgetManagementGroupFilterDimensionArgs.builder()
///                     .name("ResourceGroupName")
///                     .values(exampleResourceGroup.name())
///                     .build())
///                 .tags(BudgetManagementGroupFilterTagArgs.builder()
///                     .name("foo")
///                     .values(
///                         "bar",
///                         "baz")
///                     .build())
///                 .build())
///             .notifications(
///                 BudgetManagementGroupNotificationArgs.builder()
///                     .enabled(true)
///                     .threshold(90)
///                     .operator("EqualTo")
///                     .contactEmails(
///                         "foo@example.com",
///                         "bar@example.com")
///                     .build(),
///                 BudgetManagementGroupNotificationArgs.builder()
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
///     type: azure:management:Group
///     properties:
///       displayName: example
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example
///       location: eastus
///   exampleBudgetManagementGroup:
///     type: azure:consumption:BudgetManagementGroup
///     name: example
///     properties:
///       name: example
///       managementGroupId: ${example.id}
///       amount: 1000
///       timeGrain: Monthly
///       timePeriod:
///         startDate: 2022-06-01T00:00:00Z
///         endDate: 2022-07-01T00:00:00Z
///       filter:
///         dimensions:
///           - name: ResourceGroupName
///             values:
///               - ${exampleResourceGroup.name}
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
///         - enabled: false
///           threshold: 100
///           operator: GreaterThan
///           thresholdType: Forecasted
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
/// Management Group Consumption Budgets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:consumption/budgetManagementGroup:BudgetManagementGroup example /providers/Microsoft.Management/managementGroups/00000000-0000-0000-0000-000000000000/providers/Microsoft.Consumption/budgets/budget1
/// ```
class BudgetManagementGroup extends pulumi.CustomResource {
  /// The total amount of cost to track with the budget.
  late final pulumi.Output<double> amount;
  /// (Optional) The ETag of the Management Group Consumption Budget.
  late final pulumi.Output<String> etag;
  /// A `filter` block as defined below.
  late final pulumi.Output<BudgetManagementGroupFilter?> filter;
  /// The ID of the Management Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managementGroupId;
  /// The name which should be used for this Management Group Consumption Budget. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `notification` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> notifications;
  /// The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> timeGrain;
  /// A `timePeriod` block as defined below.
  late final pulumi.Output<BudgetManagementGroupTimePeriod> timePeriod;

  /// Creates a new [BudgetManagementGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BudgetManagementGroup]. {@macro pulumi_consumption_budget_management_group_budget_management_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BudgetManagementGroup(
    String name, {
    BudgetManagementGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:consumption/budgetManagementGroup:BudgetManagementGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amount = registerOutput<double>('amount');
    etag = registerOutput<String>('etag');
    filter = registerOutput<BudgetManagementGroupFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetManagementGroupFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managementGroupId = registerOutput<String>('managementGroupId');
    this.name = registerOutput<String>('name');
    notifications = registerOutput<List<Map<String, dynamic>>>('notifications');
    timeGrain = registerOutput<String?>('timeGrain');
    timePeriod = registerOutput<BudgetManagementGroupTimePeriod>('timePeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetManagementGroupTimePeriod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [BudgetManagementGroup] resource's state with the given [name] and [id].
  static BudgetManagementGroup get(
    String name,
    pulumi.Input<String> id, {
    BudgetManagementGroupState? state,
  }) {
    return BudgetManagementGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BudgetManagementGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:consumption/budgetManagementGroup:BudgetManagementGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amount = registerOutput<double>('amount');
    etag = registerOutput<String>('etag');
    filter = registerOutput<BudgetManagementGroupFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetManagementGroupFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managementGroupId = registerOutput<String>('managementGroupId');
    this.name = registerOutput<String>('name');
    notifications = registerOutput<List<Map<String, dynamic>>>('notifications');
    timeGrain = registerOutput<String?>('timeGrain');
    timePeriod = registerOutput<BudgetManagementGroupTimePeriod>('timePeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetManagementGroupTimePeriod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
