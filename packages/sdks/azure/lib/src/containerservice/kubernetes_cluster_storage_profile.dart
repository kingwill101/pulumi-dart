// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterStorageProfile {
  /// Is the Blob CSI driver enabled? Defaults to `false`.
  final pulumi.Input<bool>? blobDriverEnabled;
  /// Is the Disk CSI driver enabled? Defaults to `true`.
  final pulumi.Input<bool>? diskDriverEnabled;
  /// Is the File CSI driver enabled? Defaults to `true`.
  final pulumi.Input<bool>? fileDriverEnabled;
  /// Is the Snapshot Controller enabled? Defaults to `true`.
  final pulumi.Input<bool>? snapshotControllerEnabled;

  /// Creates a new [KubernetesClusterStorageProfile].
  /// [blobDriverEnabled] Is the Blob CSI driver enabled? Defaults to `false`.
  /// [diskDriverEnabled] Is the Disk CSI driver enabled? Defaults to `true`.
  /// [fileDriverEnabled] Is the File CSI driver enabled? Defaults to `true`.
  /// [snapshotControllerEnabled] Is the Snapshot Controller enabled? Defaults to `true`.
  KubernetesClusterStorageProfile({
    this.blobDriverEnabled,
    this.diskDriverEnabled,
    this.fileDriverEnabled,
    this.snapshotControllerEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobDriverEnabled': ?blobDriverEnabled,
      'diskDriverEnabled': ?diskDriverEnabled,
      'fileDriverEnabled': ?fileDriverEnabled,
      'snapshotControllerEnabled': ?snapshotControllerEnabled,
    };
  }

  factory KubernetesClusterStorageProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterStorageProfile(
      blobDriverEnabled: map['blobDriverEnabled'] == null ? null : (map['blobDriverEnabled'] as bool).input(),
      diskDriverEnabled: map['diskDriverEnabled'] == null ? null : (map['diskDriverEnabled'] as bool).input(),
      fileDriverEnabled: map['fileDriverEnabled'] == null ? null : (map['fileDriverEnabled'] as bool).input(),
      snapshotControllerEnabled: map['snapshotControllerEnabled'] == null ? null : (map['snapshotControllerEnabled'] as bool).input(),
    );
  }
}

