// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAnalyticsWorkspace.
class GetAnalyticsWorkspaceResult {
  /// The workspace daily quota for ingestion in GB.
  final double dailyQuotaGb;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;

  /// The Primary shared key for the Log Analytics Workspace.
  final String primarySharedKey;
  final String resourceGroupName;

  /// The workspace data retention in days.
  final int retentionInDays;

  /// The Secondary shared key for the Log Analytics Workspace.
  final String secondarySharedKey;

  /// The SKU of the Log Analytics Workspace.
  final String sku;

  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// The Workspace (or Customer) ID for the Log Analytics Workspace.
  final String workspaceId;

  /// Creates a new [GetAnalyticsWorkspaceResult].
  /// [dailyQuotaGb] The workspace daily quota for ingestion in GB.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] Required.
  /// [primarySharedKey] The Primary shared key for the Log Analytics Workspace.
  /// [resourceGroupName] Required.
  /// [retentionInDays] The workspace data retention in days.
  /// [secondarySharedKey] The Secondary shared key for the Log Analytics Workspace.
  /// [sku] The SKU of the Log Analytics Workspace.
  /// [tags] A mapping of tags assigned to the resource.
  /// [workspaceId] The Workspace (or Customer) ID for the Log Analytics Workspace.
  GetAnalyticsWorkspaceResult({
    required this.dailyQuotaGb,
    required this.id,
    required this.location,
    required this.name,
    required this.primarySharedKey,
    required this.resourceGroupName,
    required this.retentionInDays,
    required this.secondarySharedKey,
    required this.sku,
    required this.tags,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyQuotaGb': dailyQuotaGb,
      'id': id,
      'location': location,
      'name': name,
      'primarySharedKey': primarySharedKey,
      'resourceGroupName': resourceGroupName,
      'retentionInDays': retentionInDays,
      'secondarySharedKey': secondarySharedKey,
      'sku': sku,
      'tags': tags,
      'workspaceId': workspaceId,
    };
  }

  factory GetAnalyticsWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetAnalyticsWorkspaceResult(
      dailyQuotaGb: map['dailyQuotaGb'] as double,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      primarySharedKey: map['primarySharedKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      retentionInDays: map['retentionInDays'] as int,
      secondarySharedKey: map['secondarySharedKey'] as String,
      sku: map['sku'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      workspaceId: map['workspaceId'] as String,
    );
  }
}
