// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CustomResourceSubresourceScale defines how to serve the scale subresource for CustomResources.
class CustomResourceSubresourceScaleApiextensionsK8sIoV1beta1 {
  /// labelSelectorPath defines the JSON path inside of a custom resource that corresponds to Scale `status.selector`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status` or `.spec`. Must be set to work with HorizontalPodAutoscaler. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the custom resource, the `status.selector` value in the `/scale` subresource will default to the empty string.
  final pulumi.Input<String>? labelSelectorPath;
  /// specReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `spec.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.spec`. If there is no value under the given path in the custom resource, the `/scale` subresource will return an error on GET.
  final pulumi.Input<String> specReplicasPath;
  /// statusReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `status.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status`. If there is no value under the given path in the custom resource, the `status.replicas` value in the `/scale` subresource will default to 0.
  final pulumi.Input<String> statusReplicasPath;

  /// Creates a new [CustomResourceSubresourceScaleApiextensionsK8sIoV1beta1].
  /// [labelSelectorPath] labelSelectorPath defines the JSON path inside of a custom resource that corresponds to Scale `status.selector`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status` or `.spec`. Must be set to work with HorizontalPodAutoscaler. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the custom resource, the `status.selector` value in the `/scale` subresource will default to the empty string.
  /// [specReplicasPath] specReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `spec.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.spec`. If there is no value under the given path in the custom resource, the `/scale` subresource will return an error on GET.
  /// [statusReplicasPath] statusReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `status.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status`. If there is no value under the given path in the custom resource, the `status.replicas` value in the `/scale` subresource will default to 0.
  const CustomResourceSubresourceScaleApiextensionsK8sIoV1beta1({
    this.labelSelectorPath,
    required this.specReplicasPath,
    required this.statusReplicasPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelectorPath': ?labelSelectorPath,
      'specReplicasPath': specReplicasPath,
      'statusReplicasPath': statusReplicasPath,
    };
  }

  factory CustomResourceSubresourceScaleApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceSubresourceScaleApiextensionsK8sIoV1beta1(
      labelSelectorPath: (() { final guardedValue = map['labelSelectorPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      specReplicasPath: pulumi.Input.fromValue(map['specReplicasPath'] as String),
      statusReplicasPath: pulumi.Input.fromValue(map['statusReplicasPath'] as String),
    );
  }
}

