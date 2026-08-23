// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column_layout_response.dart';
import 'dashboard_filter_response.dart';
import 'grid_layout_response.dart';
import 'mosaic_layout_response.dart';
import 'row_layout_response.dart';

/// Result data returned by getDashboard.
class GetDashboardResult {
  /// The content is divided into equally spaced columns and the widgets are arranged vertically.
  final ColumnLayoutResponse columnLayout;
  /// Filters to reduce the amount of data charted based on the filter criteria.
  final List<DashboardFilterResponse> dashboardFilters;
  /// The mutable, human-readable name.
  final String displayName;
  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. An etag is returned in the response to GetDashboard, and users are expected to put that etag in the request to UpdateDashboard to ensure that their change will be applied to the same version of the Dashboard configuration. The field should not be passed during dashboard creation.
  final String etag;
  /// Content is arranged with a basic layout that re-flows a simple list of informational elements like widgets or tiles.
  final GridLayoutResponse gridLayout;
  /// Labels applied to the dashboard
  final Map<String, String> labels;
  /// The content is arranged as a grid of tiles, with each content widget occupying one or more grid blocks.
  final MosaicLayoutResponse mosaicLayout;
  /// Immutable. The resource name of the dashboard.
  final String name;
  /// The content is divided into equally spaced rows and the widgets are arranged horizontally.
  final RowLayoutResponse rowLayout;

  /// Creates a new [GetDashboardResult].
  /// [columnLayout] The content is divided into equally spaced columns and the widgets are arranged vertically.
  /// [dashboardFilters] Filters to reduce the amount of data charted based on the filter criteria.
  /// [displayName] The mutable, human-readable name.
  /// [etag] etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. An etag is returned in the response to GetDashboard, and users are expected to put that etag in the request to UpdateDashboard to ensure that their change will be applied to the same version of the Dashboard configuration. The field should not be passed during dashboard creation.
  /// [gridLayout] Content is arranged with a basic layout that re-flows a simple list of informational elements like widgets or tiles.
  /// [labels] Labels applied to the dashboard
  /// [mosaicLayout] The content is arranged as a grid of tiles, with each content widget occupying one or more grid blocks.
  /// [name] Immutable. The resource name of the dashboard.
  /// [rowLayout] The content is divided into equally spaced rows and the widgets are arranged horizontally.
  const GetDashboardResult({
    required this.columnLayout,
    required this.dashboardFilters,
    required this.displayName,
    required this.etag,
    required this.gridLayout,
    required this.labels,
    required this.mosaicLayout,
    required this.name,
    required this.rowLayout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnLayout': columnLayout.toMap(),
      'dashboardFilters': pulumi.Input.encodeList<DashboardFilterResponse, Map<String, dynamic>>(dashboardFilters, (value) => value.toMap()),
      'displayName': displayName,
      'etag': etag,
      'gridLayout': gridLayout.toMap(),
      'labels': labels,
      'mosaicLayout': mosaicLayout.toMap(),
      'name': name,
      'rowLayout': rowLayout.toMap(),
    };
  }

  factory GetDashboardResult.fromMap(Map<String, dynamic> map) {
    return GetDashboardResult(
      columnLayout: ColumnLayoutResponse.fromMap((map['columnLayout']! as Map).cast<String, dynamic>()),
      dashboardFilters: pulumi.Input.decodeList<DashboardFilterResponse>(map['dashboardFilters']!, (value) => DashboardFilterResponse.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      gridLayout: GridLayoutResponse.fromMap((map['gridLayout']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      mosaicLayout: MosaicLayoutResponse.fromMap((map['mosaicLayout']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      rowLayout: RowLayoutResponse.fromMap((map['rowLayout']! as Map).cast<String, dynamic>()),
    );
  }
}
