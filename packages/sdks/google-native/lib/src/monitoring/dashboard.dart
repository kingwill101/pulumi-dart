import 'package:pulumi/pulumi.dart' as pulumi;
import 'column_layout_response.dart';
import 'dashboard_args.dart';
import 'dashboard_filter_response.dart';
import 'grid_layout_response.dart';
import 'mosaic_layout_response.dart';
import 'row_layout_response.dart';

/// Creates a new custom dashboard. For examples on how you can use this API to create dashboards, see Managing dashboards by API (https://cloud.google.com/monitoring/dashboards/api-dashboard). This method requires the monitoring.dashboards.create permission on the specified project. For more information about permissions, see Cloud Identity and Access Management (https://cloud.google.com/iam).
class Dashboard extends pulumi.CustomResource {
  /// The content is divided into equally spaced columns and the widgets are arranged vertically.
  late final pulumi.Output<ColumnLayoutResponse> columnLayout;
  /// Filters to reduce the amount of data charted based on the filter criteria.
  late final pulumi.Output<List<DashboardFilterResponse>> dashboardFilters;
  /// The mutable, human-readable name.
  late final pulumi.Output<String> displayName;
  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. An etag is returned in the response to GetDashboard, and users are expected to put that etag in the request to UpdateDashboard to ensure that their change will be applied to the same version of the Dashboard configuration. The field should not be passed during dashboard creation.
  late final pulumi.Output<String> etag;
  /// Content is arranged with a basic layout that re-flows a simple list of informational elements like widgets or tiles.
  late final pulumi.Output<GridLayoutResponse> gridLayout;
  /// Labels applied to the dashboard
  late final pulumi.Output<Map<String, String>> labels;
  /// The content is arranged as a grid of tiles, with each content widget occupying one or more grid blocks.
  late final pulumi.Output<MosaicLayoutResponse> mosaicLayout;
  /// Immutable. The resource name of the dashboard.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The content is divided into equally spaced rows and the widgets are arranged horizontally.
  late final pulumi.Output<RowLayoutResponse> rowLayout;

  /// Creates a new [Dashboard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dashboard]. {@macro pulumi_monitoring_v1_dashboard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dashboard(
    String name, {
    DashboardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:monitoring/v1:Dashboard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['project']).merge(options),
        ) {
    columnLayout = registerOutput<ColumnLayoutResponse>('columnLayout', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ColumnLayoutResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dashboardFilters = registerOutput<List<DashboardFilterResponse>>('dashboardFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DashboardFilterResponse>(guardedValue, (value) => DashboardFilterResponse.fromMap((value as Map).cast<String, dynamic>())); });
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    gridLayout = registerOutput<GridLayoutResponse>('gridLayout', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GridLayoutResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    mosaicLayout = registerOutput<MosaicLayoutResponse>('mosaicLayout', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MosaicLayoutResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rowLayout = registerOutput<RowLayoutResponse>('rowLayout', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RowLayoutResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Dashboard] resource.
  Dashboard.reference(String urn)
    : super(
        'google-native:monitoring/v1:Dashboard',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    columnLayout = registerOutput<ColumnLayoutResponse>('columnLayout', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ColumnLayoutResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dashboardFilters = registerOutput<List<DashboardFilterResponse>>('dashboardFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DashboardFilterResponse>(guardedValue, (value) => DashboardFilterResponse.fromMap((value as Map).cast<String, dynamic>())); });
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    gridLayout = registerOutput<GridLayoutResponse>('gridLayout', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GridLayoutResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    mosaicLayout = registerOutput<MosaicLayoutResponse>('mosaicLayout', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MosaicLayoutResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rowLayout = registerOutput<RowLayoutResponse>('rowLayout', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RowLayoutResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
