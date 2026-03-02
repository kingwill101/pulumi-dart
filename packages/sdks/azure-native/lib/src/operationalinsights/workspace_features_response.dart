// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Workspace features.
class WorkspaceFeaturesResponse {
  /// Dedicated LA cluster resourceId that is linked to the workspaces.
  final pulumi.Input<String>? clusterResourceId;
  /// Disable Non-AAD based Auth.
  final pulumi.Input<bool>? disableLocalAuth;
  /// Flag that indicate if data should be exported.
  final pulumi.Input<bool>? enableDataExport;
  /// Flag that indicate which permission to use - resource or workspace or both.
  final pulumi.Input<bool>? enableLogAccessUsingOnlyResourcePermissions;
  /// Flag that describes if we want to remove the data after 30 days.
  final pulumi.Input<bool>? immediatePurgeDataOn30Days;
  /// An indication if the specify workspace is limited to sentinel's unified billing model only.
  final pulumi.Input<bool> unifiedSentinelBillingOnly;

  /// Creates a new [WorkspaceFeaturesResponse].
  /// [clusterResourceId] Dedicated LA cluster resourceId that is linked to the workspaces.
  /// [disableLocalAuth] Disable Non-AAD based Auth.
  /// [enableDataExport] Flag that indicate if data should be exported.
  /// [enableLogAccessUsingOnlyResourcePermissions] Flag that indicate which permission to use - resource or workspace or both.
  /// [immediatePurgeDataOn30Days] Flag that describes if we want to remove the data after 30 days.
  /// [unifiedSentinelBillingOnly] An indication if the specify workspace is limited to sentinel's unified billing model only.
  WorkspaceFeaturesResponse({
    this.clusterResourceId,
    this.disableLocalAuth,
    this.enableDataExport,
    this.enableLogAccessUsingOnlyResourcePermissions,
    this.immediatePurgeDataOn30Days,
    required this.unifiedSentinelBillingOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterResourceId': ?clusterResourceId,
      'disableLocalAuth': ?disableLocalAuth,
      'enableDataExport': ?enableDataExport,
      'enableLogAccessUsingOnlyResourcePermissions': ?enableLogAccessUsingOnlyResourcePermissions,
      'immediatePurgeDataOn30Days': ?immediatePurgeDataOn30Days,
      'unifiedSentinelBillingOnly': unifiedSentinelBillingOnly,
    };
  }

  factory WorkspaceFeaturesResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceFeaturesResponse(
      clusterResourceId: map['clusterResourceId'] == null ? null : (map['clusterResourceId']! as String).input(),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : (map['disableLocalAuth']! as bool).input(),
      enableDataExport: map['enableDataExport'] == null ? null : (map['enableDataExport']! as bool).input(),
      enableLogAccessUsingOnlyResourcePermissions: map['enableLogAccessUsingOnlyResourcePermissions'] == null ? null : (map['enableLogAccessUsingOnlyResourcePermissions']! as bool).input(),
      immediatePurgeDataOn30Days: map['immediatePurgeDataOn30Days'] == null ? null : (map['immediatePurgeDataOn30Days']! as bool).input(),
      unifiedSentinelBillingOnly: (map['unifiedSentinelBillingOnly'] as bool).input(),
    );
  }
}

