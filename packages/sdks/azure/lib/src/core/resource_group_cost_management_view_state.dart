// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_cost_management_view_dataset.dart';
import 'resource_group_cost_management_view_kpi.dart';
import 'resource_group_cost_management_view_pivot.dart';

/// Input properties used for looking up and filtering ResourceGroupCostManagementView resources.
class ResourceGroupCostManagementViewState {
  /// Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Resource Group to be created.
  final pulumi.Input<bool>? accumulated;
  /// Chart type of the main view in Cost Analysis. Possible values are `Area`, `GroupedColumn`, `Line`, `StackedColumn` and `Table`.
  final pulumi.Input<String>? chartType;
  /// A `dataset` block as defined below.
  final pulumi.Input<ResourceGroupCostManagementViewDataset>? dataset;
  /// User visible input name of the Cost Management View.
  final pulumi.Input<String>? displayName;
  /// One or more `kpi` blocks as defined below, to show in Cost Analysis UI.
  final pulumi.Input<List<ResourceGroupCostManagementViewKpi>>? kpis;
  /// The name which should be used for this Cost Management View for a Resource Group. Changing this forces a new Cost Management View for a Resource Group to be created.
  final pulumi.Input<String>? name;
  /// One or more `pivot` blocks as defined below, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots.
  final pulumi.Input<List<ResourceGroupCostManagementViewPivot>>? pivots;
  /// The type of the report. The only possible value is `Usage`.
  final pulumi.Input<String>? reportType;
  /// The ID of the Resource Group this View is scoped to. Changing this forces a new Cost Management View for a Resource Group to be created.
  final pulumi.Input<String>? resourceGroupId;
  /// The time frame for pulling data for the report. Possible values are `Custom`, `MonthToDate`, `WeekToDate` and `YearToDate`.
  final pulumi.Input<String>? timeframe;

  /// Creates a new [ResourceGroupCostManagementViewState].
  /// [accumulated] Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Resource Group to be created.
  /// [chartType] Chart type of the main view in Cost Analysis. Possible values are `Area`, `GroupedColumn`, `Line`, `StackedColumn` and `Table`.
  /// [dataset] A `dataset` block as defined below.
  /// [displayName] User visible input name of the Cost Management View.
  /// [kpis] One or more `kpi` blocks as defined below, to show in Cost Analysis UI.
  /// [name] The name which should be used for this Cost Management View for a Resource Group. Changing this forces a new Cost Management View for a Resource Group to be created.
  /// [pivots] One or more `pivot` blocks as defined below, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots.
  /// [reportType] The type of the report. The only possible value is `Usage`.
  /// [resourceGroupId] The ID of the Resource Group this View is scoped to. Changing this forces a new Cost Management View for a Resource Group to be created.
  /// [timeframe] The time frame for pulling data for the report. Possible values are `Custom`, `MonthToDate`, `WeekToDate` and `YearToDate`.
  ResourceGroupCostManagementViewState({
    this.accumulated,
    this.chartType,
    this.dataset,
    this.displayName,
    this.kpis,
    this.name,
    this.pivots,
    this.reportType,
    this.resourceGroupId,
    this.timeframe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accumulated': ?accumulated,
      'chartType': ?chartType,
      'dataset': ?pulumi.Input.mapOptionalInputValue<ResourceGroupCostManagementViewDataset, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'displayName': ?displayName,
      'kpis': ?pulumi.Input.mapOptionalInputValue<List<ResourceGroupCostManagementViewKpi>, List<Map<String, dynamic>>>(kpis, (value) => pulumi.Input.encodeList<ResourceGroupCostManagementViewKpi, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'pivots': ?pulumi.Input.mapOptionalInputValue<List<ResourceGroupCostManagementViewPivot>, List<Map<String, dynamic>>>(pivots, (value) => pulumi.Input.encodeList<ResourceGroupCostManagementViewPivot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reportType': ?reportType,
      'resourceGroupId': ?resourceGroupId,
      'timeframe': ?timeframe,
    };
  }

  factory ResourceGroupCostManagementViewState.fromMap(Map<String, dynamic> map) {
    return ResourceGroupCostManagementViewState(
      accumulated: map['accumulated'] == null ? null : (map['accumulated']! as bool).input(),
      chartType: map['chartType'] == null ? null : (map['chartType']! as String).input(),
      dataset: map['dataset'] == null ? null : (ResourceGroupCostManagementViewDataset.fromMap((map['dataset']! as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      kpis: map['kpis'] == null ? null : (pulumi.Input.decodeList<ResourceGroupCostManagementViewKpi>(map['kpis']!, (value) => ResourceGroupCostManagementViewKpi.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      pivots: map['pivots'] == null ? null : (pulumi.Input.decodeList<ResourceGroupCostManagementViewPivot>(map['pivots']!, (value) => ResourceGroupCostManagementViewPivot.fromMap((value as Map).cast<String, dynamic>()))).input(),
      reportType: map['reportType'] == null ? null : (map['reportType']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      timeframe: map['timeframe'] == null ? null : (map['timeframe']! as String).input(),
    );
  }
}

