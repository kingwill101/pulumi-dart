// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_empty_dir_volume_source_medium.dart';

/// In memory (tmpfs) ephemeral storage. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs).
class GoogleCloudRunV2EmptyDirVolumeSource {
  /// The medium on which the data is stored. Acceptable values today is only MEMORY or none. When none, the default will currently be backed by memory but could change over time. +optional
  final pulumi.Input<GoogleCloudRunV2EmptyDirVolumeSourceMedium>? medium;
  /// Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers. The default is nil which means that the limit is undefined. More info: https://cloud.google.com/run/docs/configuring/in-memory-volumes#configure-volume. Info in Kubernetes: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir
  final pulumi.Input<String>? sizeLimit;

  /// Creates a new [GoogleCloudRunV2EmptyDirVolumeSource].
  /// [medium] The medium on which the data is stored. Acceptable values today is only MEMORY or none. When none, the default will currently be backed by memory but could change over time. +optional
  /// [sizeLimit] Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers. The default is nil which means that the limit is undefined. More info: https://cloud.google.com/run/docs/configuring/in-memory-volumes#configure-volume. Info in Kubernetes: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir
  GoogleCloudRunV2EmptyDirVolumeSource({
    this.medium,
    this.sizeLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'medium': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRunV2EmptyDirVolumeSourceMedium, String>(medium, (value) => value.value),
      'sizeLimit': ?sizeLimit,
    };
  }

  factory GoogleCloudRunV2EmptyDirVolumeSource.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2EmptyDirVolumeSource(
      medium: map['medium'] == null ? null : (GoogleCloudRunV2EmptyDirVolumeSourceMedium.fromValue(map['medium']! as String)).input(),
      sizeLimit: map['sizeLimit'] == null ? null : (map['sizeLimit']! as String).input(),
    );
  }
}

