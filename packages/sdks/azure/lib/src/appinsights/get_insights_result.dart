// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInsights.
class GetInsightsResult {
  /// The App ID associated with this Application Insights component.
  final String? appId;
  /// The type of the component.
  final String? applicationType;
  /// The connection string of the Application Insights component. (Sensitive)
  final String? connectionString;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The instrumentation key of the Application Insights component.
  final String? instrumentationKey;
  /// The Azure location where the component exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The retention period in days.
  final int? retentionInDays;
  /// Tags applied to the component.
  final Map<String, String>? tags;
  /// The id of the associated Log Analytics workspace
  final String? workspaceId;

  /// Creates a new [GetInsightsResult].
  /// [appId] The App ID associated with this Application Insights component.
  /// [applicationType] The type of the component.
  /// [connectionString] The connection string of the Application Insights component. (Sensitive)
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instrumentationKey] The instrumentation key of the Application Insights component.
  /// [location] The Azure location where the component exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [retentionInDays] The retention period in days.
  /// [tags] Tags applied to the component.
  /// [workspaceId] The id of the associated Log Analytics workspace
  const GetInsightsResult({
    this.appId,
    this.applicationType,
    this.connectionString,
    this.id,
    this.instrumentationKey,
    this.location,
    this.name,
    this.resourceGroupName,
    this.retentionInDays,
    this.tags,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'applicationType': ?applicationType,
      'connectionString': ?connectionString,
      'id': ?id,
      'instrumentationKey': ?instrumentationKey,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'retentionInDays': ?retentionInDays,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetInsightsResult.fromMap(Map<String, dynamic> map) {
    return GetInsightsResult(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      applicationType: (() { final guardedValue = map['applicationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instrumentationKey: (() { final guardedValue = map['instrumentationKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
