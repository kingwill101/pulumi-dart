import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_cost_management_view_args.dart';
import 'subscription_cost_management_view_dataset.dart';
import 'subscription_cost_management_view_state.dart';

/// Manages an Azure Cost Management View for a Subscription.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.SubscriptionCostManagementView("example", {
///     name: "example",
///     displayName: "Cost View per Month",
///     chartType: "StackedColumn",
///     accumulated: false,
///     subscriptionId: "/subscription/00000000-0000-0000-0000-000000000000",
///     reportType: "Usage",
///     timeframe: "MonthToDate",
///     dataset: {
///         granularity: "Monthly",
///         aggregations: [{
///             name: "totalCost",
///             columnName: "Cost",
///         }],
///     },
///     pivots: [
///         {
///             type: "Dimension",
///             name: "ServiceName",
///         },
///         {
///             type: "Dimension",
///             name: "ResourceLocation",
///         },
///         {
///             type: "Dimension",
///             name: "ResourceGroupName",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.SubscriptionCostManagementView("example",
///     name="example",
///     display_name="Cost View per Month",
///     chart_type="StackedColumn",
///     accumulated=False,
///     subscription_id="/subscription/00000000-0000-0000-0000-000000000000",
///     report_type="Usage",
///     timeframe="MonthToDate",
///     dataset={
///         "granularity": "Monthly",
///         "aggregations": [{
///             "name": "totalCost",
///             "column_name": "Cost",
///         }],
///     },
///     pivots=[
///         {
///             "type": "Dimension",
///             "name": "ServiceName",
///         },
///         {
///             "type": "Dimension",
///             "name": "ResourceLocation",
///         },
///         {
///             "type": "Dimension",
///             "name": "ResourceGroupName",
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
///     var example = new Azure.Core.SubscriptionCostManagementView("example", new()
///     {
///         Name = "example",
///         DisplayName = "Cost View per Month",
///         ChartType = "StackedColumn",
///         Accumulated = false,
///         SubscriptionId = "/subscription/00000000-0000-0000-0000-000000000000",
///         ReportType = "Usage",
///         Timeframe = "MonthToDate",
///         Dataset = new Azure.Core.Inputs.SubscriptionCostManagementViewDatasetArgs
///         {
///             Granularity = "Monthly",
///             Aggregations = new[]
///             {
///                 new Azure.Core.Inputs.SubscriptionCostManagementViewDatasetAggregationArgs
///                 {
///                     Name = "totalCost",
///                     ColumnName = "Cost",
///                 },
///             },
///         },
///         Pivots = new[]
///         {
///             new Azure.Core.Inputs.SubscriptionCostManagementViewPivotArgs
///             {
///                 Type = "Dimension",
///                 Name = "ServiceName",
///             },
///             new Azure.Core.Inputs.SubscriptionCostManagementViewPivotArgs
///             {
///                 Type = "Dimension",
///                 Name = "ResourceLocation",
///             },
///             new Azure.Core.Inputs.SubscriptionCostManagementViewPivotArgs
///             {
///                 Type = "Dimension",
///                 Name = "ResourceGroupName",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.NewSubscriptionCostManagementView(ctx, "example", &core.SubscriptionCostManagementViewArgs{
/// 			Name:           pulumi.String("example"),
/// 			DisplayName:    pulumi.String("Cost View per Month"),
/// 			ChartType:      pulumi.String("StackedColumn"),
/// 			Accumulated:    pulumi.Bool(false),
/// 			SubscriptionId: pulumi.String("/subscription/00000000-0000-0000-0000-000000000000"),
/// 			ReportType:     pulumi.String("Usage"),
/// 			Timeframe:      pulumi.String("MonthToDate"),
/// 			Dataset: &core.SubscriptionCostManagementViewDatasetArgs{
/// 				Granularity: pulumi.String("Monthly"),
/// 				Aggregations: core.SubscriptionCostManagementViewDatasetAggregationArray{
/// 					&core.SubscriptionCostManagementViewDatasetAggregationArgs{
/// 						Name:       pulumi.String("totalCost"),
/// 						ColumnName: pulumi.String("Cost"),
/// 					},
/// 				},
/// 			},
/// 			Pivots: core.SubscriptionCostManagementViewPivotArray{
/// 				&core.SubscriptionCostManagementViewPivotArgs{
/// 					Type: pulumi.String("Dimension"),
/// 					Name: pulumi.String("ServiceName"),
/// 				},
/// 				&core.SubscriptionCostManagementViewPivotArgs{
/// 					Type: pulumi.String("Dimension"),
/// 					Name: pulumi.String("ResourceLocation"),
/// 				},
/// 				&core.SubscriptionCostManagementViewPivotArgs{
/// 					Type: pulumi.String("Dimension"),
/// 					Name: pulumi.String("ResourceGroupName"),
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
/// import com.pulumi.azure.core.SubscriptionCostManagementView;
/// import com.pulumi.azure.core.SubscriptionCostManagementViewArgs;
/// import com.pulumi.azure.core.inputs.SubscriptionCostManagementViewDatasetArgs;
/// import com.pulumi.azure.core.inputs.SubscriptionCostManagementViewPivotArgs;
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
///         var example = new SubscriptionCostManagementView("example", SubscriptionCostManagementViewArgs.builder()
///             .name("example")
///             .displayName("Cost View per Month")
///             .chartType("StackedColumn")
///             .accumulated(false)
///             .subscriptionId("/subscription/00000000-0000-0000-0000-000000000000")
///             .reportType("Usage")
///             .timeframe("MonthToDate")
///             .dataset(SubscriptionCostManagementViewDatasetArgs.builder()
///                 .granularity("Monthly")
///                 .aggregations(SubscriptionCostManagementViewDatasetAggregationArgs.builder()
///                     .name("totalCost")
///                     .columnName("Cost")
///                     .build())
///                 .build())
///             .pivots(
///                 SubscriptionCostManagementViewPivotArgs.builder()
///                     .type("Dimension")
///                     .name("ServiceName")
///                     .build(),
///                 SubscriptionCostManagementViewPivotArgs.builder()
///                     .type("Dimension")
///                     .name("ResourceLocation")
///                     .build(),
///                 SubscriptionCostManagementViewPivotArgs.builder()
///                     .type("Dimension")
///                     .name("ResourceGroupName")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:SubscriptionCostManagementView
///     properties:
///       name: example
///       displayName: Cost View per Month
///       chartType: StackedColumn
///       accumulated: false
///       subscriptionId: /subscription/00000000-0000-0000-0000-000000000000
///       reportType: Usage
///       timeframe: MonthToDate
///       dataset:
///         granularity: Monthly
///         aggregations:
///           - name: totalCost
///             columnName: Cost
///       pivots:
///         - type: Dimension
///           name: ServiceName
///         - type: Dimension
///           name: ResourceLocation
///         - type: Dimension
///           name: ResourceGroupName
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.CostManagement` - 2023-08-01
///
/// ## Import
///
/// Cost Management View for a Subscriptions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/subscriptionCostManagementView:SubscriptionCostManagementView example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.CostManagement/views/costmanagementview
/// ```
class SubscriptionCostManagementView extends pulumi.CustomResource {
  /// Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Subscription to be created.
  late final pulumi.Output<bool> accumulated;
  /// Chart type of the main view in Cost Analysis. Possible values are `Area`, `GroupedColumn`, `Line`, `StackedColumn` and `Table`.
  late final pulumi.Output<String> chartType;
  /// A `dataset` block as defined below.
  late final pulumi.Output<SubscriptionCostManagementViewDataset> dataset;
  /// User visible input name of the Cost Management View.
  late final pulumi.Output<String> displayName;
  /// One or more `kpi` blocks as defined below, to show in Cost Analysis UI.
  late final pulumi.Output<List<Map<String, dynamic>>?> kpis;
  /// The name which should be used for this Cost Management View for a Subscription. Changing this forces a new Cost Management View for a Subscription to be created.
  late final pulumi.Output<String> name;
  /// One or more `pivot` blocks as defined below, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots.
  late final pulumi.Output<List<Map<String, dynamic>>?> pivots;
  /// The type of the report. The only possible value is `Usage`.
  late final pulumi.Output<String> reportType;
  /// The ID of the Subscription this View is scoped to. Changing this forces a new Cost Management View for a Subscription to be created.
  late final pulumi.Output<String> subscriptionId;
  /// The time frame for pulling data for the report. Possible values are `Custom`, `MonthToDate`, `WeekToDate` and `YearToDate`.
  late final pulumi.Output<String> timeframe;

