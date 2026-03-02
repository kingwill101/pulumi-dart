// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// In memory (tmpfs) ephemeral storage. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs).
class GoogleCloudRunV2EmptyDirVolumeSourceResponse {
  /// The medium on which the data is stored. Acceptable values today is only MEMORY or none. When none, the default will currently be backed by memory but could change over time. +optional
  final pulumi.Input<String> medium;
  /// Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers. The default is nil which means that the limit is undefined. More info: https://cloud.google.com/run/docs/configuring/in-memory-volumes#configure-volume. Info in Kubernetes: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir
  final pulumi.Input<String> sizeLimit;

  /// Creates a new [GoogleCloudRunV2EmptyDirVolumeSourceResponse].
  /// [medium] The medium on which the data is stored. Acceptable values today is only MEMORY or none. When none, the default will currently be backed by memory but could change over time. +optional
  /// [sizeLimit] Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers. The default is nil which means that the limit is undefined. More info: https://cloud.google.com/run/docs/configuring/in-memory-volumes#configure-volume. Info in Kubernetes: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir
  GoogleCloudRunV2EmptyDirVolumeSourceResponse({
    required this.medium,
    required this.sizeLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'medium': medium,
      'sizeLimit': sizeLimit,
    };
  }

  factory GoogleCloudRunV2EmptyDirVolumeSourceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2EmptyDirVolumeSourceResponse(
      medium: (map['medium'] as String).input(),
      sizeLimit: (map['sizeLimit'] as String).input(),
    );
  }
}

