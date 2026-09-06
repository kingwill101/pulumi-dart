// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Outbound traffic options over virtual network.
class OutboundVnetRouting {
  /// Enables all other routing options defined in OutboundVnetRouting if this setting is set to true.
  final pulumi.Input<bool?>? allTraffic;
  /// This causes all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied. Previously called VnetRouteAllEnabled.
  final pulumi.Input<bool?>? applicationTraffic;
  /// Enables Backup and Restore operations over virtual network. Previously called VnetBackupRestoreEnabled
  final pulumi.Input<bool?>? backupRestoreTraffic;
  /// Enables accessing content over virtual network. Previously called VnetContentShareEnabled
  final pulumi.Input<bool?>? contentShareTraffic;
  /// Enables pulling image over Virtual Network. Previously called VnetImagePullEnabled.
  final pulumi.Input<bool?>? imagePullTraffic;

  /// Creates a new [OutboundVnetRouting].
  /// [allTraffic] Enables all other routing options defined in OutboundVnetRouting if this setting is set to true.
  /// [applicationTraffic] This causes all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied. Previously called VnetRouteAllEnabled.
  /// [backupRestoreTraffic] Enables Backup and Restore operations over virtual network. Previously called VnetBackupRestoreEnabled
  /// [contentShareTraffic] Enables accessing content over virtual network. Previously called VnetContentShareEnabled
  /// [imagePullTraffic] Enables pulling image over Virtual Network. Previously called VnetImagePullEnabled.
  const OutboundVnetRouting({
    this.allTraffic,
    this.applicationTraffic,
    this.backupRestoreTraffic,
    this.contentShareTraffic,
    this.imagePullTraffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allTraffic': ?allTraffic,
      'applicationTraffic': ?applicationTraffic,
      'backupRestoreTraffic': ?backupRestoreTraffic,
      'contentShareTraffic': ?contentShareTraffic,
      'imagePullTraffic': ?imagePullTraffic,
    };
  }

  factory OutboundVnetRouting.fromMap(Map<String, dynamic> map) {
    return OutboundVnetRouting(
      allTraffic: (() { final guardedValue = map['allTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      applicationTraffic: (() { final guardedValue = map['applicationTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      backupRestoreTraffic: (() { final guardedValue = map['backupRestoreTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      contentShareTraffic: (() { final guardedValue = map['contentShareTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imagePullTraffic: (() { final guardedValue = map['imagePullTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
