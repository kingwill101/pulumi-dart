// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterStorageProfile {
  /// Is the Blob CSI driver enabled?
  final bool blobDriverEnabled;
  /// Is the Disk CSI driver enabled?
  final bool diskDriverEnabled;
  /// Is the File CSI driver enabled?
  final bool fileDriverEnabled;
  /// Is the Snapshot Controller enabled?
  final bool snapshotControllerEnabled;

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
      blobDriverEnabled: map['blobDriverEnabled'] as bool,
      diskDriverEnabled: map['diskDriverEnabled'] as bool,
      fileDriverEnabled: map['fileDriverEnabled'] as bool,
      snapshotControllerEnabled: map['snapshotControllerEnabled'] as bool,
    );
  }
}

