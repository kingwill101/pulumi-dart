// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe a container image
class ContainerImage {
  /// Names by which this image is known. e.g. ["kubernetes.example/hyperkube:v1.0.7", "cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7"]
  final pulumi.Input<List<String>> names;
  /// The size of the image in bytes.
  final pulumi.Input<int>? sizeBytes;

  /// Creates a new [ContainerImage].
  /// [names] Names by which this image is known. e.g. ["kubernetes.example/hyperkube:v1.0.7", "cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7"]
  /// [sizeBytes] The size of the image in bytes.
  const ContainerImage({
    required this.names,
    this.sizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': names,
      'sizeBytes': ?sizeBytes,
    };
  }

  factory ContainerImage.fromMap(Map<String, dynamic> map) {
    return ContainerImage(
      names: pulumi.Input.fromValue((map['names'] as List).cast<String>()),
      sizeBytes: (() { final guardedValue = map['sizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
