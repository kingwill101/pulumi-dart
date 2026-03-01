// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_cost_management_view_dataset.dart';
import 'subscription_cost_management_view_kpi.dart';
import 'subscription_cost_management_view_pivot.dart';

/// {@template pulumi_core_subscription_cost_management_view_subscription_cost_management_view_args_doc}
/// The set of arguments for SubscriptionCostManagementView.
/// {@endtemplate}
/// {@macro pulumi_core_subscription_cost_management_view_subscription_cost_management_view_args_doc}
class SubscriptionCostManagementViewArgs {
  /// Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Subscription to be created.
  final pulumi.Input<bool> accumulated;
  /// Chart type of the main view in Cost Analysis. Possible values are `Area`, `GroupedColumn`, `Line`, `StackedColumn` and `Table`.
  final pulumi.Input<String> chartType;
  /// A `dataset` block as defined below.
  final pulumi.Input<SubscriptionCostManagementViewDataset> dataset;
  /// User visible input name of the Cost Management View.
  final pulumi.Input<String> displayName;
  /// One or more `kpi` blocks as defined below, to show in Cost Analysis UI.
  final pulumi.Input<List<SubscriptionCostManagementViewKpi>>? kpis;
  /// The name which should be used for this Cost Management View for a Subscription. Changing this forces a new Cost Management View for a Subscription to be created.
  final pulumi.Input<String>? name;
  /// One or more `pivot` blocks as defined below, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots.
  final pulumi.Input<List<SubscriptionCostManagementViewPivot>>? pivots;
  /// The type of the report. The only possible value is `Usage`.
  final pulumi.Input<String> reportType;
  /// The ID of the Subscription this View is scoped to. Changing this forces a new Cost Management View for a Subscription to be created.
  final pulumi.Input<String> subscriptionId;
  /// The time frame for pulling data for the report. Possible values are `Custom`, `MonthToDate`, `WeekToDate` and `YearToDate`.
  final pulumi.Input<String> timeframe;

  /// Creates a new [SubscriptionCostManagementViewArgs].
  /// [accumulated] Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Subscription to be created.
  /// [chartType] Chart type of the main view in Cost Analysis. Possible values are `Area`, `GroupedColumn`, `Line`, `StackedColumn` and `Table`.
  /// [dataset] A `dataset` block as defined below.
  /// [displayName] User visible input name of the Cost Management View.
  /// [kpis] One or more `kpi` blocks as defined below, to show in Cost Analysis UI.
  /// [name] The name which should be used for this Cost Management View for a Subscription. Changing this forces a new Cost Management View for a Subscription to be created.
  /// [pivots] One or more `pivot` blocks as defined below, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots.
  /// [reportType] The type of the report. The only possible value is `Usage`.
  /// [subscriptionId] The ID of the Subscription this View is scoped to. Changing this forces a new Cost Management View for a Subscription to be created.
  /// [timeframe] The time frame for pulling data for the report. Possible values are `Custom`, `MonthToDate`, `WeekToDate` and `YearToDate`.
  SubscriptionCostManagementViewArgs({
    required pulumi.Output<bool> accumulated,
    required pulumi.Output<String> chartType,
    required pulumi.Output<SubscriptionCostManagementViewDataset> dataset,
    required pulumi.Output<String> displayName,
    pulumi.Output<List<SubscriptionCostManagementViewKpi>>? kpis,
    pulumi.Output<String>? name,
    pulumi.Output<List<SubscriptionCostManagementViewPivot>>? pivots,
    required pulumi.Output<String> reportType,
    required pulumi.Output<String> subscriptionId,
    required pulumi.Output<String> timeframe,
  }) :
      accumulated = pulumi.Input.asInput<bool>(accumulated),
      chartType = pulumi.Input.asInput<String>(chartType),
      dataset = pulumi.Input.asInput<SubscriptionCostManagementViewDataset>(dataset),
      displayName = pulumi.Input.asInput<String>(displayName),
      kpis = pulumi.Input.asOptionalInput<List<SubscriptionCostManagementViewKpi>>(kpis),
      name = pulumi.Input.asOptionalInput<String>(name),
      pivots = pulumi.Input.asOptionalInput<List<SubscriptionCostManagementViewPivot>>(pivots),
      reportType = pulumi.Input.asInput<String>(reportType),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId),
      timeframe = pulumi.Input.asInput<String>(timeframe);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accumulated': accumulated,
      'chartType': chartType,
      'dataset': pulumi.Input.mapInputValue<SubscriptionCostManagementViewDataset, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'displayName': displayName,
      'kpis': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionCostManagementViewKpi>, List<Map<String, dynamic>>>(kpis, (value) => pulumi.Input.encodeList<SubscriptionCostManagementViewKpi, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'pivots': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionCostManagementViewPivot>, List<Map<String, dynamic>>>(pivots, (value) => pulumi.Input.encodeList<SubscriptionCostManagementViewPivot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reportType': reportType,
      'subscriptionId': subscriptionId,
      'timeframe': timeframe,
    };
  }

  factory SubscriptionCostManagementViewArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionCostManagementViewArgs(
      accumulated: pulumi.Output.create<bool>(map['accumulated'] as bool),
      chartType: pulumi.Output.create<String>(map['chartType'] as String),
      dataset: pulumi.Output.create<SubscriptionCostManagementViewDataset>(SubscriptionCostManagementViewDataset.fromMap((map['dataset'] as Map).cast<String, dynamic>())),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      kpis: map['kpis'] == null ? null : pulumi.Output.create<List<SubscriptionCostManagementViewKpi>>(pulumi.Input.decodeList<SubscriptionCostManagementViewKpi>(map['kpis'], (value) => SubscriptionCostManagementViewKpi.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pivots: map['pivots'] == null ? null : pulumi.Output.create<List<SubscriptionCostManagementViewPivot>>(pulumi.Input.decodeList<SubscriptionCostManagementViewPivot>(map['pivots'], (value) => SubscriptionCostManagementViewPivot.fromMap((value as Map).cast<String, dynamic>()))),
      reportType: pulumi.Output.create<String>(map['reportType'] as String),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
      timeframe: pulumi.Output.create<String>(map['timeframe'] as String),
    );
  }
}

