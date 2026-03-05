// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Workspace features.
class WorkspaceFeatures {
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
      clusterResourceId: (() { final guardedValue = map['clusterResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDataExport: (() { final guardedValue = map['enableDataExport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableLogAccessUsingOnlyResourcePermissions: (() { final guardedValue = map['enableLogAccessUsingOnlyResourcePermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      immediatePurgeDataOn30Days: (() { final guardedValue = map['immediatePurgeDataOn30Days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

