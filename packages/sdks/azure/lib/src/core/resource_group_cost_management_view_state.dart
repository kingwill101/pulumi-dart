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
  const ResourceGroupCostManagementViewState({
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
      accumulated: (() { final guardedValue = map['accumulated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      chartType: (() { final guardedValue = map['chartType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceGroupCostManagementViewDataset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kpis: (() { final guardedValue = map['kpis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceGroupCostManagementViewKpi>(guardedValue, (value) => ResourceGroupCostManagementViewKpi.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pivots: (() { final guardedValue = map['pivots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceGroupCostManagementViewPivot>(guardedValue, (value) => ResourceGroupCostManagementViewPivot.fromMap((value as Map).cast<String, dynamic>()))); })(),
      reportType: (() { final guardedValue = map['reportType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeframe: (() { final guardedValue = map['timeframe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
