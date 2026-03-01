// ignore_for_file: unused_element, unnecessary_cast


/// Workspace features.
class WorkspaceFeatures {
  /// Dedicated LA cluster resourceId that is linked to the workspaces.
  final String? clusterResourceId;
  /// Disable Non-AAD based Auth.
  final bool? disableLocalAuth;
  /// Flag that indicate if data should be exported.
  final bool? enableDataExport;
  /// Flag that indicate which permission to use - resource or workspace or both.
  final bool? enableLogAccessUsingOnlyResourcePermissions;
  /// Flag that describes if we want to remove the data after 30 days.
  final bool? immediatePurgeDataOn30Days;

  /// Creates a new [WorkspaceFeatures].
  /// [clusterResourceId] Dedicated LA cluster resourceId that is linked to the workspaces.
  /// [disableLocalAuth] Disable Non-AAD based Auth.
  /// [enableDataExport] Flag that indicate if data should be exported.
  /// [enableLogAccessUsingOnlyResourcePermissions] Flag that indicate which permission to use - resource or workspace or both.
  /// [immediatePurgeDataOn30Days] Flag that describes if we want to remove the data after 30 days.
  WorkspaceFeatures({
    this.clusterResourceId,
    this.disableLocalAuth,
    this.enableDataExport,
    this.enableLogAccessUsingOnlyResourcePermissions,
    this.immediatePurgeDataOn30Days,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterResourceId': ?clusterResourceId,
      'disableLocalAuth': ?disableLocalAuth,
      'enableDataExport': ?enableDataExport,
      'enableLogAccessUsingOnlyResourcePermissions': ?enableLogAccessUsingOnlyResourcePermissions,
      'immediatePurgeDataOn30Days': ?immediatePurgeDataOn30Days,
    };
  }

  factory WorkspaceFeatures.fromMap(Map<String, dynamic> map) {
    return WorkspaceFeatures(
      clusterResourceId: map['clusterResourceId'] == null ? null : map['clusterResourceId'] as String,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth'] as bool,
      enableDataExport: map['enableDataExport'] == null ? null : map['enableDataExport'] as bool,
      enableLogAccessUsingOnlyResourcePermissions: map['enableLogAccessUsingOnlyResourcePermissions'] == null ? null : map['enableLogAccessUsingOnlyResourcePermissions'] as bool,
      immediatePurgeDataOn30Days: map['immediatePurgeDataOn30Days'] == null ? null : map['immediatePurgeDataOn30Days'] as bool,
    );
  }
}

