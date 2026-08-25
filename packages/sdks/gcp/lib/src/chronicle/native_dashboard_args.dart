// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'native_dashboard_chart.dart';
import 'native_dashboard_filter.dart';

/// {@template pulumi_chronicle_native_dashboard_native_dashboard_args_doc}
/// The set of arguments for NativeDashboard.
/// {@endtemplate}
/// {@macro pulumi_chronicle_native_dashboard_native_dashboard_args_doc}
class NativeDashboardArgs {
  /// The access level of the dashboard.
  /// Possible values:
  /// DASHBOARD_PRIVATE
  /// DASHBOARD_PUBLIC
  final pulumi.Input<String?>? access;
  /// A list of charts included in the dashboard definition.
  /// Structure is documented below.
  final pulumi.Input<List<NativeDashboardChart>?>? charts;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A description of the dashboard.
  final pulumi.Input<String?>? description;
  /// The display name/title of the dashboard visible to users.
  final pulumi.Input<String> displayName;
  /// Global filters defined for the dashboard.
  /// Structure is documented below.
  final pulumi.Input<List<NativeDashboardFilter>?>? filters;
  /// The ID of the Chronicle instance.
  final pulumi.Input<String> instance;
  /// Whether the dashboard is pinned by the user.
  final pulumi.Input<bool?>? isPinned;
  /// The location of the Chronicle instance.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The type of dashboard.
  /// Possible values:
  /// CURATED, PRIVATE, PUBLIC, CUSTOM, MARKETPLACE
  final pulumi.Input<String?>? type;

  /// Creates a new [NativeDashboardArgs].
  /// [access] The access level of the dashboard.
  /// [charts] A list of charts included in the dashboard definition.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the dashboard.
  /// [displayName] The display name/title of the dashboard visible to users.
  /// [filters] Global filters defined for the dashboard.
  /// [instance] The ID of the Chronicle instance.
  /// [isPinned] Whether the dashboard is pinned by the user.
  /// [location] The location of the Chronicle instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of dashboard.
  const NativeDashboardArgs({
    this.access,
    this.charts,
    this.deletionPolicy,
    this.description,
    required this.displayName,
    this.filters,
    required this.instance,
    this.isPinned,
    required this.location,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': ?access,
      'charts': ?pulumi.Input.mapOptionalInputValue<List<NativeDashboardChart>, List<Map<String, dynamic>>>(charts, (value) => pulumi.Input.encodeList<NativeDashboardChart, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<NativeDashboardFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<NativeDashboardFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instance': instance,
      'isPinned': ?isPinned,
      'location': location,
      'project': ?project,
      'type': ?type,
    };
  }

  factory NativeDashboardArgs.fromMap(Map<String, dynamic> map) {
    return NativeDashboardArgs(
      access: (() { final guardedValue = map['access']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      charts: (() { final guardedValue = map['charts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NativeDashboardChart>(guardedValue, (value) => NativeDashboardChart.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NativeDashboardFilter>(guardedValue, (value) => NativeDashboardFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      isPinned: (() { final guardedValue = map['isPinned']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
