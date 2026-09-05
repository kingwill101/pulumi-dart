// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAnalyticsWorkspace.
class GetAnalyticsWorkspaceResult {
  /// The workspace daily quota for ingestion in GB.
  final double? dailyQuotaGb;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? name;
  /// The Primary shared key for the Log Analytics Workspace.
  final String? primarySharedKey;
  final String? resourceGroupName;
  /// The workspace data retention in days.
  final int? retentionInDays;
  /// The Secondary shared key for the Log Analytics Workspace.
  final String? secondarySharedKey;
  /// The SKU of the Log Analytics Workspace.
  final String? sku;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// The Workspace (or Customer) ID for the Log Analytics Workspace.
  final String? workspaceId;

  /// Creates a new [GetAnalyticsWorkspaceResult].
  /// [dailyQuotaGb] The workspace daily quota for ingestion in GB.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] Optional.
  /// [primarySharedKey] The Primary shared key for the Log Analytics Workspace.
  /// [resourceGroupName] Optional.
  /// [retentionInDays] The workspace data retention in days.
  /// [secondarySharedKey] The Secondary shared key for the Log Analytics Workspace.
  /// [sku] The SKU of the Log Analytics Workspace.
  /// [tags] A mapping of tags assigned to the resource.
  /// [workspaceId] The Workspace (or Customer) ID for the Log Analytics Workspace.
  const GetAnalyticsWorkspaceResult({
    this.dailyQuotaGb,
    this.id,
    this.location,
    this.name,
    this.primarySharedKey,
    this.resourceGroupName,
    this.retentionInDays,
    this.secondarySharedKey,
    this.sku,
    this.tags,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyQuotaGb': ?dailyQuotaGb,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'primarySharedKey': ?primarySharedKey,
      'resourceGroupName': ?resourceGroupName,
      'retentionInDays': ?retentionInDays,
      'secondarySharedKey': ?secondarySharedKey,
      'sku': ?sku,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetAnalyticsWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetAnalyticsWorkspaceResult(
      dailyQuotaGb: (() { final guardedValue = map['dailyQuotaGb']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primarySharedKey: (() { final guardedValue = map['primarySharedKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      secondarySharedKey: (() { final guardedValue = map['secondarySharedKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
