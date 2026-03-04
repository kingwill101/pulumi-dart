// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateVolumeEmptyDir {
  /// The different types of medium supported for EmptyDir. Default value: "MEMORY" Possible values: ["MEMORY"]
  final pulumi.Input<String> medium;

  /// Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. This field's values are of the 'Quantity' k8s type: https://kubernetes.io/docs/reference/kubernetes-api/common-definitions/quantity/. The default is nil which means that the limit is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir.
  final pulumi.Input<String> sizeLimit;

  /// Creates a new [GetServiceTemplateVolumeEmptyDir].
  /// [medium] The different types of medium supported for EmptyDir. Default value: "MEMORY" Possible values: ["MEMORY"]
  /// [sizeLimit] Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. This field's values are of the 'Quantity' k8s type: https://kubernetes.io/docs/reference/kubernetes-api/common-definitions/quantity/. The default is nil which means that the limit is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir.
  GetServiceTemplateVolumeEmptyDir({
    required this.medium,
    required this.sizeLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'medium': medium, 'sizeLimit': sizeLimit};
  }

  factory GetServiceTemplateVolumeEmptyDir.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateVolumeEmptyDir(
      medium: pulumi.Input.fromValue(map['medium'] as String),
      sizeLimit: pulumi.Input.fromValue(map['sizeLimit'] as String),
    );
  }
}