  /// Creates a new [SubscriptionCostManagementView].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionCostManagementView]. {@macro pulumi_core_subscription_cost_management_view_subscription_cost_management_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionCostManagementView(
    String name, {
    SubscriptionCostManagementViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/subscriptionCostManagementView:SubscriptionCostManagementView',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accumulated = registerOutput<bool>('accumulated');
    chartType = registerOutput<String>('chartType');
    dataset = registerOutput<SubscriptionCostManagementViewDataset>('dataset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionCostManagementViewDataset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    kpis = registerOutput<List<Map<String, dynamic>>?>('kpis');
    this.name = registerOutput<String>('name');
    pivots = registerOutput<List<Map<String, dynamic>>?>('pivots');
    reportType = registerOutput<String>('reportType');
    subscriptionId = registerOutput<String>('subscriptionId');
    timeframe = registerOutput<String>('timeframe');
  }

  /// Gets an existing [SubscriptionCostManagementView] resource's state with the given [name] and [id].
  static SubscriptionCostManagementView get(
    String name,
    pulumi.Input<String> id, {
    SubscriptionCostManagementViewState? state,
  }) {
    return SubscriptionCostManagementView._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SubscriptionCostManagementView._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/subscriptionCostManagementView:SubscriptionCostManagementView',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accumulated = registerOutput<bool>('accumulated');
    chartType = registerOutput<String>('chartType');
    dataset = registerOutput<SubscriptionCostManagementViewDataset>('dataset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionCostManagementViewDataset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    kpis = registerOutput<List<Map<String, dynamic>>?>('kpis');
    this.name = registerOutput<String>('name');
    pivots = registerOutput<List<Map<String, dynamic>>?>('pivots');
    reportType = registerOutput<String>('reportType');
    subscriptionId = registerOutput<String>('subscriptionId');
    timeframe = registerOutput<String>('timeframe');
  }
}
