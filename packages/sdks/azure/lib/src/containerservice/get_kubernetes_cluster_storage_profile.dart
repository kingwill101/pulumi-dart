// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterStorageProfile {
  /// Is the Blob CSI driver enabled?
  final pulumi.Input<bool> blobDriverEnabled;
  /// Is the Disk CSI driver enabled?
  final pulumi.Input<bool> diskDriverEnabled;
  /// Is the File CSI driver enabled?
  final pulumi.Input<bool> fileDriverEnabled;
  /// Is the Snapshot Controller enabled?
  final pulumi.Input<bool> snapshotControllerEnabled;

  /// Creates a new [GetKubernetesClusterStorageProfile].
  /// [blobDriverEnabled] Is the Blob CSI driver enabled?
  /// [diskDriverEnabled] Is the Disk CSI driver enabled?
  /// [fileDriverEnabled] Is the File CSI driver enabled?
  /// [snapshotControllerEnabled] Is the Snapshot Controller enabled?
  GetKubernetesClusterStorageProfile({
    required this.blobDriverEnabled,
    required this.diskDriverEnabled,
    required this.fileDriverEnabled,
    required this.snapshotControllerEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobDriverEnabled': blobDriverEnabled,
      'diskDriverEnabled': diskDriverEnabled,
      'fileDriverEnabled': fileDriverEnabled,
      'snapshotControllerEnabled': snapshotControllerEnabled,
    };
  }

  factory GetKubernetesClusterStorageProfile.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterStorageProfile(
      blobDriverEnabled: pulumi.Input.fromValue(map['blobDriverEnabled'] as bool),
      diskDriverEnabled: pulumi.Input.fromValue(map['diskDriverEnabled'] as bool),
      fileDriverEnabled: pulumi.Input.fromValue(map['fileDriverEnabled'] as bool),
      snapshotControllerEnabled: pulumi.Input.fromValue(map['snapshotControllerEnabled'] as bool),
    );
  }
}

