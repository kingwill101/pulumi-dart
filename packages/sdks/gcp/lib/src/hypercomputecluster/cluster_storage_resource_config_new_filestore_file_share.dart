// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterStorageResourceConfigNewFilestoreFileShare {
  /// Size of the filestore in GB. Must be between 1024 and 102400, and must meet
  /// scalability requirements described at
  /// https://cloud.google.com/filestore/docs/service-tiers.
  final pulumi.Input<String> capacityGb;
  /// Filestore share location
  final pulumi.Input<String> fileShare;

  /// Creates a new [ClusterStorageResourceConfigNewFilestoreFileShare].
  /// [capacityGb] Size of the filestore in GB. Must be between 1024 and 102400, and must meet
  /// [fileShare] Filestore share location
  const ClusterStorageResourceConfigNewFilestoreFileShare({
    required this.capacityGb,
    required this.fileShare,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityGb': capacityGb,
      'fileShare': fileShare,
    };
  }

  factory ClusterStorageResourceConfigNewFilestoreFileShare.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResourceConfigNewFilestoreFileShare(
      capacityGb: pulumi.Input.fromValue(map['capacityGb'] as String),
      fileShare: pulumi.Input.fromValue(map['fileShare'] as String),
    );
  }
}
