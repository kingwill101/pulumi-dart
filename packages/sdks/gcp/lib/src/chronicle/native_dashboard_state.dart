// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'native_dashboard_chart.dart';
import 'native_dashboard_filter.dart';

/// Input properties used for looking up and filtering NativeDashboard resources.
class NativeDashboardState {
  /// The access level of the dashboard.
  /// Possible values:
  /// DASHBOARD_PRIVATE
  /// DASHBOARD_PUBLIC
  final pulumi.Input<String?>? access;
  /// A list of charts included in the dashboard definition.
  /// Structure is documented below.
  final pulumi.Input<List<NativeDashboardChart>?>? charts;
  /// The creation time of the dashboard.
  final pulumi.Input<String?>? createTime;
  /// The ID of the user who created the dashboard.
  final pulumi.Input<String?>? createUserId;
  /// The unique ID of the Dashboard.
  final pulumi.Input<String?>? dashboardId;
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
  final pulumi.Input<String?>? displayName;
  /// Server-computed checksum for optimistic concurrency control,
  /// sent on update and delete requests.
  final pulumi.Input<String?>? etag;
  /// Global filters defined for the dashboard.
  /// Structure is documented below.
  final pulumi.Input<List<NativeDashboardFilter>?>? filters;
  /// (Output)
  /// The server-generated fingerprint of the dashboard definition.
  final pulumi.Input<String?>? fingerprint;
  /// The ID of the Chronicle instance.
  final pulumi.Input<String?>? instance;
  /// Whether the dashboard is pinned by the user.
  final pulumi.Input<bool?>? isPinned;
  /// (Output)
  /// The time when this dashboard was last viewed.
  final pulumi.Input<String?>? lastViewedTime;
  /// The location of the Chronicle instance.
  final pulumi.Input<String?>? location;
  /// The full resource name of the dashboard.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The type of dashboard.
  /// Possible values:
  /// CURATED, PRIVATE, PUBLIC, CUSTOM, MARKETPLACE
  final pulumi.Input<String?>? type;
  /// The time when the dashboard was last edited.
  final pulumi.Input<String?>? updateTime;
  /// The ID of the user who last edited the dashboard.
  final pulumi.Input<String?>? updateUserId;

  /// Creates a new [NativeDashboardState].
  /// [access] The access level of the dashboard.
  /// [charts] A list of charts included in the dashboard definition.
  /// [createTime] The creation time of the dashboard.
  /// [createUserId] The ID of the user who created the dashboard.
  /// [dashboardId] The unique ID of the Dashboard.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the dashboard.
  /// [displayName] The display name/title of the dashboard visible to users.
  /// [etag] Server-computed checksum for optimistic concurrency control,
  /// [filters] Global filters defined for the dashboard.
  /// [fingerprint] (Output)
  /// [instance] The ID of the Chronicle instance.
  /// [isPinned] Whether the dashboard is pinned by the user.
  /// [lastViewedTime] (Output)
  /// [location] The location of the Chronicle instance.
  /// [name] The full resource name of the dashboard.
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of dashboard.
  /// [updateTime] The time when the dashboard was last edited.
  /// [updateUserId] The ID of the user who last edited the dashboard.
  const NativeDashboardState({
    this.access,
    this.charts,
    this.createTime,
    this.createUserId,
    this.dashboardId,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.etag,
    this.filters,
    this.fingerprint,
    this.instance,
    this.isPinned,
    this.lastViewedTime,
    this.location,
    this.name,
    this.project,
    this.type,
    this.updateTime,
    this.updateUserId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': ?access,
      'charts': ?pulumi.Input.mapOptionalInputValue<List<NativeDashboardChart>, List<Map<String, dynamic>>>(charts, (value) => pulumi.Input.encodeList<NativeDashboardChart, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'createUserId': ?createUserId,
      'dashboardId': ?dashboardId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<NativeDashboardFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<NativeDashboardFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fingerprint': ?fingerprint,
      'instance': ?instance,
      'isPinned': ?isPinned,
      'lastViewedTime': ?lastViewedTime,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'type': ?type,
      'updateTime': ?updateTime,
      'updateUserId': ?updateUserId,
    };
  }

  factory NativeDashboardState.fromMap(Map<String, dynamic> map) {
    return NativeDashboardState(
      access: (() { final guardedValue = map['access']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      charts: (() { final guardedValue = map['charts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NativeDashboardChart>(guardedValue, (value) => NativeDashboardChart.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createUserId: (() { final guardedValue = map['createUserId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dashboardId: (() { final guardedValue = map['dashboardId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NativeDashboardFilter>(guardedValue, (value) => NativeDashboardFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPinned: (() { final guardedValue = map['isPinned']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastViewedTime: (() { final guardedValue = map['lastViewedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateUserId: (() { final guardedValue = map['updateUserId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
