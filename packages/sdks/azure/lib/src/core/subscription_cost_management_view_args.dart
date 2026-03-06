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
  const SubscriptionCostManagementViewArgs({
    required this.accumulated,
    required this.chartType,
    required this.dataset,
    required this.displayName,
    this.kpis,
    this.name,
    this.pivots,
    required this.reportType,
    required this.subscriptionId,
    required this.timeframe,
  });

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
      accumulated: pulumi.Input.fromValue(map['accumulated'] as bool),
      chartType: pulumi.Input.fromValue(map['chartType'] as String),
      dataset: pulumi.Input.fromValue(SubscriptionCostManagementViewDataset.fromMap((map['dataset']! as Map).cast<String, dynamic>())),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      kpis: (() { final guardedValue = map['kpis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriptionCostManagementViewKpi>(guardedValue, (value) => SubscriptionCostManagementViewKpi.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pivots: (() { final guardedValue = map['pivots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriptionCostManagementViewPivot>(guardedValue, (value) => SubscriptionCostManagementViewPivot.fromMap((value as Map).cast<String, dynamic>()))); })(),
      reportType: pulumi.Input.fromValue(map['reportType'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
      timeframe: pulumi.Input.fromValue(map['timeframe'] as String),
    );
  }
}

