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
      clusterResourceId: (() { final guardedValue = map['clusterResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDataExport: (() { final guardedValue = map['enableDataExport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableLogAccessUsingOnlyResourcePermissions: (() { final guardedValue = map['enableLogAccessUsingOnlyResourcePermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      immediatePurgeDataOn30Days: (() { final guardedValue = map['immediatePurgeDataOn30Days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      unifiedSentinelBillingOnly: pulumi.Input.fromValue(map['unifiedSentinelBillingOnly'] as bool),
    );
  }
}

