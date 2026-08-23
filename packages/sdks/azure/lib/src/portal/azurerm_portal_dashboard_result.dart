// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by azurermPortalDashboard.
class AzurermPortalDashboardResult {
  /// JSON data representing dashboard body.
  final String dashboardProperties;
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the shared Azure Portal dashboard exists.
  final String location;
  final String? name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the shared Azure Portal dashboard.
  final Map<String, String> tags;

  /// Creates a new [AzurermPortalDashboardResult].
  /// [dashboardProperties] JSON data representing dashboard body.
  /// [displayName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the shared Azure Portal dashboard exists.
  /// [name] Optional.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the shared Azure Portal dashboard.
  const AzurermPortalDashboardResult({
    required this.dashboardProperties,
    this.displayName,
    required this.id,
    required this.location,
    this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardProperties': dashboardProperties,
      'displayName': ?displayName,
      'id': id,
      'location': location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory AzurermPortalDashboardResult.fromMap(Map<String, dynamic> map) {
    return AzurermPortalDashboardResult(
      dashboardProperties: map['dashboardProperties'] as String,
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
