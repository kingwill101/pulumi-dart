// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateSpecVolumeEmptyDir {
  /// The medium on which the data is stored. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory.
  final pulumi.Input<String>? medium;
  /// Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. This field's values are of the 'Quantity' k8s type: https://kubernetes.io/docs/reference/kubernetes-api/common-definitions/quantity/. The default is nil which means that the limit is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir.
  final pulumi.Input<String>? sizeLimit;

  /// Creates a new [ServiceTemplateSpecVolumeEmptyDir].
  /// [medium] The medium on which the data is stored. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory.
  /// [sizeLimit] Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. This field's values are of the 'Quantity' k8s type: https://kubernetes.io/docs/reference/kubernetes-api/common-definitions/quantity/. The default is nil which means that the limit is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir.
  ServiceTemplateSpecVolumeEmptyDir({
    this.medium,
    this.sizeLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'medium': ?medium,
      'sizeLimit': ?sizeLimit,
    };
  }

  factory ServiceTemplateSpecVolumeEmptyDir.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecVolumeEmptyDir(
      medium: map['medium'] == null ? null : (map['medium']! as String).input(),
      sizeLimit: map['sizeLimit'] == null ? null : (map['sizeLimit']! as String).input(),
    );
  }
}

