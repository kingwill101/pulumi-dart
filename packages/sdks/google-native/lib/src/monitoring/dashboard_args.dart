// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column_layout.dart';
import 'dashboard_filter.dart';
import 'grid_layout.dart';
import 'mosaic_layout.dart';
import 'row_layout.dart';

/// {@template pulumi_monitoring_v1_dashboard_args_doc}
/// The set of arguments for Dashboard.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v1_dashboard_args_doc}
class DashboardArgs {
  /// The content is divided into equally spaced columns and the widgets are arranged vertically.
  final pulumi.Input<ColumnLayout>? columnLayout;
  /// Filters to reduce the amount of data charted based on the filter criteria.
  final pulumi.Input<List<DashboardFilter>>? dashboardFilters;
  /// The mutable, human-readable name.
  final pulumi.Input<String> displayName;
  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. An etag is returned in the response to GetDashboard, and users are expected to put that etag in the request to UpdateDashboard to ensure that their change will be applied to the same version of the Dashboard configuration. The field should not be passed during dashboard creation.
  final pulumi.Input<String>? etag;
  /// Content is arranged with a basic layout that re-flows a simple list of informational elements like widgets or tiles.
  final pulumi.Input<GridLayout>? gridLayout;
  /// Labels applied to the dashboard
  final pulumi.Input<Map<String, String>>? labels;
  /// The content is arranged as a grid of tiles, with each content widget occupying one or more grid blocks.
  final pulumi.Input<MosaicLayout>? mosaicLayout;
  /// Immutable. The resource name of the dashboard.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The content is divided into equally spaced rows and the widgets are arranged horizontally.
  final pulumi.Input<RowLayout>? rowLayout;

  /// Creates a new [DashboardArgs].
  /// [columnLayout] The content is divided into equally spaced columns and the widgets are arranged vertically.
  /// [dashboardFilters] Filters to reduce the amount of data charted based on the filter criteria.
  /// [displayName] The mutable, human-readable name.
  /// [etag] etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. An etag is returned in the response to GetDashboard, and users are expected to put that etag in the request to UpdateDashboard to ensure that their change will be applied to the same version of the Dashboard configuration. The field should not be passed during dashboard creation.
  /// [gridLayout] Content is arranged with a basic layout that re-flows a simple list of informational elements like widgets or tiles.
  /// [labels] Labels applied to the dashboard
  /// [mosaicLayout] The content is arranged as a grid of tiles, with each content widget occupying one or more grid blocks.
  /// [name] Immutable. The resource name of the dashboard.
  /// [project] Optional.
  /// [rowLayout] The content is divided into equally spaced rows and the widgets are arranged horizontally.
  DashboardArgs({
    pulumi.Output<ColumnLayout>? columnLayout,
    pulumi.Output<List<DashboardFilter>>? dashboardFilters,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<GridLayout>? gridLayout,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<MosaicLayout>? mosaicLayout,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<RowLayout>? rowLayout,
  }) :
      columnLayout = pulumi.Input.asOptionalInput<ColumnLayout>(columnLayout),
      dashboardFilters = pulumi.Input.asOptionalInput<List<DashboardFilter>>(dashboardFilters),
      displayName = pulumi.Input.asInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      gridLayout = pulumi.Input.asOptionalInput<GridLayout>(gridLayout),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      mosaicLayout = pulumi.Input.asOptionalInput<MosaicLayout>(mosaicLayout),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rowLayout = pulumi.Input.asOptionalInput<RowLayout>(rowLayout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnLayout': ?pulumi.Input.mapOptionalInputValue<ColumnLayout, Map<String, dynamic>>(columnLayout, (value) => value.toMap()),
      'dashboardFilters': ?pulumi.Input.mapOptionalInputValue<List<DashboardFilter>, List<Map<String, dynamic>>>(dashboardFilters, (value) => pulumi.Input.encodeList<DashboardFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': displayName,
      'etag': ?etag,
      'gridLayout': ?pulumi.Input.mapOptionalInputValue<GridLayout, Map<String, dynamic>>(gridLayout, (value) => value.toMap()),
      'labels': ?labels,
      'mosaicLayout': ?pulumi.Input.mapOptionalInputValue<MosaicLayout, Map<String, dynamic>>(mosaicLayout, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'rowLayout': ?pulumi.Input.mapOptionalInputValue<RowLayout, Map<String, dynamic>>(rowLayout, (value) => value.toMap()),
    };
  }

  factory DashboardArgs.fromMap(Map<String, dynamic> map) {
    return DashboardArgs(
      columnLayout: map['columnLayout'] == null ? null : pulumi.Output.create<ColumnLayout>(ColumnLayout.fromMap((map['columnLayout'] as Map).cast<String, dynamic>())),
      dashboardFilters: map['dashboardFilters'] == null ? null : pulumi.Output.create<List<DashboardFilter>>(pulumi.Input.decodeList<DashboardFilter>(map['dashboardFilters'], (value) => DashboardFilter.fromMap((value as Map).cast<String, dynamic>()))),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      gridLayout: map['gridLayout'] == null ? null : pulumi.Output.create<GridLayout>(GridLayout.fromMap((map['gridLayout'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      mosaicLayout: map['mosaicLayout'] == null ? null : pulumi.Output.create<MosaicLayout>(MosaicLayout.fromMap((map['mosaicLayout'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rowLayout: map['rowLayout'] == null ? null : pulumi.Output.create<RowLayout>(RowLayout.fromMap((map['rowLayout'] as Map).cast<String, dynamic>())),
    );
  }
}

