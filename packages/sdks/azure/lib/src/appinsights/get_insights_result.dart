// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getInsights.
class GetInsightsResult {
  /// The App ID associated with this Application Insights component.
  final String appId;

  /// The type of the component.
  final String applicationType;

  /// The connection string of the Application Insights component. (Sensitive)
  final String connectionString;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The instrumentation key of the Application Insights component.
  final String instrumentationKey;

  /// The Azure location where the component exists.
  final String location;
  final String name;
  final String resourceGroupName;

  /// The retention period in days.
  final int retentionInDays;

  /// Tags applied to the component.
  final Map<String, String> tags;

  /// The id of the associated Log Analytics workspace
  final String workspaceId;

  /// Creates a new [GetInsightsResult].
  /// [appId] The App ID associated with this Application Insights component.
  /// [applicationType] The type of the component.
  /// [connectionString] The connection string of the Application Insights component. (Sensitive)
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instrumentationKey] The instrumentation key of the Application Insights component.
  /// [location] The Azure location where the component exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [retentionInDays] The retention period in days.
  /// [tags] Tags applied to the component.
  /// [workspaceId] The id of the associated Log Analytics workspace
  GetInsightsResult({
    required this.appId,
    required this.applicationType,
    required this.connectionString,
    required this.id,
    required this.instrumentationKey,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.retentionInDays,
    required this.tags,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'applicationType': applicationType,
      'connectionString': connectionString,
      'id': id,
      'instrumentationKey': instrumentationKey,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'retentionInDays': retentionInDays,
      'tags': tags,
      'workspaceId': workspaceId,
    };
  }

  factory GetInsightsResult.fromMap(Map<String, dynamic> map) {
    return GetInsightsResult(
      appId: map['appId'] as String,
      applicationType: map['applicationType'] as String,
      connectionString: map['connectionString'] as String,
      id: map['id'] as String,
      instrumentationKey: map['instrumentationKey'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      retentionInDays: map['retentionInDays'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
      workspaceId: map['workspaceId'] as String,
    );
  }
}
