// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateVolumeEmptyDir {
  /// The different types of medium supported for EmptyDir.
  /// Default value is `MEMORY`.
  /// Possible values are: `MEMORY`.
  final pulumi.Input<String>? medium;
  /// Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. This field's values are of the 'Quantity' k8s type: https://kubernetes.io/docs/reference/kubernetes-api/common-definitions/quantity/. The default is nil which means that the limit is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir.
  final pulumi.Input<String>? sizeLimit;

  /// Creates a new [ServiceTemplateVolumeEmptyDir].
  /// [medium] The different types of medium supported for EmptyDir.
  /// [sizeLimit] Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. This field's values are of the 'Quantity' k8s type: https://kubernetes.io/docs/reference/kubernetes-api/common-definitions/quantity/. The default is nil which means that the limit is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir.
  const ServiceTemplateVolumeEmptyDir({
    this.medium,
    this.sizeLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'medium': ?medium,
      'sizeLimit': ?sizeLimit,
    };
  }

  factory ServiceTemplateVolumeEmptyDir.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateVolumeEmptyDir(
      medium: (() { final guardedValue = map['medium']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeLimit: (() { final guardedValue = map['sizeLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

